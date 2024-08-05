% function [] = Image_Contrast_Stretching(Image,nMin,nMax)
% [h ,w ,l]=size(Image);
% image=zeros(h,w);
% image=double(image);
% for i=1:h
%     for j=1:w
%            if l==3
%                image=image(:,:,1);
%                oMax=max(max(image));
%                oMin=min(min(image));
% 
%                 image(i,j)=(((image(i,j))-oMin)/((oMax-oMin)*(nMax-nMin)))+nMin;
%                 % image(i,j,2)=(((image(i,j,2))-oMin)/((oMax-oMin)*(nMax-nMin)))+nMin;
%                 % image(i,j,3)=(((image(i,j,3))-oMin)/((oMax-oMin)*(nMax-nMin)))+nMin;
% 
% 
%             else
%                 image(i,j)=(((image(i,j))-oMin)/((oMax-oMin))*(nMax-nMin))+nMin;
%            end
%     end
% end
% image=uint8(image);
% imshow(image);
% end

function result = Image_Contrast_Stretching(im, new_min, new_max)
    [H, W, L] = size(im);
    result = zeros(H, W, L);
    new_range = new_max - new_min;
    im = double(im);

    for k=1:L
        old_min = min(min(im(:, :, k)));
        old_max = max(max(im(:, :, k)));
        range = old_max-old_min;

        for i=1:H
            for j=1:W
                result(i, j, k) = ((im(i, j, k) - old_min) / range) * new_range + new_min;
            end
        end
    end

    result = uint8(result);
    figure,imshow(result);
end



