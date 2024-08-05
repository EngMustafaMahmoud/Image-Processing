function [] = rootRgbOrgray(Image,x)
[h ,w ,l]=size(Image);
image=zeros(h,w);
Image=im2double(Image);
 for i=1:h
    for j=1:w
           if l==3
               
                image(i,j,1)=nthroot(Image(i,j,1),x);
                image(i,j,2)=nthroot(Image(i,j,2),x);
                image(i,j,3)=nthroot(Image(i,j,3),x);
                

            else
                image(i,j)=nthroot(Image(i,j),x);
           end
    end
end
 image=im2uint8(image);
    figure,imshow(image);
end
