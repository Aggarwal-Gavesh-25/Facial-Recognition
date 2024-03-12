clc
clear all
close all
warning off;

% Opening the webcam
cao=webcam;
faceDetector=vision.CascadeObjectDetector;

% Take 150 images
c=150;

% To keep track of total number of images taken
temp=0;


while true
    % Taking snapshot
    e=cao.snapshot;

    % Detecting the face part
    bboxes =step(faceDetector,e);

    % If face is detected
    if(sum(sum(bboxes))~=0)

    % Then also checking whether temp is in limit
    if(temp>=c)
        break;
    else
    % Cropping the detected image part
    es=imcrop(e,bboxes(1,:));

    % Resizing the image
    es=imresize(es,[227 227]);

    % Storing the image
    filename=strcat(num2str(temp),'.bmp');
    imwrite(es,filename);

    % Incrementing the count
    temp=temp+1;
    imshow(es);
    drawnow;
    end

    % If face is not detected then
    else
        % Simply showing the image
        imshow(e);
        drawnow;
    end
end