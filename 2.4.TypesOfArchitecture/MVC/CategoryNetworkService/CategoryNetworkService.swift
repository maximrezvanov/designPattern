//
//  CategoryNetworkService.swift
//  2.4.TypesOfArchitecture
//
//  Created by MaximRezvanov on 7/22/20.
//  Copyright © 2020 MaximRezvanov. All rights reserved.
//

import Foundation

class CategoryNetworkService {
    
    private init() {}
    
    static func getCategory (completion: @escaping ([Category]) -> Void) {
        let url = URL(string: "https://blackstarshop.ru/index.php?route=api/v1/categories")!
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
                let jsonDict = json as? NSDictionary{
                var categories: [Category] = []
                for (_, data) in jsonDict where data is NSDictionary{
                    if let category = Category(dict: data as! [String: AnyObject])
                    {categories.append(category)}
                    
                }
                DispatchQueue.main.async {
                    completion(categories)
                }
            }
        }.resume()
        
        
    }
}

