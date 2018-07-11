//
//  DetailVC-Extension+TableViewDatasource.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/20/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import Foundation

import UIKit

extension DetailViewController : UITableViewDataSource {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return peopleViewModel.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let tableViewCell:DetailTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! DetailTableViewCell
    
    // #1 - The ViewModel is the app's de facto data source.
    //tableViewCell?.imageView?.image = UIImage(named: people[indexPath.row].thumbnail)
    tableViewCell.fullName.text = peopleViewModel[indexPath.row].fullName
    tableViewCell.age.text = peopleViewModel[indexPath.row].age
    tableViewCell.city.text = peopleViewModel[indexPath.row].location
    
    return tableViewCell
  }
  
} // end extension ViewController : UITableViewDataSource
