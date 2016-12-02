crop_red = imcrop(pic);
crop_yellow = imcrop(pic);

red=colourthresthold(pic, crop_red);
yellow=colourthresthold(pic, crop_yellow);


% red= pic(:,:,1)>=rmin1 & pic(:,:,1)<=rmax1 & pic(:,:,2)>=rmin2 & pic(:,:,2)<=rmax2 & pic(:,:,3)>=rmin3 & pic(:,:,3)<=rmax3 ;
% yellow=pic(:,:,1)>=ymin1 & pic(:,:,1)<=ymax1 & pic(:,:,2)>=ymin2 & pic(:,:,2)<=ymax2 & pic(:,:,3)>=ymin3 & pic(:,:,3)<=ymax3;

% imtool(red);
% imtool(yellow);

red=noise(red);
yellow=noise(yellow);
% imtool(red);
% imtool(yellow);