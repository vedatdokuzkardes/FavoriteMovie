//
//  ContentView.swift
//  FavoriteMovie
//
//  Created by Vedat Dokuzkardeş on 28.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        VStack { 
            
            NavigationView {
                
                List {
                    
                    ForEach(myFavorites) { favorite in
                        Section(header: Text(favorite.title)) {
                            ForEach(favorite.elements) { element in
                                
                                NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                    
                                    Text(element.name)
                                }
                            }
                        }
                    }
                    
                }.navigationBarTitle(Text("Favorite Book"))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
