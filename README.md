# MVVM Design Pattern
# Terminologies
Model:- An Entity to hold the data in simple basic data types
View/View Controller:- Presenting data to user.
View Model:-  It converts data into human readable format. It co-ordinates between data model and View to be presented. Any interaction in UI updates data model via View-Model. And any change in data is updated to UI via View-Model(Property observers).

# Basic Principles
1. View can only communicate with the view controller/View. Data is updated in View Controller/View via ViewModel. Any changes in data in the View by user is passed to the view controller/View via ViewModel.

2. The View/view controller does not communicate with data Model. View/ViewController can only communicate with data model via View Model.

Motivation :- Exploring MVVM Pattern to address Massive view controller. 

Features:- Reusable extensions to populate tableview.
                   Handles user input and Presents data via ViewModel.

Note:- This project doesn't intend to provide overview of data handling but to demonstrate interaction between DataModel-ViewModel-ViewController. For data model handling please check my repo:- https://github.com/ashishpatill/Codable-Demo
