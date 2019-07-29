//
//  DetailsWorkerSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import UIKit

class DetailsWorkerSpy: DetailsWorker {

    var shouldFailFetchAlbumDetails = false

    var fetchAlbumDetailsCalled = false

    override func fetchAlbumDetails(media: Media, completion: @escaping (Bool, Album) -> Void) {
        fetchAlbumDetailsCalled = true

        if !shouldFailFetchAlbumDetails {
            // Success
            let album = [
                Media(
                    wrapperType: "wrapper type",
                    artistName: "artist",
                    collectionId: 1,
                    collectionName: "collection name",
                    kind: "kind",
                    trackId: 1,
                    trackName: "track 1",
                    trackNumber: 1,
                    artwork: "artwork",
                    previewUrl: nil
                ),
                Media(
                    wrapperType: "wrapper type",
                    artistName: "artist",
                    collectionId: 1,
                    collectionName: "collection name",
                    kind: "kind",
                    trackId: 1,
                    trackName: "track 1",
                    trackNumber: 1,
                    artwork: "artwork",
                    previewUrl: nil
                )
            ]

            completion(true, album)
        } else {
            // Failure
            completion(false, [])
        }
    }
}
