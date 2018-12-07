//
//  FeedDetailPresenter.swift
//  empathy-ios
//
//  Created by Tak on 07/12/2018.
//  Copyright © 2018 tucan9389. All rights reserved.
//

import Foundation

protocol FeedDetailView {
    
}

class FeedDetailPresenter: BasePresenter {
    
    private var view: FeedDetailView?
    
    let service: EmpathyService?
    
    init(service: EmpathyService) {
        self.service = service
    }
    
    func attachView<T>(view: T) {
        self.view = view as? FeedDetailView
    }
    
    func detachView() {
        self.view = nil
    }
    
    func fetchDetailFeed(feedId: Int) {
        self.service?.fetchDetailFeed(feedId: feedId)
    }
    
}
