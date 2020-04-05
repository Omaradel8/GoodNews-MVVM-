//
//  ArticleModel.swift
//  goodnews
//
//  Created by Omar Adel on 4/5/20.
//  Copyright © 2020 z510. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    var articles: [Article]?
}

struct Article: Decodable {
    var title: String?
    var description: String?
}
