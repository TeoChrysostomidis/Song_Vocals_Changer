[x,fs] = audioread('Black Sabbath - National Acrobat.wav');  % load the music and get the sampling frequency

nsemitones = -4;
audioOut = shiftPitch(x,nsemitones); %lower the original signal by 4 semitones
 
sound(audioOut,fs);
