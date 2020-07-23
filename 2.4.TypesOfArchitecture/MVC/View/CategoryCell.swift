//
//  CategoryCell.swift
//  2.4.TypesOfArchitecture
//
//  Created by MaximRezvanov on 7/22/20.
//  Copyright © 2020 MaximRezvanov. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryNameLabel: UILabel!
    
    func configureCell(with category: Category){
        self.categoryNameLabel.text = category.name
    }
}
