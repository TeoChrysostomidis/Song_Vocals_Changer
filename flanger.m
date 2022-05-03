[x,fs] = audioread('sound_voice.wav');
delay = 15; 
range = 12; %length of the effect
sweep_freq = 12; %changing rate of delay
length=numel(x(:,1));

for i = 1:length-delay-range
    %add a dynamic delay to the original signal
    y(i) = x(i) + x(i+delay+round(range*sin(2*pi*i*sweep_freq/fs)));
end
y = transpose(y);
x((size(y)+1):size(x)) = []; %resize the array to have the same size with the original
%sound(y,fs);