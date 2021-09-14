img1=imread('blood3.png');
img1=rgb2gray(img1);
imshow(img1)
hold on

img2=imbinarize(img1,graythresh(img1));
imshow(img2)
img2=~img2;
imshow(img2)
hold on

B=bwboundaries(img2);
imshow(img2)

text(100,10,strcat('\color{red}Objects Found:',num2str(length(B))))
hold on