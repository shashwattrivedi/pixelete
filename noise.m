function [im]=noise(im)

s1 = strel('line',7,60);
s2 = strel('disk',5);


% imtool(im);

im= imclose(im,strel('line',4,0));
im= imclose(im,s1);


% imtool(im);
im=bwareaopen(im,5);
% imtool(im);

im= imopen(im,s2);
im=bwareaopen(im,30);
% imtool(im);

%  im=imfill(im,'holes');
% im= imopen(im,strel('disk',5));
% im=imclose(im,strel('disk',10));
% imtool(im);
end
