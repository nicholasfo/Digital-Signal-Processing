audio = audioread('pianoise.wav');
%sound(audio,Fs)

filteredSound = filter(Num,1,audio);
sound(filteredSound,Fs);
