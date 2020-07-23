//
//  ViewController.swift
//  2.4.TypesOfArchitecture
//
//  Created by MaximRezvanov on 7/22/20.
//  Copyright © 2020 MaximRezvanov. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var categories: [Category] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CategoryNetworkService.getCategory { categories in
            self.categories = categories
            self.tableView.reloadData()
        }
        
    }
    
}

extension CategoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as! CategoryCell
        let category = categories[indexPath.row]
        cell.configureCell(with: category)
        return cell
    }
    
    
}
