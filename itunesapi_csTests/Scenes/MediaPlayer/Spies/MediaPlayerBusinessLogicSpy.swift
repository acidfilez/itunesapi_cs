//
//  MediaPlayerBusinessLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs

class MediaPlayerBusinessLogicSpy: MediaPlayerBusinessLogic {

    var playMediaCalled = false

    func playMedia(request: MediaPlayer.PlayRequest) {
        playMediaCalled = true
    }

    var loadedCalled = false

    func loaded() {
        loadedCalled = true
    }
}
