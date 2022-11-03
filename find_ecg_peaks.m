function [peaks, xpeaks] = find_ecg_peaks(segnale, freq, m)

if m ~= 0
    thr = find_thr(segnale, m);
    [peaks, xpeaks] = findpeaks(segnale, freq, 'MinPeakHeight',  thr);
else
    [peaks, xpeaks] = findpeaks(segnale);
end

end

