function  confronto_PDF(variabile_1, variabile_2,n_bins)

bin_edges = linspace(min([variabile_1 ; variabile_2 ]),max([variabile_1 ; variabile_2]), n_bins+1);

bin_centers = zeros(n_bins,1);
    
for idx = 1:n_bins
    bin_centers(idx) = (bin_edges(idx+1)+bin_edges(idx))/2;
end

figure
histogram(variabile_1 , bin_centers)
hold on
histogram(variabile_2 , bin_centers)
hold off

end

