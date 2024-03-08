//
//  CreateMovieView.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import SwiftUI

struct CreateMovieView: View {
	
	@State private var viewModel = CreateMovieViewModel()
	
	@State private var selection: CategoryType = .action
	
	@Environment(\.dismiss) var dismiss
	
    var body: some View {
		NavigationStack {
			List {
				Section("FILM") {
					//	movie.title
					TextField("Titre du film", text: $viewModel.title)
				}
				
				Section("Informations") {
					Picker("Catégorie", selection: $selection) {
						ForEach(CategoryType.allCases, id: \.self) {
							Text($0.rawValue.capitalized)
						}
					}
					DatePicker("Date de sortie",
							   selection: $viewModel.releaseDate,
							   displayedComponents: [.date])
					.datePickerStyle(.compact)
				}
				
				Section("Réalisateur") {
					// director.firstname + director.lastname
					TextField("Prénom", text: $viewModel.firstname)
					TextField("Nom de famille", text: $viewModel.lastname)
				
					
					DatePicker("Date de naissance",
							   selection: $viewModel.birthdayDirector,
							   displayedComponents: [.date])
					.datePickerStyle(.compact)
				}
			}
			.toolbar {
				ToolbarItem(placement: .cancellationAction) {
					Button {
						self.dismiss()
					} label: {
						Text("Fermer")
					}
				}
				
				ToolbarItem(placement: .principal) {
					Text("Ajouter un film")
				}
				
				ToolbarItem(placement: .confirmationAction) {
					Button {
							// Sauvegarder la tâche
							self.dismiss()
					} label: {
						Text("Publier")
					}
				}
			}
		}
    }
}

#Preview {
    CreateMovieView()
}
