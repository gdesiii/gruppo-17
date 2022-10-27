function qrs_duration = mean_QRS(segnale) 

for j=1:size(segnale)
       
    [Qj, xQj] = findpeaks ( - segnale ( j , 1: round( length(segnale)/ 2 ))  );
    [Sj, xSj] = findpeaks ( - segnale ( j ,  round ( length(segnale)/ 2 ): end )  );
    
    
    figure
    for i=1:size(segnale)
        plot(xSj(i) , Sj(i) ,"x" , "r" )
    end
    
    
    xQ (j) = xQj (end) ;
    xS (j) = xSj (end) ;

end

qrs_duration= mean( xS- xQ);

end
