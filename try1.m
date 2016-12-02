s=serial('COM3');
get(s,{'BaudRate','DataBits','Parity','StopBits','FlowControl'})

fopen(s);

fprintf(s,'L\LF');
fclose(s);