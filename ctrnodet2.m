min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-r.circle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-r.circle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
r.circlenn=t;
min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-bl.circle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-bl.circle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
bl.circlenn=t;
min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-g.circle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-g.circle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
g.circlenn=t;
min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-r.triangle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-r.triangle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
r.trianglenn=t;
max=0;


min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-bl.triangle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-bl.triangle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
bl.trianglenn=t;
max=0;


min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-g.triangle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-g.triangle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
g.trianglenn=t;
min=inf;
max=0;



min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-y.circle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-y.circle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
y.circlenn=t;
min=inf;
for i=1:corx*cory
dist=sqrt(((node(i).x-1)*d1/(corx)+d1/(corx*2)-y.triangle(2))^2+((node(i).y-1)*d2/(cory)+d2/(cory*2)-y.triangle(1))^2);
if(dist<min)
    t=i;
    min=dist;
end
end
y.trianglenn=t-1;