function Negative(~)
im = imread("football.jpg");
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=255-im(i,j,k);
           
           
        end
    end
end

subplot(2,2,3);
imshow(im),title("Negative Image");
subplot(2,2,4);
imhist(im),title("Negative Histogram");

%if we want to take image Denamicaly

%{
function Negative(im)
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=255-im(i,j,k);
           
           
        end
    end
end

subplot(2,2,3);
imshow(im),title("Negative Image");
subplot(2,2,4);
imhist(im),title("Negative Histogram");


%}