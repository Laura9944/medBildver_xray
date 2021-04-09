close all ;

[ dicomVolume, pixelspacing, dicomHeaderInfo ] = ASReadDICOM( 'D:\development\Toolkit\teaching\data\1.2.826.0.1.3417726.3.338569.20080226110111828' ) ;

%% display a specific slice
figure(1)
title('Slice 150') ;  

%selecting a good colormap
%YOUR CODE see help for colormap

%select a single slice from the volume to display
%YOUR CODE see help for imagesc

