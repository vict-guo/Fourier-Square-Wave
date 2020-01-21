#Fourier Series Animation
#By: Victor Guo

figure('Name','Square Wave Fourier Animation','NumberTitle','off');

x = -10:0.05:10;#use x values from -10 to 10
numTerms = 5;#specified number of terms

for i = 0 : 7
  y1 = 0;#square wave function
  for k = 0 : numTerms-1
    y1+=sin((2*k+1)*pi*x/5)/(2*k+1);#append the next term
  endfor
  y1 *= 4/pi;#scale down 
  plot(x,y1);#draw animation
  numTerms *= 2;
  pause(0.5);
endfor