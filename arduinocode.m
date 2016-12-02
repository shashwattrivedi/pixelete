
function []=arduinocode(val,a)
% Serial.begin(9600);
% a=arduino('COM3');
%Serial.println(val);
val
   if(val=='L')
   writeDigitalPin(a,3,1);
   writeDigitalPin(a,5,1);
   writeDigitalPin(a,4,0);
   writeDigitalPin(a,2,0);
   end
   if (val=='R')
   writeDigitalPin(a,2,1);
   writeDigitalPin(a,4,1);
   writeDigitalPin(a,3,0);
   writeDigitalPin(a,5,0);
   end
   if (val=='F')
   writeDigitalPin(a,3,1);
   writeDigitalPin(a,5,0);
   writeDigitalPin(a,2,0);
   writeDigitalPin(a,4,1);
   end
   if (val=='B')
   writeDigitalPin(a,3,0);
   writeDigitalPin(a,2,1);
   writeDigitalPin(a,5,1);
   writeDigitalPin(a,4,0);
   end
   if(val=='S')
   writeDigitalPin(a,3,1);
   writeDigitalPin(a,2,1);
   writeDigitalPin(a,4,1);
   writeDigitalPin(a,5,1);
   pause(0.5);
   end



end