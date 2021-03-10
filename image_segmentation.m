img1=imread('img2.jpg');
img1=rgb2gray(img1);
imshow(img1)
hold on

img2=im2bw(img1,graythresh(img1));
imshow(img2)
img2=~img2;
imshow(img2)

B=bwboundaries(img2);
imshow(img2)

text(10,10,strcat('\color{red}Objects Found:',num2str(length(B))))
hold on
