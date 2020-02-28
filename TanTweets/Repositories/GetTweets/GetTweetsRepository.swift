//
//  GetTweetsRepository.swift
//  TanTweets
//
//  Created by William Tomas on 24/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation
import TanTweetsBusinessLogic

class GetTweetsRepository {
    weak var output: GetTweetsRepositoryOutput?
}

extension GetTweetsRepository: GetTweetsRepositoryInput {
    func getTweets() {
        
    }
}
    
