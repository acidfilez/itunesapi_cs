//
//  SearchCoreDataWorker.swift
//  itunesapi_cs
//
//  Created by Alejandro Melo Domínguez on 7/29/19.
//  Copyright © 2019 Alejandro Melo Domínguez. All rights reserved.
//

import CoreData
import UIKit

class SearchCoreDataWorker {
    func saveLocalResults(for term: String, medias: [Media]) {
        do {
            let jsonData = try JSONEncoder().encode(medias)
            
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                fatalError("[COREDATA] ERROR: Invalid JSON for the medias collection.")
            }

            saveLocalResults(for: term, json: jsonString)
        } catch {
            print("[COREDATA] ERROR: \(error.localizedDescription)")
        }
    }

    func saveLocalResults(for query: String, json: String) {
        deleteLocalResults(for: query) // Eliminar resultados anteriores (mantenemos un solo registro con el string JSON para cada query)

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let entity = NSEntityDescription.entity(forEntityName: "Searches", in: context)
        let results = NSManagedObject(entity: entity!, insertInto: context)

        results.setValue(query, forKey: "query")
        results.setValue(json, forKey: "json")

        try? context.save()
    }

    func fetchLocalResults(for query: String) -> [Media] {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Searches")
        request.predicate = NSPredicate(format: "query = %@", query)
        request.returnsObjectsAsFaults = false

        var results: [Media] = []

        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                guard let json = data.value(forKey: "json") as? String else {
                    continue
                }

                do {
                    if let jsonData = json.data(using: .utf8) {
                        results = try JSONDecoder().decode([Media].self, from: jsonData)
                    }
                } catch {
                    continue
                }
            }
        } catch {}

        return results
    }

    private func deleteLocalResults(for query: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Searches")
        request.predicate = NSPredicate(format: "query = %@", query)

        do {
            let result = try context.fetch(request)
            for object in result {
                let obj = object as! NSManagedObject
                context.delete(obj)
            }

            try context.save()
        } catch {}
    }
}
