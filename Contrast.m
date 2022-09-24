function Contrast(~)
im = imread("football.jpg");
[r, c, ch]=size(im);
Old_max=max(im,[],'all');
Old_min=min(im,[],'all');
New_max=220;
New_min=10;
subplot(2,2,1);
imshow(im),title("Original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
           im(i,j,k)= ((im(i,j,k)-Old_min)/(Old_max-Old_min))*(New_max-New_min)+New_min;

           if im(i,j,k) > 255
              im(i,j,k)=255;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end
subplot(2,2,3);
imshow (im),title("Contrast Image");
subplot(2,2,4);
imhist(im),title('Contrast Histogram ');

% if we want to take Valu of New_max & New_min Denamicaly
%{
function Contrast(New_max,New_min)
im = imread("football.jpg");
[r, c, ch]=size(im);
Old_max=max(im,[],'all');
Old_min=min(im,[],'all');
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
           im(i,j,k)= ((im(i,j,k)-Old_min)/(Old_max-Old_min))*(New_max-New_min)+New_min;

           if im(i,j,k) > 255
              im(i,j,k)=255;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end
subplot(2,2,3);
imshow (im),title("Contrast Image");
subplot(2,2,4);
imhist(im),title('Contrast Histogram ');
%}