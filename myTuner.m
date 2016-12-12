function [y,S,fftSig2, xfft] = myTuner()
clc
        clear all; 
        Fs = 44100;
		
        S = wavrecord(1*Fs, Fs);

        nfft = length(S);
        nfft2 = 2^nextpow2(nfft);
        fftSig = fft(S, nfft2);
        fftSig2 = fftSig(1:nfft2/2);
        
        
        xfft = Fs*(0:nfft2/2-1)/nfft2;
        x = xfft(find(abs(fftSig2) == max(abs(fftSig2)), 1)); % the curresponding element of the max in the xfft array is our frequency

    C5 = 523.25;
    CSharp5 = 554.36;
    Db5 = 554.36;
    D5 = 587.32;
    DSharp5 = 622.26;
    Eb5 = 622.26;
    E5 = 659.26;
    F5 = 698.46;
    FSharp5 = 739.99;
    Gb5 =739.99;
    G5 = 783.99;
    GSharp5 = 830.61;
    Ab5 = 830.61;
    A5 = 880.00;
    ASharp5 = 	932.33;
    Bb5 = 	932.33;
    B5 = 987.77;
    C6 = 1046.50;
    range = 5;

        if x > (C5 - range) && x < (C5 + range)
            y = 'C5 played';
        elseif x > (Db5 - range ) && x < (Db5 + range)
            y = 'Db5 played';
        elseif x > (D5 - range ) && x < (D5 + range)
            y = 'D5 played';
        elseif x > (Eb5 - range ) && x < (Eb5 + range)
            y = 'Eb5 played';
        elseif x > (E5 - range ) && x < (E5 + range)
            y = 'E5 played';
        elseif x > (F5 - range ) && x < (F5 + range)
            y = 'F5 played';
        elseif x > (Gb5 - range ) && x < (Gb5 + range)
            y = 'Gb5 played';
        elseif x > (G5 - range ) && x < (G5 + range)
            y = 'G5 played';
        elseif x > (Ab5 - range ) && x < (Ab5 + range)
            y = 'Ab5 played';
        elseif x > (A5 - range ) && x < (A5 + range)
            y = 'A5 played';
        elseif x > (Bb5 - range ) && x < (Bb5 + range)
            y = 'Bb5 played';
        elseif x > (B5 - range ) && x < (B5 + range)
            y = 'B5 played';
        elseif x > (C6 - range ) && x < (C6 + range)
            y = 'C6 played';
        else 
            y = 'not in range';
        end
        
        %tunning = isempty(input('press Enter to tune again or 0 to exit'));
end
    
    
        