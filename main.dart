import React, { useState, useEffect } from 'react';
import { View, Image, TouchableOpacity, Text, StyleSheet } from 'react-native';

const images = [
  'https://your-aws-bucket.s3.amazonaws.com/image1.jpg',
  'https://your-aws-bucket.s3.amazonaws.com/image2.jpg',
  'https://your-aws-bucket.s3.amazonaws.com/image3.jpg',
  'https://your-aws-bucket.s3.amazonaws.com/image4.jpg',
];

const ImageRotator = () => {
  const [index, setIndex] = useState(0);
  const [paused, setPaused] = useState(false);

  useEffect(() => {
    if (!paused) {
      const interval = setInterval(() => {
        setIndex((prevIndex) => (prevIndex + 1) % images.length);
      }, 10000);
      return () => clearInterval(interval);
    }
  }, [paused]);

  return (
    <View style={styles.container}>
      <View style={styles.frame}>
        <Image source={{ uri: images[index] }} style={styles.image} />
      </View>
      <TouchableOpacity style={styles.button} onPress={() => setPaused(!paused)}>
        <Text style={styles.buttonText}>{paused ? 'Resume' : 'Pause'}</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#f0f0f0',
  },
  frame: {
    borderWidth: 10,
    borderColor: '#8B4513', // Brown frame color
    padding: 10,
    borderRadius: 15,
  },
  image: {
    width: 300,
    height: 300,
    resizeMode: 'contain',
  },
  button: {
    marginTop: 20,
    padding: 10,
    backgroundColor: '#007AFF',
    borderRadius: 5,
  },
  buttonText: {
    color: 'white',
    fontSize: 16,
  },
});

export default ImageRotator;
