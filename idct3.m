function [gop] = idct3(gop_dct)
    [height, width, frame_num] = size(gop_dct);
    result = zeros(size(gop_dct));
    for i = 1:height
        for j =1:width
            result(i,j,:) = idct(gop_dct(i,j,:));
        end
    end
    
    gop = [];
    for ii = 1:frame_num
        gop = cat(3,gop,idct2(result(:,:,ii)));
    end
end
