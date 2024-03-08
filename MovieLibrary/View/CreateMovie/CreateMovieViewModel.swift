//
//  CreateMovieViewModel.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation

class CreateMovieViewModel: ObservableObject {
	
	@Published var title = ""
	@Published var firstname = ""
	@Published var lastname = ""
	@Published var releaseDate = Date.now
	@Published var birthdayDirector = Date.now
	
	private let repository = Repository(provider: .shared)

	// MARK: Function (Add)
	
	func addMovie() {
		self.repository.addMovie()
	}
}
