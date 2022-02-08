function structOutput = structFunc(structInput)
    % input transfer
    a = structInput.a;
    b = structInput.b;
    c = structInput.c;
    
    % calculate
    mData = [a, b, c];
    xmean = mean(mData);
    xsum = sum(mData);
    xavg = xsum / numel(mData);
    structOutput.mean = xmean;
    structOutput.sum = xsum;
    structOutput.average = xavg;

end