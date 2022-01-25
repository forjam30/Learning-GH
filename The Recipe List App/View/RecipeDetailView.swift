//
//  RecipeDetailView.swift
//  The Recipe List App
//
//  Created by James Formosa on 24/01/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
                    
        NavigationView{
                    ScrollView{
                    
                    Image(recipe.image).resizable()
                        .scaledToFill()
                    VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 30)
                    
                    ForEach(recipe.ingredients, id: \.self){ r in
                        Text("- " + r)
                        
                    }
                    
                
                        Text("Directions").font(.headline)
                            .padding(.vertical, 30.0)
                        
                        ForEach(0..<recipe.directions.count, id: \.self){index in
                            Text(String(index+1) + ". " + recipe.directions[index]).padding(.bottom)
                            
                            
                        }
                    }.padding(.horizontal, 30.0)
                    
        }.navigationTitle(recipe.name)
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
        
            }
}
