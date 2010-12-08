% setup script to initialise the matlab environment

disp 'Setting up matlab environment for window counting ...'

addpath(pwd);
addpath(strcat(pwd, '/lib'));
addpath(strcat(pwd, '/lib/clustering/FUZZCLUST'));
addpath(strcat(pwd, '/lib/SegTool/SegToolBox/SegToolBox'));
addpath(strcat(pwd, '/lib/OpenSurf'));
addpath(strcat(pwd, '/lib/imselect'));

disp '... done'