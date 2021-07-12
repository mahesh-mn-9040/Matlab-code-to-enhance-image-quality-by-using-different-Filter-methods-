%Laplacian filter
clear all;
close all;

a = imread('flower.jpg');

 

[r c]=size(a)
a=im2double(a);
filter=[-1 -1 -1;-1 8 -1; -1 -1 -1];
result=a;
for i=2:r-1
    for j=2:c-1
        sum=0;
        row=0;
        col=1;
        
        for k=i-1:i+1
            row=row+1;
            col=1;
            for l=j-1:j+1
                sum = sum+a(k,l)*filter(row,col);               
                col=col+1;
            end
        end
      result(i,j)=sum;      
    end
end
result

montage({a,result});
title('Original Image Vs. Laplacian Filtered Image')


 