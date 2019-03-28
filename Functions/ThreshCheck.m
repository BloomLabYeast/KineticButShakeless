function ThreshCheck
im_files = dir('*.tiff');
%Loop through files
parfor n = 1:numel(im_files)
    warning('off','all')
    im_cell = bfopen2(im_files(n).name);
    im = bf2mat(im_cell);
    threshRFP = multithresh(im(:,:,1));
    threshGFP = multithresh(im(:,:,2));
    threshBFP = multithresh(im(:,:,3));
    bin_imRFP = im(:,:,1) > threshRFP;
    bin_imGFP = im(:,:,2) > threshGFP;
    bin_imBFP = im(:,:,3) > threshBFP;
    propsRFP = regionprops(bin_imRFP, 'centroid');
    propsGFP = regionprops(bin_imGFP, 'centroid');
    propsBFP = regionprops(bin_imBFP, 'centroid');
    if (numel(propsRFP) ~= 2 && max(max(im(:,:,1))) ~= 0) || (numel(propsGFP) ~= 2 && max(max(im(:,:,2))) ~= 0) || (numel(propsBFP) ~= 2 && max(max(im(:,:,3))) ~= 0)
        if numel(propsRFP) ~= 2
            %flaggedstr{end+1} = strcat(im_files(n).name,',RFP,',num2str(numel(propsRFP)));
        end
        if numel(propsGFP) ~= 2
            %flaggedstr{end+1} = strcat(im_files(n).name,',GFP,',num2str(numel(propsGFP)));
        end
        if numel(propsBFP) ~= 2
            %flaggedstr{end+1} = strcat(im_files(n).name,',BFP,',num2str(numel(propsBFP)));
        end
        movefile(im_files(n).name,'..\Quarantine');
    end
end
end