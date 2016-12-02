function [bw]=colourthresthold(pic,temp1,t)
% temp1=imcrop(pic);
% max1=mean(max(temp1(:,:,1)));
% max2=mean(max(temp1(:,:,2)));
% max3=mean(max(temp1(:,:,3)));
% min1=mean(min(temp1(:,:,1)));
% min2=mean(min(temp1(:,:,2)));
% min3=mean(min(temp1(:,:,3)));

r=mean(mean(temp1(:,:,1)));
g=mean(mean(temp1(:,:,2)));
b=mean(mean(temp1(:,:,3)));

% 
% bwr = pic(:,:,1)<max1 & pic(:,:,1)>min1;
% bwg = pic(:,:,2)<max2 & pic(:,:,2)>min2;
% bwb = pic(:,:,3)<max3 & pic(:,:,3)>min3;


bwr = pic(:,:,1)<r+t & pic(:,:,1)>r-t;
bwg = pic(:,:,2)<g+t & pic(:,:,2)>g-t;
bwb = pic(:,:,3)<b+t & pic(:,:,3)>b-t;



bw = bwr&bwg&bwb;


end

