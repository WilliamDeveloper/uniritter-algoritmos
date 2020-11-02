
package br.com.util.file;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;


public class Datas {
    public static void main(String[] args) {
        System.out.println(new Date(System.currentTimeMillis()));
        
    // 2015/09/27 15:07:53
    System.out.println( new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Calendar.getInstance().getTime()) );

    // 15:07:53
    System.out.println( new SimpleDateFormat("HH:mm:ss").format(Calendar.getInstance().getTime()) );

    // 09/28/2015
    System.out.println(new SimpleDateFormat("MM/dd/yyyy").format(Calendar.getInstance().getTime()));

    // 20150928_161823
    System.out.println( new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime()) );

    // Mon Sep 28 16:24:28 CEST 2015
    System.out.println( Calendar.getInstance().getTime() );

    // Mon Sep 28 16:24:51 CEST 2015
    System.out.println( new Date(System.currentTimeMillis()) );

    // Mon Sep 28
    System.out.println( new Date().toString().substring(0, 10) );

    // 2015-09-28
    System.out.println( new java.sql.Date(System.currentTimeMillis()) );

    // 14:32:26
    Date d = new Date();
    System.out.println( (d.getTime() / 1000 / 60 / 60) % 24 + ":" + (d.getTime() / 1000 / 60) % 60 + ":" + (d.getTime() / 1000) % 60 );

    // 2015-09-28 17:12:35.584
    System.out.println( new Timestamp(System.currentTimeMillis()) );

    // Java 8

    // 2015-09-28T16:16:23.308+02:00[Europe/Belgrade]
    System.out.println( ZonedDateTime.now() );

    // Mon, 28 Sep 2015 16:16:23 +0200
    System.out.println( ZonedDateTime.now().format(DateTimeFormatter.RFC_1123_DATE_TIME) );

    // 2015-09-28
    System.out.println( LocalDate.now(ZoneId.of("Europe/Paris")) ); // rest zones id in ZoneId class

    // 16
    System.out.println( LocalTime.now().getHour() );

    // 2015-09-28T16:16:23.315
    System.out.println( LocalDateTime.now() );
    }
}
