//
//  ViewModel.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/19/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import Foundation

// #1 - "Should I Stay or Should I Go"
// - The Clash
import UIKit

// MARK: - #2 Define a closure for updating a UIImageView
/**
 Define a closure TYPE for updating a UIImageView once an image downloads.
 - parameter imageData: raw NSData making up the image
 */
public typealias ImageDownloadCompletionClosure = (_ imageData: NSData ) -> Void

// creating demo model data
var peopleViewModel:[PersonViewModel] =  [PersonViewModel(personDataModel:person1),PersonViewModel(personDataModel:person2),PersonViewModel(personDataModel:person3)]

// MARK: - #4 - View Model

class PersonViewModel
{
  
  // #5 - I use some private properties solely for
  // preparing data for presentation in the UI.
  
  private let personDataModel: Person
  //private var imageURL: URL?
  
  init(personDataModel: Person)
  {
    self.personDataModel = personDataModel
    //self.imageURL = URL(string: "")!//Person.imageLink
  }
  
  public var fullName: String {
    return personDataModel.firstName + personDataModel.lastName
  }
  
  public var age: String {
    return "Age: \(personDataModel.age) yrs"
  }
  
  public var location: String {
    return "Location: \(personDataModel.city)"
  }
  
  // #6 - Data is made available for presentation only
  // through public getters. No direct access to Model.
  // Some getters prepare data for presentation.
  
  public var birthday: String {
    
    let dateFormatterPrint = DateFormatter()
    dateFormatterPrint.dateFormat = "dd-MM-yyyy"
    
    let nowDate = Date.init()
    
    guard let birthDate = Calendar.current.date(byAdding: .year, value: -personDataModel.age, to: nowDate) else {
      return "There was an error decoding the Date"
    }
    
    return "birthDate: " + dateFormatterPrint.string(from: birthDate)
    
  }
  
  // #7 - Debatable? Should this SOLELY live in the UI?
  // My opinion - it could go into an attributed string extension
  public var textDescription: NSAttributedString {
    let fontAttributes = [NSAttributedStringKey.font:  UIFont(name: "Georgia", size: 14.0)!, NSAttributedStringKey.foregroundColor: UIColor.blue]
    let markedUpDescription = NSAttributedString(string: self.fullName, attributes:fontAttributes)
    return markedUpDescription
  }
  
  // #8 - Controversial? Is passing a completion handler into the view
  // model problematic? Should I use KVO or delegation? All's I'm
  // doing is getting some NSData/Data.
//  func download(completionHanlder: @escaping ImageDownloadCompletionClosure)
//  {
//
//    let sessionConfig = URLSessionConfiguration.default
//    let session = URLSession(configuration: sessionConfig)
//    let request = URLRequest(url:imageURL)
//
//    let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
//
//      if let tempLocalUrl = tempLocalUrl, error == nil {
//        if let statusCode = (response as? HTTPURLResponse)?.statusCode {
//          let rawImageData = NSData(contentsOf: tempLocalUrl)
//          completionHanlder(rawImageData!)
//          print("Successfully downloaded. Status code: \(statusCode)")
//        }
//      } else {
//        print("Error took place while downloading a file. Error description: \(String(describing: error?.localizedDescription))")
//      }
//    } // end let task
//
//    task.resume()
//
//  } // end func download
  
} // end class MessierViewModel


