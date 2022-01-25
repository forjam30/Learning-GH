//
//  RecipeTabView.swift
//  The Recipe List App
//
//  Created by James Formosa on 25/01/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("Featured")
                .tabItem{
            VStack{
               Image(systemName: "star")
                Text("Featured")
                
            }
                }
            RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("Recipes")
                    }
        
        
        }
            
            
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
