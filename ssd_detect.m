function [bbox,score, label] = ssd_detect(in, th)
persistent ssdObj;

if isempty(ssdObj)
    ssdObj = coder.loadDeepLearningNetwork('COVID19_Mask_SSD.mat');
end

[bbox, score, label] = ssdObj.detect(in,'Threshold',th);
%Copyright 2020 The MathWorks, Inc.
