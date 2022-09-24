function New_im=Gray(~)
im = imread("football.jpg");
subplot(1,2,1);imshow(im),title('Original Image');
New_im=im(:,:,1);
subplot(1,2,2);imshow(New_im),title('Gray Image');