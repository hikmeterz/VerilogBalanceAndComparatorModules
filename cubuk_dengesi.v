`timescale 1ns / 1ps

module cubuk_dengesi(
    input A,B,// A ve B girisleri.
    output [1:0] D //2 Bitlik denge cikisi..
    
    );
    
    //Karnough haritasi ile cikislarin mantiksal durumunu buldugumuzda...
    
    wire notA;   
    
    not kapi1(notA,A);
    
    and kapi2(D[0],notA,B);//Cikisin en sagdaki biti.
    
    wire notB;
    
    not kapi3(notB,B);
    
    and kapi4(D[1],notB,A);//Cikisin en soldaki biti.
    
    //Bu mantiksal devreyi test bench ile test etmek lazim.....
    
    //.
endmodule
