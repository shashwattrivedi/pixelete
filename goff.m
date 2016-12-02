pic=getsnapshot(vid);



%red=colourthresthold(pic, crop_red,40);% pic=getsnapshot(vid);

fwd = 0.03;
turn = 0.05;

red=colourthresthold(pic, crop_red,21);
yellow=colourthresthold(pic, crop_yellow,25);
    
red=noise(red);
yellow=noise(yellow);

bot_pos_img = yellow|red;
bot_pos_img = noise(bot_pos_img);
for i=1:corx*cory
if(bot_pos_img(ceil((node(i).x-1)*(d1/corx)+(d1/(2*corx))),ceil((node(i).y-1)*(d2/cory)+(d2/(2*cory))))==1)
    break;
end
end
bot_pos_node=i;

df(node(bot_pos_node).x,node(bot_pos_node).y)=1;

%df(node(y.trianglenn).x,node(y.trianglenn).y)=1;

startnode = i;

finalnode = g.ciclenn;
df(node(finalnode).x,node(finalnode).y)=1;


dijk;





while((curr~=finalnode))
    next=node(curr).next;
    curr
     react;
    pic=getsnapshot(vid);
  %  pic=imcrop(pic,rect);
    close;
    
    red=colourthresthold(pic, crop_red,21);
    yellow=colourthresthold(pic, crop_yellow,25);
    
    red=noise(red);
    yellow=noise(yellow);
   
    %%
    bot_pos_img = yellow|red;
bot_pos_img = noise(bot_pos_img);
for i=1:corx*cory
if(bot_pos_img(ceil((node(i).x-1)*(d1/corx)+(d1/(2*corx))),ceil((node(i).y-1)*(d2/cory)+(d2/(2*cory))))==1)
    break;
end
end
bot_pos_node=i;
%    pause(1);
  if(i==next)
       curr=next;
   end
   
   
   %%
%     imtool(red);
%     imtool(yellow);
    s=regionprops(red,'Centroid');
    s1=regionprops(yellow,'Centroid');
    centre(1)=(s(1).Centroid(2)+s(1).Centroid(2))/2;
    centre(2)=(s1(1).Centroid(1)+s1(1).Centroid(1))/2;
    botvector.x=s(1).Centroid(2)-s1(1).Centroid(2);
    botvector.y=s(1).Centroid(1)-s1(1).Centroid(1);
   % di=sqrt((centre(1)-node(next).x)^2+(centre(2)-node(next).y)^2);
    di=sqrt(((node(next).x-1)*d1/(corx)+d1/(corx*2)-centre(1))^2+((node(next).y-1)*d2/(cory)+d2/(cory*2)-centre(2))^2);
    dir=sqrt(((node(next).x-1)*d1/(corx)+d1/(corx*2)-s(1).Centroid(2))^2+((node(next).y-1)*d2/(cory)+d2/(cory*2)-s(1).Centroid(2))^2);
     diy=sqrt(((node(next).x-1)*d1/(corx)+d1/(corx*2)-s1(1).Centroid(2))^2+((node(next).y-1)*d2/(cory)+d2/(cory*2)-s1(1).Centroid(2))^2);
     imshow(pic);
    hold on;
    plot(s(1).Centroid(1),s(1).Centroid(2),'r*');
     plot(s1(1).Centroid(1),s1(1).Centroid(2),'y*');
     plot(node(next).x*d1/corx+d1/(corx/2),node(next).y*d2/cory+d2/(cory/2),'g*');
    dirvec.x=-node(curr).x+node(next).x;
    dirvec.y=-node(curr).y+node(next).y;
    di
   
    costheta=(botvector.x*dirvec.x+botvector.y*dirvec.y)/(sqrt(botvector.x^2+botvector.y^2)*sqrt(dirvec.x^2+dirvec.y^2));
    theta=abs(acosd(costheta));
    sign=botvector.x*dirvec.y-dirvec.x*botvector.y;
    theta
    if(theta>-8 && theta<8)
        if(diy<=dir)
            arduinocode('B',a);
            pause(fwd*di/(d1/corx));
            arduinocode('S',a);
            
        else
            arduinocode('F',a);
            pause(fwd*di/(d1/corx));
            arduinocode('S',a);
        end
        
    
    else%if(theta>80 && theta<=110)
        if(sign>0)
            arduinocode('L',a);
            pause(turn*theta/90);
            arduinocode('S',a);
%             arduinocode('F',a);
%             pause(fwd*di/(d1/corx));
%             arduinocode('S',a)
        else
            arduinocode('R',a);
            pause(turn*theta/90);
            arduinocode('S',a);
%             arduinocode('F',a);
%             pause(fwd*di/(d1/corx));
%             arduinocode('S',a);
        end
    end

end