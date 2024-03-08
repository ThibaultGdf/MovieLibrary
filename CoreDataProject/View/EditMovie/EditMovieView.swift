//
//  EditMovieView.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import SwiftUI

struct EditMovieView: View {
	
	@ObservedObject var viewModel: EditMovieViewModel
	
	var body: some View {
		List {
			Section("FILM") {
				TextField("Titre du film", text: $viewModel.movie.title)
			}
			
			Section("Informations") {
				Picker("Catégorie", selection: $viewModel.movie.category) {
					ForEach(CategoryType.allCases, id: \.self) {
						Text($0.rawValue.capitalized)
					}
				}
				DatePicker("Date de sortie",
						   selection: $viewModel.movie.releaseDate,
						   displayedComponents: [.date])
				.datePickerStyle(.compact)
			}
			
			Section("Réalisateur") {
				TextField("Prénom", text: $viewModel.director.firstname)
				TextField("Nom de famille", text: $viewModel.director.lastname)
				
				DatePicker("Date de naissance",
						   selection: $viewModel.director.birthday,
						   displayedComponents: [.date])
				.datePickerStyle(.compact)
			}
		}
	}
	
	init(movie: Movie, director: Director) {
		self.viewModel = EditMovieViewModel(movie: movie, director: director)
	}
	
}

//#Preview {
//	EditMovieView()
//}
