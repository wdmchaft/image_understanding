function l=LabelWindows(img)
imgsize = size(img);

if isstr(img)
    img = imread(img);
end

ROI = imselect2(img);

labels = zeros(size(img(:,:,1)));
numpoints = size(ROI.x1);
numpoints = numpoints(2);
for index = 1:numpoints
    labels(ROI.x1(1,index):ROI.x2(1,index), ROI.y1(1,index):ROI.y2(1,index)) = 1;
end

l.labels=labels;
l.x1=ROI.x1;
l.y1=ROI.y1;
l.x2=ROI.x2;
l.y2=ROI.y2;
