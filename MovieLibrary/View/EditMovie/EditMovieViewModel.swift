//
//  EditMovieViewModel.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation
import CoreData

class EditMovieViewModel: ObservableObject { 
	
	private let repository = Repository(provider: .shared)
	
	private var context: NSManagedObjectContext
	
	@Published var movie: Movie
	@Published var director: Director
	
	@Published var selection: CategoryType = .action
	
	init(movie: Movie, director: Director) {
		self.context = MoviesProvider.shared.newContext
		self.movie = Movie(context: self.context)
		self.director = Director(context: self.context)
	}
	
	// MARK: Function (Edit)
	
	func editMovie() {
		self.repository.editMovie()
	}
	
}
