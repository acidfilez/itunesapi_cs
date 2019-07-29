//
//  SearchWorkerSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/27/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import XCTest

class SearchWorkerSpy: SearchWorker {
    var fetchMediaCalled = false

    override func fetchMedia(for term: String, page: Int, completion: @escaping ((Bool, [Media]) -> Void)) {
        fetchMediaCalled = true
        completion(true, [
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
        ])
    }
}

