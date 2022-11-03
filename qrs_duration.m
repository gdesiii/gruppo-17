function durata_QRS = qrs_duration(segnale , freq) 

 Q=zeros (1, length(segnale));
 xQ=zeros (1, length(segnale));
 
 S=zeros (1, length(segnale));
 xS=zeros (1, length(segnale));
 
for j=1:size(segnale,1) 

    [Qj, xQj] = find_ecg_peaks (-(segnale(j , 1: round( length(segnale(1,:))/ 2 ))), 1000, 0);
    %valore del picco Q del j-esimo battito
    Q(j)= -Qj(end);
    %valore dell'ascissa del picco Q del j-esimo battito
    xQ(j)= xQj(end);

    [Sj, xSj] = find_ecg_peaks (-(segnale(j , round( length(segnale(1,:))/ 2 ):end )), freq, 0);
    %valore del picco S del j-esimo battito
    S(j)= -Sj(1);
    %valore dell'ascissa del picco S del j-esimo battito
    xS(j)= xSj(1) + round ( length(segnale(1,:))/ 2 );
           
 end

durata_QRS = xS - xQ ;

end
