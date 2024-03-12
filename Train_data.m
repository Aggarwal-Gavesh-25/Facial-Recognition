clc
clear all
close all
warning off

% Calling a pre-trained network
g=alexnet;

% Extracting the layers
layers=g.Layers;
layers(23)=fullyConnectedLayer(2);
layers(25)=classificationLayer;


allImages=imageDatastore('datastorage','IncludeSubfolders',true, 'LabelSource','foldernames');

% Training the data
opts=trainingOptions('sgdm','InitialLearnRate',0.001,'MaxEpochs',20,'MiniBatchSize',64);
myNet1=trainNetwork(allImages,layers,opts);
save myNet1;