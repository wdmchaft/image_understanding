function o=cluster_descriptors(pts, labels, num_clusters)

    data.X=[];
    for i=1:length(pts)
       if labels(i) > 0
           data.X(i, :) = pts(i).descriptor';
       end
    end

    data = clust_normalize(data, 'range');
    
    param.c = num_clusters;
    param.vis = 0;
    
    o = kmedoid(data, param);
    
end