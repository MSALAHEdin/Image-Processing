function New_im=RM_order()
im=imread("football.jpg");
fact=3;
[r, c, ch]=size(im);
New_r = r*fact;
New_c = c*fact;
New_im = zeros(New_r,New_c, ch);
[r2,c2,ch2]=size(New_im);

for k=1:ch
    for i=1:r 
        for j=1:c
            
           New_im(i*fact+1-fact,j*fact+1-fact,k)= im(i,j,k);
           
        end
    end
end
for k=1:ch
    for i=1:fact:r2-fact
        for j=1:c2-fact
            if(New_im(i,j,k)>New_im(i+fact,j,k))
                New_im(i+1,j,k)=round(((New_im(i+1,j,k)-New_im(i+fact,j,k))/fact)*2+New_im(i+fact,j,k));
                New_im(i+2,j,k)=(round(((New_im(i+2,j,k)-New_im(i+fact,j,k))/fact)*1+New_im(i+fact,j,k)));
            else
                New_im(i+1,j,k)=(round(((New_im(i+fact,j,k)-New_im(i,j,k))/fact)*1+New_im(i,j,k)));
                New_im(i+2,j,k)=(round(((New_im(i+fact,j,k)-New_im(i,j,k))/fact)*2+New_im(i,j,k)));
            end
            
           
        end
    end
end
for k=1:ch
    for i=1:fact:r2-fact 
        for j=1:c2-fact
            if(New_im(i,j,k)>New_im(i,j+fact,k))
                New_im(i,j+1,k)=(round(((New_im(i,j,k)-New_im(i,j+fact,k))/fact)*2+New_im(i,j+fact,k)));
                New_im(i,j+2,k)=(round(((New_im(i,j,k)-New_im(i,j+fact,k))/fact)*1+New_im(i,j+fact,k)));
            else
                New_im(i+1,j,k)=(round(((New_im(i,j+fact,k)-New_im(i,j,k))/fact)*1+New_im(i,j,k)));
                New_im(i+2,j,k)=(round(((New_im(i,j+fact,k)-New_im(i,j,k))/fact)*2+New_im(i,j,k)));
            end
            
           
        end
    end
end




New_im = uint8(New_im);

figure,imshow(im),title('Original');
figure,imshow(New_im),title('Resized');
%figure,imshow(imresize(im,3)),title('bilt in ');

end