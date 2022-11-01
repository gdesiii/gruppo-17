function [peaks, xpeaks] = find_ecg_peaks(segnale, freq, m)

thr = find_thr(segnale, m);

if m ~= 0
[peaks, xpeaks] = findpeaks(segnale, freq, 'MinPeakHeight',  thr);
else
[peaks, xpeaks] = findpeaks(segnale);
end
end

