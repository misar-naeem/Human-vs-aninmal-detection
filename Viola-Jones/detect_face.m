faceDetector=vision.CascadeObjectDetector('FrontalFaceCART'); %Create a detector object

img=imread('yet.png'); 
img=rgb2gray(img); 

BB=step(faceDetector,img); 

iimg = insertObjectAnnotation(img, 'rectangle', BB, 'This is a face'); %Outline for face detection.

figure(1);
imshow(iimg); 
title('Detected face');

   
