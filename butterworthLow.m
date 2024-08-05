function [] = butterworthLow(image)
    [H ,W ,L]=size(image);
    filt=zeros(H,W,L);
    D0=15;
    for j=1:H
        for k=1:W
            distance=sqrt((j-(H/2)).^2+(k-(W/2)).^2);
            filt(j,k)=(1/(1+(distance/D0)^2));
            
        end
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
    finall=mat2gray(abs(FullIMage));%normalize and clipping or mapping 
    % and ignore imagine numbers


    figure, imshow(finall);
    
end