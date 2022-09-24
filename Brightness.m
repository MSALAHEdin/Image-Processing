function Brightness(offset)
im = imread("football.jpg");
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("Original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
           im(i,j,k)=im(i,j,k)+offset;
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end
subplot(2,2,3);
imshow (im),title("Brightness Image");
subplot(2,2,4);
imhist(im),title('Brightness Histogram ');

%if we want to take image & offset Denamicaly
%{
function Brightness(im,offset)

[r, c, ch]=size(im);
new=zeros(r,c,ch);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
           im(i,j,k)=im(i,j,k)+offset;
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end
subplot(2,2,3);
imshow (im),title("Brightness Image");
subplot(2,2,4);
imhist(new),title('Brightness Histogram ');


%}
