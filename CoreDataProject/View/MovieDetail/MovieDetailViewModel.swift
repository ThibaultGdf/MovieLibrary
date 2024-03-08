//
//  MovieDetailViewModel.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation

class MovieDetailViewModel: ObservableObject {
	
	@Published var movie: Movie
	@Published var director: Director
	
	private let repository = Repository(provider: .shared)
	
	init(movie: Movie, director: Director) {
		self.movie = movie
		self.director = director
	}
	
	// MARK: Functions (Delete/Edit)
	func deleteMovie() {
		self.repository.deleteMovie()
	}
}
