
  df(node(startnode).x,node(startnode).y)
  df(node(finalnode).x,node(finalnode).y)

curr=startnode;




while(~(curr==finalnode))
     p=1;
for i=1:(corx*cory)
    
if(df(node(i).x,node(i).y)==1 && node(i).visited==0  && node(curr).dis(i)==1)
        p=p+1;
  if(node(startnode).dis(curr)+1<=node(startnode).dis(i))
    node(startnode).dis(i)=node(startnode).dis(curr)+1;
    node(i).prev=curr;
    
  end
end
end


if(p==1)
    node(curr).visited=1;
curr=node(curr).prev;
node(curr).visited=0;
end

min=inf;
for i=1:corx*cory
if(node(startnode).dis(i)<min && ~(i==curr) && node(i).visited==0)
    min=node(startnode).dis(i);
    q=i;
end
end
node(curr).visited=1;
curr=q;
end

curr=startnode;
tempn=finalnode;

while(~(tempn==startnode))
kl=node(tempn).prev;
node(kl).next=tempn;
tempn=kl;
end