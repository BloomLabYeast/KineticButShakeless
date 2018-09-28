imds = imageDatastore('StaggerVsNoStaggerImageSet','IncludeSubfolders',true,'LabelSource','foldernames');
labelCount = countEachLabel(imds);
[imdsTrainAndValidation,imdsTrain] = splitEachLabel(imds,70,'randomize');
[imdsTrain,imdsValidation] = splitEachLabel(imdsTrainAndValidation,50,'randomize');
img = readimage(imds,1);
imgsize = size(img);
layers = [
    imageInputLayer([imgsize(1) imgsize(1) 3])
    
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer];

options = trainingOptions('sgdm', ...
    'InitialLearnRate',0.01, ...
    'MaxEpochs',12, ...
    'Shuffle','every-epoch', ...
    'ValidationData',imdsValidation, ...
    'ValidationFrequency',30, ...
    'Verbose',true, ...
    'Plots','training-progress');

net = trainNetwork(imdsTrain,layers,options);