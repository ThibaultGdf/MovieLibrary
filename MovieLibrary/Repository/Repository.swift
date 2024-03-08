//
//  Repository.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation
import CoreData

struct Repository {
	
	private let context: NSManagedObjectContext

	init(provider: MoviesProvider) {
		self.context = provider.newContext
	}
	
	// MARK: - Functions
	func save() throws {
		if MoviesProvider.shared.viewContext.hasChanges {
			try MoviesProvider.shared.viewContext.save()
		}
	}
	
//	func fetchAllMovies() -> [Movie] {
//	
//	}
	
//	onetimepassword
	
	func addMovie() {
//		context
	}
	
	func editMovie() {
		
	}
	
	func deleteMovie() {
		
	}
}
