package br.com.testes;

import br.com.utils.RandomUtil;
import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import main.ReadWriteLock1;

public class TesteReadWrite extends Thread {

    //public static ReadWriteLock1 [] lock = new ReadWriteLock1[2];
    public static ReadWriteLock1[] lock1 = new ReadWriteLock1[2];
    public static ReadWriteLock[] lock2 = new ReadWriteLock[2];

    //public static Semaphore mutexorigem = new Semaphore(1);
    public static Semaphore mutexdestino = new Semaphore(1, true);
    private int origem;
    private int destino;

    public TesteReadWrite(int num) {
        this.origem = num;
        this.destino = (num + 1) % 2;
        TesteReadWrite.lock1[num] = new ReadWriteLock1();
        TesteReadWrite.lock2[num] = new ReentrantReadWriteLock(true);

    }

    @Override
    public void run() {

        for (int i = 0; i < 20; i++) {

            this.syncCopia_Lock1(origem, destino);
            //this.syncCopia_Lock2(origem, destino);
            
            try {
                Thread.sleep(RandomUtil.randomRange(500, 2000));
            } catch (InterruptedException ex) {
                Logger.getLogger(TesteReadWrite.class.getName()).log(Level.SEVERE, null, ex);
            }

            this.syncCopia_UnLock1(origem, destino);
            //this.syncCopia_UnLock2(origem, destino);

        }

    }

    public static void main(String[] args) throws InterruptedException {

        TesteReadWrite t0 = new TesteReadWrite(0);
        TesteReadWrite t1 = new TesteReadWrite(1);

        t0.start();
        t1.start();

        t0.join();
        t1.join();

    }

    private void syncCopia_Lock1(int origem, int destino) {

        try {

            try {

                TesteReadWrite.mutexdestino.acquire();
            } catch (InterruptedException ex) {
                Logger.getLogger(TesteReadWrite.class.getName()).log(Level.SEVERE, null, ex);
            }
            // TesteReadWrite.mutex_.lock_p_decrementar();
            TesteReadWrite.lock1[destino].lockWrite();
            TesteReadWrite.lock1[origem].lockRead();

            System.out.println("");
            System.out.println(origem + "LOCK-depois SyncLock");

        } catch (InterruptedException ex) {
            Logger.getLogger(TesteReadWrite.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void syncCopia_UnLock1(int origem, int destino) {
        TesteReadWrite.lock1[origem].unlockRead();
        TesteReadWrite.lock1[destino].unlockWrite();

        System.out.println(origem + "UNLOCK-depois SyncUnlock");
        TesteReadWrite.mutexdestino.release();

    }

    private void syncCopia_Lock2(int origem, int destino) {

        try {

            TesteReadWrite.mutexdestino.acquire();
        } catch (InterruptedException ex) {
            Logger.getLogger(TesteReadWrite.class.getName()).log(Level.SEVERE, null, ex);
        }
        // TesteReadWrite.mutex_.lock_p_decrementar();
        TesteReadWrite.lock2[destino].writeLock().lock();
        TesteReadWrite.lock2[origem].readLock().lock();

        System.out.println("");
        System.out.println(origem + "LOCK-depois SyncLock");

    }

    private void syncCopia_UnLock2(int origem, int destino) {
        TesteReadWrite.lock2[origem].readLock().unlock();
        TesteReadWrite.lock2[destino].writeLock().unlock();

        System.out.println(origem + "UNLOCK-depois SyncUnlock");
        TesteReadWrite.mutexdestino.release();

    }

}
