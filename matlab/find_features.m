function f=find_features(varargin)

if length(varargin) == 1
    options = varargin{1};
else
    options = {};
end

files = dir('../images/cache');
fnum = length(files);
for index = 1:fnum
    f = files(index);
    fname = strcat('../images/cache/', f.name)
    img = imread(fname);
    imshow(img);
end