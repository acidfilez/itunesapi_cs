//
//  MediaPlayerDisplayLogicSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs

class MediaPlayerDisplayLogicSpy: MediaPlayerDisplayLogic {

    var closeMediaPlayerCalled = false

    func closeMediaPlayer(viewModel: MediaPlayer.CloseViewModel?) {
        closeMediaPlayerCalled = true
    }

    var showPlaybackStatusCalled = false

    func showPlaybackStatus(viewModel: MediaPlayer.PlayViewModel) {
        showPlaybackStatusCalled = true
    }
}
