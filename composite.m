close all;
clear all;


A=imread('flower.jpg');
figure,imshow(A);

F1=[0 -1 0;-1 5 -1; 0 -1 0];
I1=A;
I=zeros(size(A));
A=padarray(A,[1,1]);
A=double(A);

for i=1:size(A,1)-2
    for j=1:size(A,2)-2
       
        I(i,j)=sum(sum(F1.*A(i:i+2,j:j+2)));%% Applying mask o image 
       
    end
end
I=uint8(I);
figure,imshow(I);title('Filtered Image');%% Display

