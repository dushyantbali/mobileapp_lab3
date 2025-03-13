# mobileapp_lab3

For this code I took help from my friend Mandeep and the online sources.

This code works in the following way:
mobile application that functions like a digital picture frame, displaying images on a rotating cycle. The app will fetch and display at least four images, automatically changing them every 10 seconds. Additionally, it will include a pause/resume button to control the image rotation. The application will support both Android and iOS platforms.

Connect to AWS Cloud Storage

Store images in an S3 bucket.
Fetch image URLs dynamically using AWS SDK.
Create the UI (Digital Picture Frame)

Design a full-screen image viewer with a unique border.
Use Image (React Native) or Image.network() (Flutter) for best resolution.
Implement Image Rotation

Store image URLs in state.
Use setInterval() (React Native) or Timer.periodic() (Flutter) to change images every 10 seconds.
Add Pause/Resume Button

a button to toggle image rotation on/off.
Use a boolean state variable to control the interval.
Optimize for Performance

Preload images for smooth transitions.
Ensure a responsive layout for different screen sizes.
