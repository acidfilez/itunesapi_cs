//
//  DetailsPresentationLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class DetailsPresentationLogicSpy: DetailsPresentationLogic {

    var presentAlbumDetailsCalled = false

    func presentAlbumDetails(response: Details.Response) {
        presentAlbumDetailsCalled = true
    }

    var presentAlbumDetailsErrorMessageCalled = false

    func presentAlbumDetailsErrorMessage() {
        presentAlbumDetailsErrorMessageCalled = true
    }

    var presentMediaPlayerCalled = false

    func presentMediaPlayer(response: Details.MediaPlayerResponse) {
        presentMediaPlayerCalled = true
    }
}
