
im1=imread('football.jpg');
im2=imread('ngc6543a.jpg');
r1=im1(:,:,1);
g1=im1(:,:,2);
b1=im1(:,:,3);
r2=im2(:,:,1);
g2=im2(:,:,2);
b2=im2(:,:,3);
a=myown(r1,r2);
b=myown(g1,g2);
c=myown(b1,b2);
nexttile;
imshow(im1);
nexttile;
imshow(im2);
d=cat(3,a,b,c);
nexttile
imshow(d);



function mattu=myown(p,q)
M = zeros(256,1,'uint8'); 
hist1 = imhist(p); 
hist2 = imhist(q);
cdf1 = cumsum(hist1) / numel(p);
cdf2 = cumsum(hist2) / numel(q);
for idx = 1 : 256
    [~,ind] = min(abs(cdf1(idx) - cdf2));
    M(idx) = ind-1;
end
[H, W] = size(p);
mattu=zeros(H,W,'uint8');
for x = 1: H
    for y = 1:W
             mattu(x,y) =M(double(p(x,y))+1);
    end
end
end