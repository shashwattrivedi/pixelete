% pic=getsnapshot(vid);

fwd = 0.35;
turn = 0.01;
% [rmax1,rmin1,rmax2,rmin2,rmax3,rmin3]=colourthresthold(pic);
% [ymax1,ymin1,ymax2,ymin2,ymax3,ymin3]=colourthresthold(pic);

crop_red = imcrop(pic);
crop_yellow = imcrop(pic);

% a=arduino('COM3');

while(~(curr==finalnode))
    next=node(curr).next;
    
    pic=getsnapshot(vid);
    pic=imcrop(pic,rect);
    
    red=colourthresthold(pic, crop_red);
    yellow=colourthresthold(pic, crop_yellow);
    
    red=noise(red);
    yellow=noise(yellow);
    
    s=regionprops(red,'Centroid');
    s1=regionprops(yellow,'Centroid');
    
    botvector.x=s(1).Centroid(2)-s1(1).Centroid(2);
    botvector.y=s(1).Centroid(1)-s1(1).Centroid(1);
    dirvec.x=-node(curr).x+node(next).x;
    dirvec.y=-node(curr).y+node(next).y;
    
    costheta=(botvector.x*dirvec.x+botvector.y*dirvec.y)/(sqrt(botvector.x^2+botvector.y^2)*sqrt(dirvec.x^2+dirvec.y^2));
    theta=abs(acosd(costheta));
    sign=botvector.x*dirvec.y-dirvec.x*botvector.y;
    
    if(theta<5)
        if(costheta<0)
            arduinocode('B',a);
            pause(fwd);
            arduinocode('S',a);
            
        else
            arduinocode('F',a);
            pause(fwd);
            arduinocode('S',a);
        end
        
    end
    if(theta>80 && theta<=90)
        if(sign>0)
            arduinocode('L',a);
            pause(turn);
            arduinocode('S',a);
            arduinocode('F',a);
            pause(fwd);
            arduinocode('S',a)
        else
            arduinocode('R',a);
            pause(turn);
            arduinocode('S',a);
            arduinocode('F',a);
            pause(fwd);
            arduinocode('S',a);
        end
    end
%    pause(1);
    arduinocode('R',a);
    curr=next;
end