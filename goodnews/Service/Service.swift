//
//  Service.swift
//  goodnews
//
//  Created by Omar Adel on 4/5/20.
//  Copyright © 2020 z510. All rights reserved.
//

import Foundation

class service {
    
    func getArticles(url: URL, completion: @escaping (ArticleList?) -> ()) {

        URLSession.shared.dataTask(with: url){data, response , error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                completion(articleList)
            }
        }.resume()
        
    }
}
