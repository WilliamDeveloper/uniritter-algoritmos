
package main;

public class ReadWriteLock1 {


  private int readers       = 0;
  private int writers       = 0;
  private int writeRequests = 0;
 

  public synchronized void lockRead() throws InterruptedException{
    while(this.writers > 0 || this.writeRequests > 0 ){
      wait();
    }
    this.readers++;
  }

  public synchronized void unlockRead(){
    this.readers--;
    notifyAll();
  }
  
 public synchronized void lockWrite() throws InterruptedException{
    this.writeRequests++;
    while(this.readers > 0 || this.writers > 0){
      wait();
    }
    this.writers++;
    this.writeRequests--;    
  }

  public synchronized void unlockWrite(){
    this.writers--;
    notifyAll();
  }

}
