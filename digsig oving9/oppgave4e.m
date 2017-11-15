audio = audioread('pianoise.wav');
sound(audio,Fs)
pause(15);

filteredSound = filter(Num,1,audio);
sound(filteredSound,Fs);
