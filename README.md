## Real-Time Face Detection and Classification

The Real-Time Face Detection and Classification project is implemented in MATLAB to detect and classify faces in real-time using a webcam. It combines the power of pre-trained neural networks with face detection algorithms to achieve accurate and efficient face recognition.

It comprises three main components: data collection, training, and real-time testing, each contributing to the overall functionality of the system.

## Files
### [Data Collection](https://github.com/Aggarwal-Gavesh-25/Facial-Recognition/blob/main/Project.m) (`project.m`)
- Utilizes a webcam to capture live face images.
- Implements the Viola-Jones face detection algorithm to identify and crop faces from the captured images.
- Stores the cropped face images for training purposes.

### [Training](https://github.com/Aggarwal-Gavesh-25/Facial-Recognition/blob/main/Train_data.m) (`train_data.m`)
- Adapts the last layers of a pre-trained AlexNet model for face classification.
- Manages training data using an imageDatastore with labeled face images.

### [Real-Time Testing](https://github.com/Aggarwal-Gavesh-25/Facial-Recognition/blob/main/Testing.m) (`testing.m`)
- Captures snapshots from the webcam.
- Detects faces using the Viola-Jones face detection algorithm.
- Classifies detected faces using the trained neural network.
- Displays classification labels above the detected faces in real-time.

## Result

![1](https://github.com/Aggarwal-Gavesh-25/Facial-Recognition/assets/118240223/04e38608-2c34-48eb-bc3d-982e746604e9)

![2](https://github.com/Aggarwal-Gavesh-25/Facial-Recognition/assets/118240223/433f97b9-65e1-46c6-870b-290dbbb5c83d)
