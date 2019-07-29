//
//  SearchDisplayLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchDisplayLogicSpy: SearchDisplayLogic {
    var displayResultsCalled = false

    func displayResults(viewModel: Search.ViewModel) {
        displayResultsCalled = true
    }

    var displayNoResultsCalled = false

    func displayNoResults() {
        displayNoResultsCalled = true
    }
}
