//
//  File.swift
//  The Recipe List App
//
//  Created by James Formosa on 23/01/2022.
//

import Foundation

class Recipe: Identifiable, Decodable{
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
    
    
    
}
