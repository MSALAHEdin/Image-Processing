function New_im=Minimization(~)
im=imread("football.jpg");
fact=2;
[r, c, ch]=size(im);
New_r = floor(r/fact);
New_c = floor(c/fact);
New_im = zeros(New_r,New_c, ch);

for k=1:ch
    for i=1:New_r
        for j=1:New_c
           New_im(i,j,k)= im(i*fact+1-fact,j*fact+1-fact,k);
           
        end
    end
end


New_im = uint8(New_im);
figure,imshow(im),title('Original Image')
figure,imshow(New_im),title('Resized Image')

end