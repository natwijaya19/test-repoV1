function structOutput = structFunc(a, b, c)
    
    % calculate
    mData = [a, b, c];
    xmean = mean(mData);
    xsum = sum(mData);
    xavg = xsum / numel(mData);
    structOutput.mean = xmean;
    structOutput.sum = xsum;
    structOutput.average = xavg;
    structOutput.mfilename = mfilename;

end