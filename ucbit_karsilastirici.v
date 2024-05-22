`timescale 1ns / 1ps


module ucbit_karsilastirici(

     input [2:0] sayi1,sayi2,
    output sonuc
    
    //En soldaki bitler sayi1[2], sayi2[2].


    );
    
    //Yapilan karnough sonucu  
    
    wire k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11;
   
    wire n1;    
    not(n1,sayi2[2]);
    and(k1,sayi1[2],n1);

    wire n2,n3,n4;
    not(n2,sayi2[2]);
    not(n3,sayi2[1]);
    not(n4,sayi2[0]);
    and(k2,n2,n3,n4);
    
    wire n5,n6;
    not(n5,sayi2[2]);
    not(n6,sayi2[1]);
    and(k3,n5,n6,sayi1[0]);
    
    wire n7,n8;
    not(n7,sayi2[2]);
    not(n8,sayi2[1]);
    and(k4,n7,n8,sayi1[1]);
    
    wire n9,n10;
    not(n9,sayi2[2]);
    not(n10,sayi2[0]);
    and(k5,n9,n10,sayi1[1]);
    
    wire n11;
    not(n11,sayi2[2]);
    and(k6,n11,sayi1[1],sayi1[0]);
    
    wire n12,n13;
    not(n12,sayi2[1]);
    not(n13,sayi2[0]);
    and(k7,n12,n13,sayi1[2]);
    
    wire n14;
    not(n14,sayi2[1]);
    and(k8,n14,sayi1[2],sayi1[0]);
    
    wire n15;
    not(n15,sayi2[1]);
    and(k9,n15,sayi1[2],sayi1[1]);
    
    wire n16;
    not(n16,sayi2[0]);
    and(k10,n16,sayi1[2],sayi1[1]);
    
    and(k11,sayi1[2],sayi1[0],sayi1[1]);
    

    or(sonuc,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11);


endmodule
