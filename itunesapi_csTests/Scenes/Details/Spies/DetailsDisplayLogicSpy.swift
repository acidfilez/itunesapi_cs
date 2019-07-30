//
//  DetailsDisplayLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class DetailsDisplayLogicSpy: DetailsDisplayLogic {

    var displayDataForAlbumCalled = false

    func displayDataForAlbum(viewModel: Details.ViewModel) {
        displayDataForAlbumCalled = true
    }
    
}
