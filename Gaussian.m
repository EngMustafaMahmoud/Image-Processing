function [] = Gaussian(image,D0,index)
    [H ,W ,L]=size(image);
    filt=zeros(H,W,L);
    for j=1:H
        for k=1:W
            distance=sqrt((j-(H/2)).^2+(k-(W/2)).^2);
            filt(j,k)=exp(-distance^2 / (2*D0^2));
            
        end
    end




    if (index==0)
        filt=filt;
    else
        filt=1-filt;
    end




    fiCm=fft2(image);
    fiSh=fftshift(fiCm);%shift low to the center
    reall=real(fiSh);
    imagine=imag(fiSh);
    nreal=filt.*reall;
    nimagine=filt.*imagine;
    FullIMage=nreal(:,:)+1i*nimagine(:,:);
    FullIMage=fftshift(FullIMage);
    FullIMage=ifft2(FullIMage);
    finall=mat2gray(abs(FullIMage));


    figure, imshow(finall);
    
end