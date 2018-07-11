//
//  DetailVC-Extension+TableViewDelegate.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/20/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import Foundation

import UIKit

// MARK: - UITableView Data Source

// MARK: - UITableView Delegate

extension DetailViewController : UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
