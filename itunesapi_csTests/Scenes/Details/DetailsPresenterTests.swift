//
//  DetailsPresenterTests.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright (c) 2019 Alejandro Melo Domínguez. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import itunesapi_cs
import XCTest

class DetailsPresenterTests: XCTestCase {
    // MARK: Subject under test

    var sut: DetailsPresenter!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupDetailsPresenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupDetailsPresenter() {
        sut = DetailsPresenter()
    }

    // MARK: Tests
    func testPresentAlbumDetails() {
        // Given
        let album = [
            Media(
                wrapperType: "collection", // collection is used for grabbing album data
                artistName: "The artist name",
                collectionId: 1,
                collectionName: "The album name",
                kind: "kind",
                trackId: 1,
                trackName: "track 1",
                trackNumber: 1,
                artwork: "artwork",
                previewUrl: nil
            )
        ]
        let viewControllerSpy = DetailsDisplayLogicSpy()
        sut.viewController = viewControllerSpy
        let response = Details.Response(album: album)

        // When
        sut.presentAlbumDetails(response: response)

        // Then
        XCTAssertTrue(viewControllerSpy.displayDataForAlbumCalled)
    }

    func testPresentMediaPlayer() {
        // Given
        let media = Media(
            wrapperType: "track",
            artistName: "Various Artists",
            collectionId: 1,
            collectionName: "The Lion King",
            kind: "soundtrack",
            trackId: 1,
            trackName: "Circle of Life",
            trackNumber: 1,
            artwork: "https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/59/f2/cb/59f2cbb4-6800-2298-8de5-070caae3ec6a/00050086085873.rgb.jpg/100x100w.jpg",
            previewUrl: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/53/bc/1c/53bc1c62-87a6-b255-7888-62e00972b18e/mzaf_1500676314994411111.plus.aac.p.m4a"
        )
        let viewControllerSpy = DetailsDisplayLogicSpy()
        sut.viewController = viewControllerSpy
        let response = Details.MediaPlayerResponse(media: media)

        // When
        sut.presentMediaPlayer(response: response)

        // Then
        XCTAssertTrue(viewControllerSpy.routeToMediaPlayerCalled)
    }
}
