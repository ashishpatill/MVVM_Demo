//
//  DataModel.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/19/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import Foundation

// MARK: - Model Support

// MARK: - Model

struct Person {
  
  let firstName: String  // "Ashish" #
  let lastName: String  // common name
  let age: Int  // Age
  let city:  String  // Current location
  
}

// MARK: - Creating Model Data

let person1 = Person.init(firstName: "Ashish", lastName: "Pisey", age: 30 , city: "Mumbai")

let person2 = Person.init(firstName: "Akash", lastName: "Pisey", age: 24, city: "Pune")

let person3 = Person.init(firstName: "Pawan", lastName: "", age: 29, city: "Mumbai")

