function [] = histogram(Image)
histarr=zeros(256,1);
[h ,w, l]=size(Image);
for i=1:h
    for j=1:w 
        if l==3
              histarr(Image(i,j,1)+1)=histarr(Image(i,j,1)+1)+1;
              histarr(Image(i,j,2)+1)=histarr(Image(i,j,2)+1)+1;
              histarr(Image(i,j,3)+1)=histarr(Image(i,j,3)+1)+1;
        else
        histarr(Image(i,j)+1)=histarr(Image(i,j)+1)+1;
        end
    end
end
figure,bar(histarr);

end