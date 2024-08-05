function [] = expRgbOrGray(Image)
[h ,w ,l]=size(Image);
image=zeros(h,w);
Image=im2double(Image);
for i=1:h
    for j=1:w
           if l==3
               
                image(i,j,1)=exp(Image(i,j,1))/5;
                image(i,j,2)=exp(Image(i,j,2))/5;
                image(i,j,3)=exp(Image(i,j,3))/5;

            else
                image(i,j)=exp(Image(i,j))/5;
            end
    end
end


    image=im2uint8(image);
    figure,imshow(image);


end