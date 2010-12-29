function o = classify_image(varargin)

if length(varargin) == 1
    options = varargin{1}
else
    options = {} 
end

fname = '../images/cache/1.png';
if isfield(options, 'filename')
    fname = options.filename;
end

  I1=imread(fname);
  surfopts.upright=true;
  surfopts.tresh=0.0001;
  Ipts1=OpenSurf(I1,surfopts);
  figure, imshow(I1); hold on;
% Show the best matches
  numpts = size(Ipts1);
  for pt = 1:numpts(2);
      drawCircle(Ipts1(pt).y, Ipts1(pt).x, Ipts1(pt).scale, 'y'); 
  end
  o = Ipts1;
end
  
function drawCircle(row, col, r, color)
    hold on
    t=(0:100)*2*pi/100;
    x=r*cos(t)+col;
    y=r*sin(t)+row;
    plot(x,y,color);
end