function drawPlot(time,dataNoTrend, titolo)
figure,plot(time,dataNoTrend)
title(titolo)
ylabel('amplitude [uV]')
xlabel('time [sec]')
end

