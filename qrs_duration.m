function qrs_duration = mean_QRS(segnale)

for j=1:length(segnale)
       
    [Qj, xQj] = findpeaks ( - segnale ( j , 1: round (length(segnale)/ 2 ))  );
    [Sj, xSj] = findpeaks ( - segnale ( j ,  round ( length(segnale)/ 2 ): end )  );
    
    xQ (j) = xQj (end) ;
    xS (j) = xSj (end) ;

end

qrs_duration= mean( xS- xQ);

end
