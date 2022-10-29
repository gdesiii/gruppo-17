function qrs_duration = mean_QRS(segnale) 

 Q=zeros (1, length(segnale));
 xQ=zeros (1, length(segnale));
 
 S=zeros (1, length(segnale));
 xS=zeros (1, length(segnale));
 

 for j=1:size(segnale,1) %mi da il numero di righe (length mi da il numero di colonne)
          
     %thr2=find_thr( - segnale ( j , :) , -5 );
     
     [Qj, xQj] = findpeaks ( - segnale ( j , 1: round( length(segnale)/ 2 )) , 'MinPeakHeight',  0   );
    
     Q(j)= -Qj(end);
     xQ(j)= xQj(end);
    
%      hold on
%      plot(xQj (end) , z(j), '*' , 'Color' , 'r')
       
     
     %thr2=find_thr(  segnale ( j , :) , -1 );
    
     [Sj, xSj] = findpeaks ( - segnale ( j ,  round ( length(segnale)/ 2 ): end )  );
     
     S(j)= -Sj(1);
     xS(j)= xSj(1)+round ( length(segnale)/ 2 );
     
%      hold on
%      plot(xSj (1) + length(segnale)/ 2 , w(j), '*' , 'Color' , 'b') 
     
%      hold off
      
end

qrs_duration= mean( xS - xQ )

end
