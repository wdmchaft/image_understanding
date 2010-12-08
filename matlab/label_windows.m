function l=LabelWindows(img)
ROI = imselect2(img);
labels = zeros(size(img(:,:,1)));
numpoints = size(ROI.x1);
numpoints = numpoints(2);
for index = 1:numpoints
    labels(ROI.x1(1,index):ROI.x2(1,index), ROI.y1(1,index):ROI.y2(1,index)) = 1;
end

l=labels;