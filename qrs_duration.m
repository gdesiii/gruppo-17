function durata_QRS = qrs_duration(segnale) 

 Q=zeros (1, length(segnale));
 xQ=zeros (1, length(segnale));
 
 S=zeros (1, length(segnale));
 xS=zeros (1, length(segnale));
 

 for j=1:size(segnale,1) %mi da il numero di righe (length mi da il numero di colonne)
          
     %thr2=find_thr( - segnale ( j , :) , 0.5 );
     
     %tutti i picchi che vanno da 0 al picco R delo j-esimo battito
     [Qj, xQj] = findpeaks ( - segnale ( j , 1: round( length(segnale(1,:))/ 2 ))  );
    
     %valore del picco Q del j-esimo battito
     Q(j)= -Qj(end);
     
     %valore dell'ascissa del picco Q del j-esimo battito
     xQ(j)= xQj(end);
    
%      hold on
%      plot(xQj (j) , Q(j), '*' , 'Color' , 'r')
       
     
     %thr2=find_thr(  segnale ( j , :) , -1 );
    
     [Sj, xSj] = findpeaks ( - segnale ( j ,  round ( length(segnale(1,:))/ 2 ): end )  );
     
     S(j)= -Sj(1);
     xS(j)= xSj(1) + round ( length(segnale(1,:))/ 2 );
     
%      hold on
%      plot(xSj (j) + round ( length(segnale)/ 2) , S(j), '*' , 'Color' , 'r')
%        
%      
%      hold off
      
 end


durata_QRS = xS - xQ ;

end
