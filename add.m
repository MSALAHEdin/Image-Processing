function add(~)
im = imread("football.jpg");
im2 =imread("ngc6543a.jpg");
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=im(i,j,k)+im2(i,j,k);
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end

subplot(2,2,3);
imshow (im),title("Add two images");
subplot(2,2,4);
imhist(im),title("Add two images");


%if we want to take image Denamicaly
%{

function add(im,im2)
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=im(i,j,k)+im2(i,j,k);
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end

subplot(2,2,3);
imshow (im),title("Add two images");
subplot(2,2,4);
imhist(im),title("Add two images");
%}
