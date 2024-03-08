//
//  MoviesProvider.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation
import CoreData

final class MoviesProvider {
	
	static let shared = MoviesProvider()
	
	private let persistentContainer: NSPersistentContainer
	
	var viewContext: NSManagedObjectContext {
		persistentContainer.viewContext
	}
	
	var newContext: NSManagedObjectContext {
		persistentContainer.newBackgroundContext()
	}
	
	private init() {
		self.persistentContainer = NSPersistentContainer(name: "MoviesDataModel")
		self.persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
		self.persistentContainer.loadPersistentStores { _, error in
			if let error {
				fatalError("Unable to load store with error: \(error)")
			}
			
		}
	}
}
