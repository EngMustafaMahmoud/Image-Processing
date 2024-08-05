function [] = logRgbOrgray(Image,degree)
[h ,w ,l]=size(Image);

image=zeros(h,w);
Image=im2double(Image);
 for i=1:h
    for j=1:w
           if l==3
               
                image(i,j,1)=(Image(i,j,1))*degree;
                image(i,j,2)=(Image(i,j,2))*degree;
                image(i,j,3)=(Image(i,j,3))*degree;
                %image(i,j,1)=log(Image(i,j,1)+1)*3;

            else
                image(i,j)=log(Image(i,j)+1)*1;
           end
    end
end
 image=im2uint8(image);
    figure,imshow(image);
end
