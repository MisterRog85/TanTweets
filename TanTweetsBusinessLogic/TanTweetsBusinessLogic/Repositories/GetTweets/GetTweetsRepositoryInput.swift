//
//  GetTweetsRepositoryInput.swift
//  TanTweetsBusinessLogic
//
//  Created by William Tomas on 24/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol GetTweetsRepositoryInput {
    var output: GetTweetsRepositoryOutput? {get set}
    
    func getTweets()
}
