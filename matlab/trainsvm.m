function svm = trainsvm(clusters, pts)

descs = [];
for i=1:length(pts)
    descs(i,:) = pts(i).descriptor';
end

group(:,1) = clusters.data.f(:,1) == 1;
size(group)
size(descs)
%svm = svmtrain(descs(1:200,:), group, 'showplot', true);
svm = svmtrain(descs, group, 'showplot', false);
end
