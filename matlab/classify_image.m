function o = classify_image(varargin)

if length(varargin) == 1
    options = varargin{1};
else
    options = {};
end

imagename = '../images/1.jpg';
if isfield(options, 'imagename')
    imagename = options.filename;
end

matname = '../images/1.jpg.mat';
if isfield(options, 'matname')
    matname = options.matname;
end

  I1=imread(imagename);
  surfopts.upright=true;
  surfopts.tresh=0.0001;
  Ipts1=OpenSurf(I1,surfopts);
  
  load(matname);
  
  labels = []
  numpts = size(Ipts1);
  for pt = 1:numpts(2)
      labels = [labels, uint8(info.labels(int32(Ipts1(pt).y), int32(Ipts1(pt).x)))];
  end
  
  figure, imshow(I1); hold on;
% Show the best matches
  for pt = 1:numpts(2)
      if labels(pt) > 0
          drawCircle(Ipts1(pt).y, Ipts1(pt).x, Ipts1(pt).scale, 'r');
      else
          drawCircle(Ipts1(pt).y, Ipts1(pt).x, Ipts1(pt).scale, 'y');
      end
  end
  o.labels = labels;
  o.descriptors = Ipts1;
end
  
function drawCircle(row, col, r, color)
    hold on
    t=(0:100)*2*pi/100;
    x=r*cos(t)+col;
    y=r*sin(t)+row;
    plot(x,y,color);
end