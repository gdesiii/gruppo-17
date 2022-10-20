function thr=find_thr(segnale, multiplier)
thr=mean(segnale)+multiplier * std(segnale);
end