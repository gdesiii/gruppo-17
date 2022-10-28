function heart_rate=compute_heart_rate(peaks, dataNoTrend, freq)
    heart_rate= length(peaks)/((length(dataNoTrend)/freq)/60);
end

