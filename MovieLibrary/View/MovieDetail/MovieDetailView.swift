//
//  MovieDetailView.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import SwiftUI

struct MovieDetailView: View {
	
	@ObservedObject var viewModel: MovieDetailViewModel
	
	var body: some View {
		List {
			Section("FILM") {
				Text(self.viewModel.movie.title)
			}
			Section("Informations") {
				LabeledContent {
					Text(self.viewModel.director.firstname + " " + self.viewModel.director.lastname)
				} label: {
					Text("Catégorie")
				}
				LabeledContent {
					Text(viewModel.director.birthday.toString(format: "dd/MM/yyyy"))
						.foregroundColor(.gray)
				} label: {
					Text("Date de sortie")
				}
			}
			
			Section("Réalisateur") {
				Text(viewModel.director.firstname + viewModel.director.lastname)
				LabeledContent {
					Text(viewModel.director.birthday.toString(format: "dd/MM/yyyy"))
				} label: {
					Text("Date de naissance")
				}
			}
		}
	}
	

	init(movie: Movie, director: Director) {
		self.viewModel = MovieDetailViewModel(movie: movie, director: director)
	}
}

//#Preview {
//	MovieDetailView()
//}
