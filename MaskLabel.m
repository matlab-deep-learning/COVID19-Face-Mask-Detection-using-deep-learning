function [labelCord, label] = MaskLabel(I, ~)
ori_sz = size(I, [1 2]);
re_sz = [448 448];
img = imresize(I, re_sz);
scale = ori_sz./re_sz;

bbox = predictFace(img, 'net_face_yolo.mat');
bbox(:,4) = bbox(:,4)./2+20;
bbox(:,2) = bbox(:,2)+bbox(:,4)-20;
bbox(:,3) = bbox(:,3)+10;
labelCord = bboxresize(round(bbox),scale);
label = 'Mask';
% Copyright 2020 The MathWorks, Inc.

