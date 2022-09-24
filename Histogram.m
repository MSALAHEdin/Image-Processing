function Histogram(~)
im = imread("football.jpg");
subplot(2,1,1);imshow(im),title('Original');
subplot(2,1,2);imhist(im),title('Histogram');
%with out built in function
%{
im = imread("football.jpg");
[r, c, ch]=size(im);
hist1=zeros(1,256);
n=0:255;
for k=1:ch
    for i=1:r 
        for j=1:c
           if im(i,j,k)==k
               hist1(im(i,j,k)+1)=hist1(im(i,j,k)+1)+1;
           end
    
        end
    stem(hist1);
    drawnow limitrate;
    end

end
%}