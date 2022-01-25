//
//  RecipeModel.swift
//  The Recipe List App
//
//  Created by James Formosa on 23/01/2022.
//

import Foundation

class RecipeModel:ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init(){
    let service = DataService()
        //because service retrieves recipe data from json file, assign it to
        //recipes, the empty array of Recipe
        self.recipes = service.getLocalData()
        
    }
    
    
    
    
}
