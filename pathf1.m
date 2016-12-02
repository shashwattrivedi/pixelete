global df;
df=zeros(floor(d1/60),floor(d2/60));


global corx;
corx=floor(d1/60);
global cory
cory=floor(d2/60);
for i= 1:corx
    for j= 1: cory
    df(i,j)=s(((i-1)*60+30),((j-1)*60+30));
    end

end
global node;

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


global  startnode
startnode=4;
 global finalnode
 finalnode=38;
  df(node(startnode).x,node(startnode).y)
  df(node(finalnode).x,node(finalnode).y)
p=1;
curr=startnode;
function pathf1(startnode1,startnode,finalnode)
%myfunc(37,37,42,node,corx,cory,df);
 while(~(curr==finalnode))
     p=1;
for i=1:(corx*cory)
    
if(df(node(i).x,node(i).y)==1   && node(curr).dis(i)==1)
if(node(i).visited==1 && node(startnode).dis(curr)+1<node(startnode).dis(i))
    validmove(p)=i;
      p=p+1;
end
    if(node(i).visited==0)
        validmove(p)=i;
        p=p+1;
    end


p
end
end
x=1;
x
for i=1:p-1
    if(node(startnode).dis(curr)+1<=node(startnode).dis(validmove(i)))
    node(startnode).dis(validmove(i))=node(startnode).dis(curr)+1;
    temp(x)=node(startnode).dis(curr)+1;
    x=x+1;
    
    end
    i
end
sort(temp);
pre=curr;
p
x

for i=1:p-1
   
if(temp(1)==node(startnode).dis(validmove(i)))
 
    node(curr).visited=1;
    curr
    curr=validmove(i);
    node(curr).prev=pre;
   
end

end

if(p==1)
    node(curr).visited=1;
curr=node(curr).prev;



end
 end    
end
