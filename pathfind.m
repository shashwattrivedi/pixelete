function pathfind(startnode1,startnode,finalnode,node,corx,cory,df) = 
p=1;
curr=startnode;
temp=inf(3,1);

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
            
            
            
        end
    end
    x=1;
    
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
    
    
    
    for i=1:p-1
        
        if(temp(1)==node(startnode).dis(validmove(i)))
            
            node(curr).visited=1;
            curr;
            curr=validmove(i);
            node(curr).prev=pre;
            
        end
        
    end
    
    if(p==1)
        node(curr).visited=1;
        curr=node(curr).prev;
        
        
        
    end
end