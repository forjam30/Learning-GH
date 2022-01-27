//
//  RecipeTabView.swift
//  The Recipe List App
//
//  Created by James Formosa on 25/01/2022.
//

import SwiftUI

struct RecipeTabView: View {
    @State var tabIndex = 0
    var body: some View {
        TabView(selection: $tabIndex){
            Text("Featured")
                .tabItem{
            VStack{
               Image(systemName: "star")
                Text("Featured")
                
            }
                }.tag(0)
            RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("Recipes")
                    }.tag(1)
        
        
        }
            
            
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
