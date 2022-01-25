//
//  ContentView.swift
//  The Recipe List App
//
//  Created by James Formosa on 23/01/2022.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
        NavigationView{
            VStack{
                
                List(model.recipes){ r in
                    NavigationLink(destination: RecipeDetailView(recipe: r), label:{
                    HStack(spacing:20){
                    Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                        Text(r.name)
                    }.navigationTitle("Recipes")
                    })
            
        }
            }
        }
            
            
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
