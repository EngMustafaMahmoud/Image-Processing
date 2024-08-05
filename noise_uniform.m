function [new_img]= noise_uniform(img,a,b)
img = double(img);
[h ,w ,l] = size(img);
new_img=zeros(h,w,l);
num_of_pixel = round((1/(b-a))*w*h);
for i=1:255
    for x=1:num_of_pixel
        row = ceil(rand(1,1)*h);
        colomn = ceil(rand(1,1)*w);
        img(row,colomn)=img(row,colomn)+i;
    end
end
for k=1:1
    mn=min(min(img(:,:,k)));
    mx=max(max(img(:,:,k)));
    new_img(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;
end
new_img=uint8(new_img);
end