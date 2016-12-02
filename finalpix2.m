
vid = videoinput('winvideo', 1, 'MJPG_640x480');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

preview(vid);

src.Brightness = 100;

src.Brightness = 72;

src.Brightness = 50;

vid.FramesPerTrigger = Inf;
pause(3);
  b=getsnapshot(vid);
%  b=imread('C:\Users\gstar\Desktop\test3.png');
[b,rect]=imcrop(b);
vid.ROIPosition=rect;
[d1,d2,d3]=size(b);
caliberate;

% imshow(b);

% c=b;
% %imshow(b);
% c=zeros(d1,d2);

%c=rgb2gray(b);
% for i=1:d1
%     for j=1:d2
%         if  b(i,j,1)>=0 && b(i,j,1)<30 && b(i,j,2)>=0 && b(i,j,2)<=40 && b(i,j,3)>=0 && b(i,j,3)<=40
%             
%             c(i,j)=1;
%             
%         
%     end
% end
% [crop_y,rect1]=imcrop(b);
% yellow1=colourthresthold(crop_y);

% crop_r=imcrop(b);
close;

red=colourthresthold(b,crop_r,65);
red=noise(red);
% imtool(red);
close;
% crop_b=imcrop(b);
close;

blue=colourthresthold(b,crop_b,75);
blue=noise(blue);

% imtool(blue);
close;


green=colourthresthold(b,crop_g,55);
green=noise(green);
yel=colourthresthold(b,crop_y,55);
yel=noise(yel);


 c=(~imfill(red,'holes')==1 &~imfill(blue,'holes')==1  & ~imfill(green,'holes')==1 & ~imfill(yel,'holes')==1);
% c=bwmorph(c,'dilate',2);
% % imshow(c);
% %c=~c;
c=noise(c);
 imtool(c);
close;
% c=imfill(c,'holes');
% imtool(c);

[l,num]=bwlabeln(c);
rgb=label2rgb(l);
%imshow(rgb);
l1=strel('line',17,0);
l2=strel('line',17,90);
%l=imdilate(l,l1);
%l=imdilate(l,l2);
l=imfill(l,'holes');
d=zeros(size(l));
%imshow(l);
for i=1:d1
    for j=1:d2
        if l(i,j)==1 && c(i,j)==1
            
            d(i,j)=1;
            
        end
    end
end


%figure
%subplot(2,2,1),imshow(b),title('its b')
%subplot(2,2,2),imshow(c),title('its c')
%subplot(2,2,3),imshow(d),title('its d')
%subplot(2,2,4),imshow(l),title('its l')
%figure
%subplot(1,1,1),imshow(d),title('its the path');
% imshow(d);
s=c;
bwmorph(s,'erode');
s=imdilate(s,l2);
% imshow(s);
global df;



global corx;
corx=7;
global cory
cory=8;
df=zeros(corx,cory);
for i= 1:corx
    for j= 1: cory
    df(i,j)=s(ceil((i-1)*d1/corx+d1/(corx*2)),ceil((j-1)*d2/(cory)+d2/(cory*2)));
    end

end
 

for i= 1:corx
    for j= 1: cory
        node((i-1)*cory+j).x=i;
       node((i-1)*cory+j).y=j;
      node((i-1)*cory+j).visited=0;
    end
end

for i= 1:corx*cory
for j=1:corx*cory
  temp=sqrt((node(i).x-node(j).x)^2+(node(i).y-node(j).y)^2);
  if(temp<=1)
      node(i).dis(j)=temp;
  else
      node(i).dis(j)=inf;
  end
end

end

%figure
for i=1:10
    d= l==i;
%subplot(5,2,i),imshow(d),title(i)
end

% yellow=b(:,:,1)>=235 & b(:,:,2)>=196 & b(:,:,3)<=80;
% red= b(:,:,1)>=225 & b(:,:,2)<=30 & b(:,:,3)<=40;
% %red=imfill(red,'holes');
% red=bwmorph(red,'dilate');
% blue=  b(:,:,3)>=225 & b(:,:,3)<=233;
% 
% blue=bwmorph(blue,'dilate');
% green=b(:,:,2)>=170 & b(:,:,1)<=37 & b(:,:,3)<=80;
% green=bwmorph(green,'dilate');
% figure
% subplot(2,2,1),imshow(red),title('its red')
% 
% subplot(2,2,2),imshow(blue),title('its blue')
% subplot(2,2,3),imshow(green),title('its green')
% subplot(2,2,4),imshow(yellow),title('its yellow')

red1=~red;
blue1=~blue;
 green1=~green;
[l,num]=bwlabeln(red1);
stats1=regionprops(l,'Area','Perimeter','BoundingBox','Centroid');

for i=1:num
    areatemp=stats1(i).Area;
    perimetertemp=stats1(i).Perimeter;
    if( power(perimetertemp,2)/areatemp<13)
    r.circle=stats1(i).Centroid;
    end
    if( power(perimetertemp,2)/areatemp>15 && power(perimetertemp,2)/areatemp<21)
           imtool(l==i);
           
        r.triangle=stats1(i).Centroid;
    end
    
   
end
[l,num]=bwlabeln(blue1);
stats1=regionprops(l,'Area','Perimeter','BoundingBox','Centroid');

for i=1:num
    
    imtool(l==i);
    areatemp=stats1(i).Area;
    perimetertemp=stats1(i).Perimeter;
   %power(perimetertemp,2)/areatemp
    if( power(perimetertemp,2)/areatemp<13)
     bl.circle=stats1(i).Centroid;
    end
    if( power(perimetertemp,2)/areatemp>15 && power(perimetertemp,2)/areatemp<21)
    
        bl.triangle=stats1(i).Centroid;
    end
    
   
    temp=0;
end
[l,num]=bwlabeln(green1);
stats1=regionprops(l,'Area','Perimeter','BoundingBox','Centroid');

for i=1:num
    areatemp=stats1(i).Area;
    perimetertemp=stats1(i).Perimeter;
    if( power(perimetertemp,2)/areatemp<13)
    g.circle=stats1(i).Centroid;
    end
    if( power(perimetertemp,2)/areatemp>15 && power(perimetertemp,2)/areatemp<21)
    g.triangle=stats1(i).Centroid;
    end
    
    
    temp=0;
end
   [l,num]=bwlabeln(~yel);
stats1=regionprops(l,'Area','Perimeter','BoundingBox','Centroid');

for i=1:num
    areatemp=stats1(i).Area;
    perimetertemp=stats1(i).Perimeter;
    if( power(perimetertemp,2)/areatemp<13)
    y.circle=stats1(i).Centroid;
    end
    if( power(perimetertemp,2)/areatemp>15 && power(perimetertemp,2)/areatemp<21)
    y.triangle=stats1(i).Centroid;
    end
    
    
    temp=0;
end
   
%  df(1,1)=1;
% startnode=21;
%  
%  finalnode=5;
%   df(node(startnode).x,node(startnode).y)
%   df(node(finalnode).x,node(finalnode).y)
% 
% curr=startnode;
%myfunc(37,37,42,node,corx,cory,df);
%  while(~(curr==finalnode))
%      p=1;
% for i=1:(corx*cory)
%     
% if(df(node(i).x,node(i).y)==1 && node(i).visited==0  && node(curr).dis(i)==1)
%         p=p+1;
%   if(node(startnode).dis(curr)+1<=node(startnode).dis(i))
%     node(startnode).dis(i)=node(startnode).dis(curr)+1;
%     node(i).prev=curr;
%     
%   end
% end
% end
% 
% 
% if(p==1)
%     node(curr).visited=1;
% curr=node(curr).prev;
% node(curr).visited=0;
% end
% 
% min=inf;
% for i=1:corx*cory
% if(node(startnode).dis(i)<min && ~(i==curr) && node(i).visited==0)
%     min=node(startnode).dis(i);
%     q=i;
% end
% end
% node(curr).visited=1;
% curr=q;
% end
% 
% curr=startnode;
% tempn=finalnode;
% 
% while(~(tempn==startnode))
% kl=node(tempn).prev;
% node(kl).next=tempn;
% tempn=kl;
% end
 ctrnodet2;
 
 order2;
allon;
alloff;
