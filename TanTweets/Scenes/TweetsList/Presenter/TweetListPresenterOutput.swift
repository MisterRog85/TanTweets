//
//  TweetListPresenterOutput.swift
//  TanTweets
//
//  Created by William Tomas on 26/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol TweetListPresenterOutput {
    func displayTweets(_ viewModel: [TweetListViewModelProtocol])
    func showLoading()
    func hideLoading()
}
