//
//  DetailsWorker.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright (c) 2019 Alejandro Melo Domínguez. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class DetailsWorker {
    func fetchAlbumDetails(media: Media, completion: @escaping (_ success: Bool, _ album: Album) -> Void) {
        guard let queryURL = detailsURL(for: media) else {
            completion(false, [])
            return
        }

        ApiClient.get(queryURL.absoluteString, success: { response in
            do {
                let searchNode = try JSONDecoder().decode(AlbumNode.self, from: response)
                completion(true, searchNode.results)
            } catch {
                completion(false, Album())
            }
        }) { error in
            completion(false, Album())
        }
    }
}

extension DetailsWorker {
    func detailsURL(for item: Media) -> URL? {
        guard let collectionId = item.collectionId else {
            return nil
        }

        var urlComponents = URLComponents(url: Constants.API.detailsURL, resolvingAgainstBaseURL: true)!
        let queryId = URLQueryItem(name: "id", value: String(collectionId))

        guard var queryItems = urlComponents.queryItems else {
            urlComponents.queryItems = [queryId]
            return urlComponents.url!
        }

        queryItems.append(queryId)
        urlComponents.queryItems = queryItems

        return urlComponents.url!
    }
}

// MARK: - Response Models (Encodable)
extension DetailsWorker {
    struct AlbumNode: Decodable {
        enum CodingKeys: String, CodingKey { case results }
        let results: [Media]
    }
}
