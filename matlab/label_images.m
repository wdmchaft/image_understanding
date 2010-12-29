function o=label_images(varargin)
% iterates over all image files in the image directory. if there is 
% no '.mat' file for an image, the user is asked to label the image

if length(varargin) == 1
    do_save = varargin{1};
else
    do_save = 1;
end

files = dir('../images/*.jpg');
files = [files; dir('../images/*.png')];

fsize = size(files);
start_imgindex = 0;
total_imgs = 0;
for index = 1:fsize(1)
    fname = strcat('../images/', files(index).name);
    matname = strcat(fname, '.mat');
    if exist(matname) == 0
        label_image(fname, do_save);
    end
end