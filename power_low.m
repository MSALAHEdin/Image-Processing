function power_low(gamma)
im = imread("football.jpg");
im =im2double (im);
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("Original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=im(i,j,k).^gamma;
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end

subplot(2,2,3);
imshow (im),title("Power_Low Image");
subplot(2,2,4);
imhist(im),title('Power_Low Histogram ');

%if we want to take image & Gamma Denamicaly
%{
function power_low(im,gamma)
im =im2double (im);
[r, c, ch]=size(im);
subplot(2,2,1);
imshow(im),title("original Image");
subplot(2,2,2);
imhist(im),title("Original Histogram");
for k=1:ch
    for i=1:r 
        for j=1:c
          im(i,j,k)=im(i,j,k).^gamma;
           if im(i,j,k) > 250
              im(i,j,k)=250;
           elseif im(i,j,k) < 0
              im(i,j,k)=0;
           end
           
        end
    end
end

subplot(2,2,3);
imshow (im),title("Power_Low Image");
subplot(2,2,4);
imhist(im),title('Power_Low Histogram ');
%}
