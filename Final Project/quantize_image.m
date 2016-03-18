function image_vector = quantize_image(vocab,image,type,step)
    [~,descr] = sift(image,type,step);
    image_vector = zeros([size(vocab,2) 1]);
    for d = 1:size(descr,2)
        [word,index] = quantize_feature(vocab,descr(:,d));
        image_vector(index) = image_vector(index) + 1;
    end
end