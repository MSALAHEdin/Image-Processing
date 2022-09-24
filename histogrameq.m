function histogrameq()
im=imread('football.jpg');
[r, c, ~]=size(im);

numofpixels=r*c;

figure,imshow(im);title('Original Image');

 New_im=uint8(zeros(size(im,1),size(im,2)));

freq=zeros(256,1);

probf=zeros(256,1);

probc=zeros(256,1);

cum=zeros(256,1);

output=zeros(256,1);


%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.


for i=1:size(im,1)

    for j=1:size(im,2)

        value=im(i,j);

        freq(value+1)=freq(value+1)+1;

        probf(value+1)=freq(value+1)/numofpixels;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated. 

for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(im,1)

    for j=1:size(im,2)

            New_im(i,j)=output(im(i,j)+1);

    end

end

figure,imshow(New_im);

title('Histogram equalization');
%
%{
function histogrameq()
im=imread('football.jpg');
[r, c, ch]=size(im);
numofpixels=r*c;
figure,imshow(im);title('Original Image');
New_im=zeros(r,c,ch);
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);

%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.
for k=1:ch
    for i=1:r 
        for j=1:c
           value=im(i,j,k);

           freq(value+1)=freq(value+1)+1;

           probf(value+1)=freq(value+1)/numofpixels;

        end
    end
end

sum=0;
no_bins=255;

%The cumulative distribution probability is calculated. 
for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for k=1:ch
    for i=1:r 
        for j=1:c
           New_im(i,j,k)=output(im(i,j,k)+1);
   
        end
    end
end

figure,imshow(New_im);title('Histogram equalization');
%}