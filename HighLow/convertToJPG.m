 contents = dir('*.tif') % or whatever the filename extension is
 for k = 1:numel(contents)
  filename   = contents(k).name;
  rgbImg     = imread(filename);
  imshow(rgbImg);
  %gsImg      = rgb2gray(rgbImg);
  [~,name,~] = fileparts(filename);
  gsFilename = sprintf('%s.jpg', name);
  imwrite(rgbImg,gsFilename,'BitDepth',12);
end