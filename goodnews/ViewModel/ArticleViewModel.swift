//
//  ArticleViewModel.swift
//  goodnews
//
//  Created by Omar Adel on 4/5/20.
//  Copyright © 2020 z510. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    var articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String{
        return article.title ?? ""
    }
    
    var description: String{
        return article.description ?? ""
    }
}
