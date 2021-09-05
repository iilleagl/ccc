function [gop_dct] = dct3(gop)
    [height, width, frame_num] = size(gop);
    p_gop_dct = [];
    for ii = 1:frame_num
        p_gop_dct = cat(3,p_gop_dct,dct2(gop(:,:,ii)));
    end
    gop_dct = zeros(size(gop));
    
    for i = 1:height
        for j = 1:width
            gop_dct(i,j,:) = dct(p_gop_dct(i,j,:));
        end
    end
end
