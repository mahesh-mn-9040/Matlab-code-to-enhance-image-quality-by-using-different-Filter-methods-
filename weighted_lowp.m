clear all;
close all;

a=imread('flower.jpg');
a = imnoise(a,'salt & pepper');
subplot(1,2,1);
imshow(a)
[n,m,l] = size(a);%% size of image
mask = (1/16)*[[1,2,1];[2,4,2];[1,2,1]];% weight low pass mask

a = padarray(a,[1,1]);%% padding

for i = 2 : (n+1)
    for j = 2 : (m+1)
        mk=0;
        for k = 1 : 3
            for l = 1 : 3
                mk = mk + mask(k,l)*a(i-2+k,j-2+l);%% applying mask to image
a=imread('flower.jpg');
a = imnoise(a,'salt & pepper');
subplot(1,2,1);
imshow(a)
[n,m,l] = size(a);%% size of image
mask = (1/16)*[[1,2,1];[2,4,2];[1,2,1]];% weight low pass mask

a = padarray(a,[1,1]);%% padding

for i = 2 : (n+1)
    for j = 2 : (m+1)
        mk=0;
        for k = 1 : 3
            for l = 1 : 3
                mk = mk + mask(k,l)*a(i-2+k,j-2+l);%% applying mask to image
            end
        end
        b(i-1,j-1) = mk;
    end   
end

subplot(1,2,2);
imshow(b)
            end
        end
        b(i-1,j-1) = mk;
    end   
end

subplot(1,2,2);
imshow(b)
