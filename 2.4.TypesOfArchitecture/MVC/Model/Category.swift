//
//  Category.swift
//  2.4.TypesOfArchitecture
//
//  Created by MaximRezvanov on 7/22/20.
//  Copyright © 2020 MaximRezvanov. All rights reserved.
//

import Foundation

struct Category {
    var name: String
    var sortOrder: Int?
    var image: String?
    var iconImage: String?
    var iconImageActive: String?


    init? (dict:[String: AnyObject]) {
       guard let name = dict["name"] as? String,
        let sortOrder = dict["sortOrder"] as? String,
        let image = dict["image"] as? String,
        let iconImage = dict["iconImage"] as? String,
        let iconImageActive = dict["iconImageActive"] as? String

        else { return nil }

        self.name = name
        self.sortOrder = Int(sortOrder) ?? 0
        self.image = image
        self.iconImage = iconImage
        self.iconImageActive = iconImageActive

    }
}

