//
//  TweetListInteractor.swift
//  TanTweetsBusinessLogic
//
//  Created by William Tomas on 24/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

class TweetListInteractor {
    var output: TweetListInteractorOutput
    var repository: GetTweetsRepositoryInput
    
    init(output: TweetListInteractorOutput, repository: GetTweetsRepositoryInput) {
        self.output = output
        self.repository = repository
        
        self.repository.output = self
    }
}

extension TweetListInteractor: TweetListInteractorInput {
    func retrieveTweets() {
        output.startLoading()
        repository.getTweets()
    }
    
    
}

extension TweetListInteractor: GetTweetsRepositoryOutput {
    func getTweetsDidRetrieve(_ tweets: GetTweetsRepositoryItemProtocol) {
        var tmpTweet: TweetListTweetsItemProtocol
        if let item = tweets.tweet {
                tmpTweet = TweetListTweetsItem(tweet: item)
                self.output.setTweets(tmpTweet)
            } else {
                self.output.setPlaceHolder()
            }
            
            self.output.stopLoading()
        }
    }

