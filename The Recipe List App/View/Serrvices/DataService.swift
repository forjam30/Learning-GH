//
//  DataService.swift
//  The Recipe List App
//
//  Created by James Formosa on 23/01/2022.
//

import Foundation

class DataService{
    
    func getLocalData() -> [Recipe]{
        
        //make a variable for the file name.
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //check if pathString is not nil, otherwise....returns an empty array.
        guard pathString != nil else {
            return [Recipe]()
            
        }
        //make a variable for the URL object, pathstring can be safely unwrapped because we've used guard to check it.
       
        let url = URL(fileURLWithPath: pathString!)
        
        //Use a do try catch to run a code and check for errors.
        
        do{
        let data = try Data(contentsOf: url)
            
        let decoder = JSONDecoder()
        
            do{
                //this code makes a variable for the Json data that is now decoded to the recipe array.
                let recipeData = try decoder.decode([Recipe].self, from:data)
                //this loop is only used to be able to assign items in the array to a list, using id's.
                for r in recipeData{
                    r.id = UUID()
                    
                }
               // this returns the json recipe data into the [Recipe] array if no problems occur.
                return recipeData
            }
            //catch will display which error happened (a nil error from the url, or a nil error from the decoding of json to array.
            catch{
                 print(error)
            }
        
        }
        catch{
        print(error)
        }
    //This return, is needed for the return type of the function, this is an empty array, if nothing else is exectued.
    return [Recipe]()
    }
}
    
    
    

