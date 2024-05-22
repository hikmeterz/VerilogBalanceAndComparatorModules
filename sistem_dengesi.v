`timescale 1ns / 1ps

module sistem_dengesi(
    
    input [2:0] A,B,
    output D
    );
    
    wire [2:0] sol_cubuk_D, orta_cubuk_D , sag_cubuk_D; //3 tane duzenegin outputlarini tutan wire lar.
    
    cubuk_dengesi sol_cubuk(.A(A[0]),//Odevde istenilen sekilde anin 0. biti sol_cubuk duzeneginde.Diger duzenekler icin de ayni.
                            .B(B[0]),
                            .D(sol_cubuk_D)
        
    );
    cubuk_dengesi orta_cubuk(.A(A[1]),
                            .B(B[1]),
                            .D(orta_cubuk_D)
        
    );
    cubuk_dengesi sag_cubuk(.A(A[2]),
                            .B(B[2]),
                            .D(sag_cubuk_D)
        
    );
    
    //Bu 3 duzenegin outputlarina baktigimda, hic bir duzenekte 00 veya 11 cikisi olmicagini var sayarsak.
    
    //Yani cikislardan ya 01(Sola dusme) gelicek ya da 10(saga dusme)
    
    //Bu iki bit cikislardan bir durum ortaya cikaricak olursak duzeneklerden D[1] 0 gelirse sola 1 gelirse saga dusuyor.
    
    //Yani bize 3 duzenekten D[1] cikislariyla yeni bir islem yapmamiz yeterli....
    
    //Bunlarla da yeni sistemin sola mi saga mi dusecegi durumu icin sol,orta,sag cubuklarin D[1] degerleriyle karnough
    
    //Yapildiginda...
    
    
    wire k1,k2,k3;
    
    and(k1,sol_cubuk_D[1],sag_cubuk_D[1]);
    and(k2,orta_cubuk_D[1],sag_cubuk_D[1]);
    and(k3,sol_cubuk_D[1],orta_cubuk_D[1]);
    or(D,k1,k2,k3);
    
endmodule
