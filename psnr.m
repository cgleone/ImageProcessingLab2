% psnr file

function result = psnr(f, g, mean2)
    result = 10*log10(1/mean2((f-g).^2));
end
    