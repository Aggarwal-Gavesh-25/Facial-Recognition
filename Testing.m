clc;close;clear

% Opening webcam
c=webcam;

% Loading the saved images
load myNet1;
faceDetector=vision.CascadeObjectDetector;

while true

    % Capturing snapshot
    e=c.snapshot;

    % Detecting face part
    bboxes =step(faceDetector,e);

    % If matched
    if(sum(sum(bboxes))~=0)

     % Cropping the face part
     es=imcrop(e,bboxes(1,:));

    % Resizing the face part
    es=imresize(es,[227 227]);

    % Giving label part as title
    label=classify(myNet1,es);
    image(e);
    title(char(label));
    drawnow;

    % If face not matched
    else
        image(e);
        title('No Face Detected');
    end
end