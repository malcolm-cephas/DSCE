clc;
clear;
[audio_in, fs] = audioread('Hello.wav');
lower_threshold = 500; % Hz
upper_threshold = 4000; % Hz
bp_filter = designfilt('bandpassiir', 'FilterOrder', 16, ...
                       'HalfPowerFrequency1', lower_threshold, ...
                       'HalfPowerFrequency2', upper_threshold, ...
                       'SampleRate', fs);
audio_voice_initial = filter(bp_filter, audio_in);
noise_segment = audio_voice_initial(1:round(0.1*fs));
noise_profile = mean(noise_segment);
audio_voice_spectrum = fft(audio_voice_initial);
noise_spectrum = fft(noise_profile * ones(size(audio_voice_initial)));
audio_voice_clean_spectrum = audio_voice_spectrum - noise_spectrum;
audio_voice_clean = real(ifft(audio_voice_clean_spectrum));
audio_voice_clean(audio_voice_clean < 0) = 0;
gain_factor = 2; 
audio_voice_amplified = audio_voice_clean * gain_factor;
audio_voice_amplified = min(max(audio_voice_amplified, -1), 1);
audio_background = audio_in - audio_voice_amplified;
audiowrite('sound_background.wav', audio_voice_amplified, fs);
audiowrite('sound_voice.wav', audio_background, fs);

nfft = 2^nextpow2(length(audio_in));
FFT_original = fftshift(fft(audio_in, nfft));
FFT_voice = fftshift(fft(audio_voice_amplified, nfft));
FFT_background = fftshift(fft(audio_background, nfft));

frequency_axis = (-nfft/2 : nfft/2 - 1) * (fs / nfft);

figure;
subplot(3, 1, 1);
plot(frequency_axis, abs(FFT_original));
title('FFT of Original Audio');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, fs/2]);
grid on;

subplot(3, 1, 2);
plot(frequency_axis, abs(FFT_voice));
title('FFT of Separated Voice');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, fs/2]);
grid on;

subplot(3, 1, 3);
plot(frequency_axis, abs(FFT_background));
title('FFT of Separated Background');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, fs/2]);
grid on;

sgtitle('Frequency Domain Representation');
