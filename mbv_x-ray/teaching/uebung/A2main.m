close all ;

[ dicomVolume, pixelspacing, dicomHeaderInfo ] = ASReadDICOM( 'E:\data\microCT\MulitmodalMouse_EA_080214_18_19\CT_DICOM\EA_080219_CT\1.2.826.0.1.3417726.3.1.1.05100.01041.20080219092524\1.2.826.0.1.3417726.3.338569.20080226110111828' ) ;


%% display the volume as wireframe
figure( 2 )
title('Wireframe') ;  

%smoothing the volume
W = %YOUR CODE see help for smooth3

%building the surface for the 3d plot; thresholding for segmentation
% for threshold: hounsfield scale
% The HU of common substances
% Substance 	HU
% Air 	-1000
% Fat 	-120
% Water 	0
% Muscle 	+40
% Contrast 	+130
% Bone 	+400 or more

V = %YOUR CODE see help for isosurface 

%create the patches for the 3d plot 
p = patch(V);

%set the color for the wireframe
%YOUR CODE see help for patch
% set the facecolor of p to white (w) and edgecolor to blue (b)

% surface plot with equal scaling along each axis
%YOUR CODE see help for daspect

%3d plot with correct axis scaling
view(3); axis tight

%% display the volume as wireframe (reduced polygons)
figure( 3 )
title('Wireframe reduced') ;  

%smoothing the volume
W = %YOUR CODE see help for smooth3

%building the surface for the 3d plot; thresholding for segmentation
% for threshold: hounsfield scale
% The HU of common substances
% Substance 	HU
% Air 	-1000
% Fat 	-120
% Water 	0
% Muscle 	+40
% Contrast 	+130
% Bone 	+400 or more

V = %YOUR CODE see help for isosurface 

%create the patches for the 3d plot
p = patch(V);

%reduce details
%YOUR CODE see help for reducepatch; dataillevel 0.05 

%set the color for our 3d volume
%YOUR CODE see help for patch
% set the facecolor of p to white (w) and edgecolor to blue (b)

% surface plot with equal scaling along each axis
%YOUR CODE see help for daspect

%3d plot with correct axis scaling
view(3); axis tight

