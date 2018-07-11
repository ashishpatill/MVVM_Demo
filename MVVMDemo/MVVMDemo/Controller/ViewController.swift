//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/19/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var txtFirstName: UITextField!
  @IBOutlet weak var txtLastName: UITextField!
  @IBOutlet weak var txtAge: UITextField!
  @IBOutlet weak var txtLocation: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "DetailSegue" {
      
      if let destinationViewController = segue.destination as? DetailViewController
      {
        // The ViewModel is the app's de facto data source.
        // The ViewModel data for the currently-selected table
        // view cell representing a Messier object is passed to
        // a detail view controller via a segue.
        destinationViewController.viewModel = peopleViewModel
      }
    }
    
  } // end func prepare

  @IBAction func btnSaveClicked(_ sender: UIButton) {
    let personDataModel:Person = Person.init(firstName: txtFirstName.text!, lastName: txtLastName.text!, age: Int(txtAge.text!)!, city: txtLocation.text!)
    let personViewModel = PersonViewModel.init(personDataModel: personDataModel)
    peopleViewModel.append(personViewModel)
    self.performSegue(withIdentifier: "DetailSegue", sender: self)
  }
  
  @IBAction func unwindToVC(_ sender: UIStoryboardSegue) {
    
  }
  
}

