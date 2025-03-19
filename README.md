Copyright Szabo Cristina-Andreea 2022-2023
# Neural Network Training and Optimization

## Overview

This project focuses on building, training, and optimizing a simple neural network using a set of custom functions written in MATLAB. The network is designed to be used with a dataset for classification tasks, where the goal is to predict class labels from a set of input features.

The project involves functions to load datasets, initialize weights, compute cost functions, and apply optimization techniques like Conjugate Gradient Descent. These components work together to train a neural network model and make predictions on new data.

## File Structure

- **cost_function.m**: Implements the cost function for the neural network, used to evaluate the difference between predicted and actual values during training. It also computes the gradients for optimization.
- **fmincg.m**: Implements the Conjugate Gradient method for optimizing the cost function, a key part of the model's training process.
- **initialize_weights.m**: Initializes the weights of the neural network, ensuring that the weights are in a reasonable range for training.
- **load_dataset.m**: Loads a dataset from a specified file, splits it into features (X) and labels (y).
- **predict_classes.m**: Uses the trained neural network to predict class labels for a set of test examples.
- **sigmoid.m**: A vectorized function that computes the sigmoid activation function, which is used in the network's neurons.
- **split_dataset.m**: Splits the loaded dataset into training and testing sets based on a given percentage.
- **task.m**: The entry point that sources all the necessary functions and prepares the neural network for training and evaluation.

## Problem Description

### Neural Network Training

The core objective of this project is to train a neural network using the following steps:

1. **Load Data**: The dataset is loaded and split into training and testing sets.
2. **Initialize Weights**: Random weights are initialized for the neural network.
3. **Cost Function**: The cost function calculates the loss based on the neural network's predictions and the actual labels.
4. **Optimization**: The `fmincg` function optimizes the weights by minimizing the cost function using Conjugate Gradient Descent.
5. **Predictions**: After training, the neural network can make predictions on new data using the trained weights.

### Key Concepts

- **Neural Network**: A machine learning model that is designed to simulate how the human brain processes information. It consists of layers of neurons where each layer transforms the input in some way and passes it to the next layer.
  
- **Sigmoid Activation Function**: The sigmoid function squashes input values into a range between 0 and 1, which is useful for classification tasks. It is used in each neuron in the network.

- **Cost Function**: The cost function evaluates the performance of the neural network. The goal during training is to minimize this function, which represents the difference between the model's predictions and the actual values.

- **Conjugate Gradient Optimization**: This optimization algorithm is used to minimize the cost function by iteratively adjusting the weights to reduce the error.

### Workflow

1. **Load Dataset**: 
   - The dataset is loaded using `load_dataset.m`, where the dataset is divided into input features (X) and corresponding labels (y).
  
2. **Split Dataset**:
   - The dataset is split into training and testing sets using `split_dataset.m`.

3. **Initialize Weights**:
   - The weights are initialized using `initialize_weights.m`. These weights are crucial for training the model.

4. **Train the Model**:
   - The neural network is trained by minimizing the cost function using `fmincg.m`, which optimizes the weights.

5. **Make Predictions**:
   - Once the network is trained, you can predict the classes of unseen data using `predict_classes.m`.
