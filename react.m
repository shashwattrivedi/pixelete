pic=getsnapshot(vid);
yel1=colourthresthold(pic,crop_y,55);
yel1=noise(yel);
pause(0.2);
pic=getsnapshot(vid);
yel2=colourthresthold(pic,crop_y,55);
yel2=noise(yel);
for i=1:d1
    for j=1:d2
    if(xor(yel1(i,j),yel2(i,j))==1)
    count=count+1;
    end
    end
end
tempn=finalnode;
if(count<50)
    yon;
end
finalnode=tempn;
dijk;

