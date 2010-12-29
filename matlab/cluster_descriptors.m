function o=cluster_descriptors(pts, num)

    data.X=[];
    for i=1:length(pts)
       data.X(i, :) = pts(i).descriptor';
    end

    data = clust_normalize(data, 'range');
    
    param.c = num;
    param.vis = 0;
    
    o = kmedoid(data, param);
    
end