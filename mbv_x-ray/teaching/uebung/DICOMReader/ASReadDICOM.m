function [ dicomVolume, pixelspacing, dicomHeaderInfo ] = ...
                                      ASReadDICOM( nfolder ) 
% Created by Thomas Jetzfellner 
%     %Gives Volume Matrix conatining all the dicom files read in sequence
%
%     Output Arguments
%     dicomVolume                 =  MxNxP matrix where M x N is image
%                                    array and P indicates img no.
%     pixelspacing                =  scalar element giving voxel
%                                    dimension based on the 
%                                    'dicomHeaderInfo'(described below).
%     dicomHeaderInfo             =  supplies dicom header info for the
%                                    first dicom file only.
%     NOTE: It is assumed that this is an isotropic volume and all dicom
%     files belong to the same volume. If you don't have isotrtopic you
%     will have to modify the input for 'isotropicVoxelDimension'.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%check for trouble with the fs
if ~ischar( nfolder )
  disp( 'no valid Directory selected.' )
  return ;
end

%acquire number of files in directory
dfiles = %YOUR CODE see help for dir
dfiles = %YOUR CODE avoid . and ..
nfiles = %YOUR CODE get number of files

%check for available files
if nfiles < 1
  disp( 'no files available.' ) ;
  return ;
end

%total number of files for the image stack (needed for the for loop)
totalFiles = nfiles ;

for i = 1 : totalFiles
  
  %read file and DICOM file header
  filename = %YOUR CODE see help for fullfile ; create the full file name to read data form files
  dicomHeaderInfo = %YOUR CODE read DICOM header see help for dicominfo ;
  
  %calculate corrected position of the slice in image volume
  pos = %YOUR CODE read from header the AcquisitionNumber 
  slicepos = nfiles - pos ;

  %read dicom image data and put the data in the volume
  [ dicomVolume(:,:, slicepos ) ] = %YOUR CODE see help for dicomread; imrotate; note image is rotated about 180 
  
  %get pixelspacing from dicom header
  if i == 1
    pixelspacing = %YOUR CODE read pixelspacing and store in the return value only once 
  end
  
end
