function o=label_image(imagename, varargin)

    if length(varargin) == 1
        do_save = varargin{1};
    else
        do_save = 1;
    end

    matname = strcat(imagename, '.mat');
    img = imread(imagename);
    info = label_windows(img);
    
    if do_save
        save(matname,'info');
%        num_windows = size(info.x1);
%        size(info.labels)
%        info.x1
%        info.x2
%        info.y1
%        info.y2
%        for c = 1:num_windows(2)
%            w = img(info.x1(1,c):info.x2(1,c), info.y1(1,c):info.y2(1,c), 1:3);
%            ifname = strcat('../images/cache/', num2str(start_imgindex + total_imgs), '.png');
%            imwrite(w, ifname, 'PNG');
%            total_imgs = total_imgs + 1;
%        end
    end
end