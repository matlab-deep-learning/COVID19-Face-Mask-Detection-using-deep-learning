function [bbox,score, label] = yolov2_detect(in, th)
persistent yolov2Obj;

if isempty(yolov2Obj)
    yolov2Obj = coder.loadDeepLearningNetwork('COVID19_Mask_yolo.mat');
end

[bbox, score, label] = yolov2Obj.detect(in,'Threshold',th);
%Copyright 2020 The MathWorks, Inc.

