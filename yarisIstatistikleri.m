clc;clear;close all;
load neuralData.mat;


yarisTipi = 1; %KV7(21)             3 ya�l�(2)              �ngilizler(2) 
yarisTipi = 2; %Handikap16 (11)     3 ya�l�(2)              �ngilizler(2) 
yarisTipi = 3; %�artl� 5(5)         4 ve Yukar� ya�l�(4)    �ngilizler(2) 
yarisTipi = 4; %�artl� 1(45)        3 ya�l�(2)              Araplar(1) 
yarisTipi = 5; %KV18 (41)           4 ya�l�(1)              Araplar(1) 
yarisTipi = 6; %�artl� 3 (1)        4 veYukar� ya�l�(4)     Araplar(1) 
yarisTipi = 7; %Handikap16 Di�i(12) 4 veYukar� ya�l�(4)     Araplar(1) 
yarisTipi = 8; %Handikap16 (11)     4 veYukari ya�l�(4)    �ngilizler(2) 
yarisTipi = 9; %Handikap15 (13)     5 veYukari ya�l�(3)    Araplar(1) 
yarisTipi = 10;%Maiden (4)          3 ya�l�(2)              Araplar(1) 
yarisTipi = 11;%KV7 Di�i (22)       3 ya�l�(2)              �ngilizler(2) 
yarisTipi = 12;%�artl�3 Di�i (2)    4veYuk ya�l�(4)         Araplar(1) 
yarisTipi = 13;%H14 Di�i (18)        3 ya�l�(2)         ingilizler(2) 

yarisTipi = 1;

switch yarisTipi
    case 1
      yarisTipi1 = 21; yarisTipi2 = 2; yarisTipi3 = 2;
    case 2
        yarisTipi1 = 11; yarisTipi2 = 2; yarisTipi3 = 2;
    case 3
        yarisTipi1 = 5; yarisTipi2 = 4; yarisTipi3 = 2;
    case 4
        yarisTipi1 = 45; yarisTipi2 = 2; yarisTipi3 = 1;
    case 5
        yarisTipi1 = 41; yarisTipi2 = 1; yarisTipi3 = 1;
    case 6
        yarisTipi1 = 1; yarisTipi2 =4; yarisTipi3 = 1;
    case 7
        yarisTipi1 = 12; yarisTipi2 =4; yarisTipi3 = 2;
    case 8
        yarisTipi1 = 11; yarisTipi2 =4; yarisTipi3 = 1;
    case 9
        yarisTipi1 = 13; yarisTipi2 =3; yarisTipi3 = 1;
    case 10
        yarisTipi1 = 4; yarisTipi2 =2; yarisTipi3 = 1;
    case 11
        yarisTipi1 = 22; yarisTipi2 =2; yarisTipi3 = 2;
            case 12
        yarisTipi1 = 2; yarisTipi2 =4; yarisTipi3 = 1;
                case 13
        yarisTipi1 = 18; yarisTipi2 =2; yarisTipi3 = 2;
end



n = (neuralData(:,2) == yarisTipi1) & (neuralData(:,3) == yarisTipi2) & (neuralData(:,4) == yarisTipi3);

%�ehir Se�

n = n & (neuralData(:,5) == 3 );


n1 = find(n>0);

a =neuralData(n,37)== neuralData(n,38);
a1 = find(a>0);


a =neuralData(n,37)== neuralData(n,39);
a2 = find(a>0);

a =neuralData(n,37)== neuralData(n,40);
a3 = find(a>0);

a =neuralData(n,37)>5;
a4 = find(a>0);

a =neuralData(n,37)>10;
a5 = find(a>0);
disp(['Yar�� Tipi ' ,neuralDataLut{1,1}.deger{yarisTipi1},' ', neuralDataLut{1,2}.deger{yarisTipi2}, ' ', neuralDataLut{1,3}.deger{yarisTipi3}])
disp(['Toplam Yar�� Say�s�#',num2str(length(n1))]);
disp(['1.Ganyan Say�s�#',num2str(length(a1))]);
disp(['2.Ganyan Say�s�#',num2str(length(a2))]);
disp(['3.Ganyan Say�s�#',num2str(length(a3))]);
disp(['5 den b�y�k Ganyan Say�s�#',num2str(length(a4))]);
disp(['10 dan b�y�k Ganyan Say�s�#',num2str(length(a5))]);




