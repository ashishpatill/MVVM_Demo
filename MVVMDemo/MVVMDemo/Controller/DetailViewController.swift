//
//  DetailViewController.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/19/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  var viewModel:[PersonViewModel]!
  
  @IBOutlet weak var myTableView: UITableView!
  
  
  
  @IBAction func backAction(_ sender: UIButton) {
    performSegue(withIdentifier: "UnwindSegueToVC", sender: self)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

      // Do any additional setup after loading the view.
      self.myTableView.register(UINib.init(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
      // The UITableViewDataSource and
      // UITableViewDelegate protocols are
      // adopted in extensions.
      myTableView.delegate = self
      myTableView.dataSource = self
    }

    

}
