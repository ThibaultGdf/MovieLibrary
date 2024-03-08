//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import SwiftUI

struct MovieView: View {
	
	@State private var isPresented = false
	
	@StateObject var viewModel = MovieViewModel()
	
    var body: some View {
		NavigationStack {
			List {
				
//				self.viewModel.getMovies()
				ForEach((0...10), id: \.self) { item in
//					MARK: ToDo
//					NavigationLink(destination: MovieDetailView()) {
//						MovieTile()
//					}
				}
			}
			.toolbar {
				ToolbarItem(placement: .topBarTrailing) {
					Button {
						self.isPresented.toggle()
					} label: {
						Image(systemName: "plus")
					}
					.sheet(isPresented: $isPresented) {
						CreateMovieView()
					}
				}
			}
		}
    }
}

#Preview {
    MovieView()
}
