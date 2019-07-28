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
    }
}

