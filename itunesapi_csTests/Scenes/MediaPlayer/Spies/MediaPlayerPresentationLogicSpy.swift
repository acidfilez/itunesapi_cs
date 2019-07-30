//
//  MediaPlayerPresentationLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs

class MediaPlayerPresentationLogicSpy: MediaPlayerPresentationLogic {

    var presentPlaybackStatusCalled = false

    func presentPlaybackStatus(response: MediaPlayer.PlayResponse) {
        presentPlaybackStatusCalled = true
    }
}
