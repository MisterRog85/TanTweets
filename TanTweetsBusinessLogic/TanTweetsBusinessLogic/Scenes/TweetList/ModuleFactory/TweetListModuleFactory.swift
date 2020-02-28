//
//  TweetListModuleFactory.swift
//  TanTweetsBusinessLogic
//
//  Created by William Tomas on 24/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public class TweetListModuleFactory {
    init() {
        
    }
}

extension TweetListModuleFactory: TweetListModuleFactoryProtocol {
    public func makeInteractor(output: TweetListInteractorOutput, repository: GetTweetsRepositoryInput) -> TweetListInteractorInput {
        return TweetListInteractor(output: output, repository: repository)
    }  
}
