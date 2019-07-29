//
//  SearchCoreDataWorkerSpy.swift
//  itunesapi_csTests
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

@testable import itunesapi_cs
import Foundation

class SearchCoreDataWorkerSpy: SearchCoreDataWorker {
    var saveLocalResultsCalled = false

    override func saveLocalResults(for term: String, medias: [Media]) {
        saveLocalResults(for: term, json: "[]")
    }

    override func saveLocalResults(for query: String, json: String) {
        saveLocalResultsCalled = true
    }

    var fetchLocalResultsCalled = false

    override func fetchLocalResults(for query: String) -> [Media] {
        fetchLocalResultsCalled = true
        return []
    }
}
