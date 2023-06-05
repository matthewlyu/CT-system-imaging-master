clear all
%托盘中心与旋转中心相同时
phantom = load('1.dat');
P=phantom; 
imshow(P);
theta3=[0:179];
[R3,xp]=radon(P,theta3);       
figure,imagesc(theta3,xp,R3);xlabel('\theta');ylabel('x\prime')
l3=iradon(R3,1);
figure,imshow(l3);
ans1=l3(1:256,1:256)
ans1(abs(ans1)<0.1)=0;