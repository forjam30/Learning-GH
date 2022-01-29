//
//  RecipeFeaturedView.swift
//  The Recipe List App
//
//  Created by James Formosa on 27/01/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model: RecipeModel
    var body: some View {
        
        
        
        VStack(spacing:0){
            Text("Featured Recipes").font(.largeTitle).fontWeight(.bold).padding(.top, 50.0)
        GeometryReader{ geo in
        TabView{
            ForEach(0..<model.recipes.count){ index in
            
                if model.recipes[index].featured == true {
                    
                    VStack{
            ZStack{
            Rectangle().foregroundColor(.white)
                VStack{
                Image(model.recipes[index].image)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .clipped()
                   
                   
                }
            
            
            }.frame(width: geo.size.width * 9 / 10, height: geo.size.height * 3 / 5, alignment: .center).cornerRadius(10).shadow(radius: 15)
                        Text(model.recipes[index].name).padding().font(.title)
                        VStack(alignment: .leading){
                            Text("Prep Time: ")
                                .font(.headline)
                                .padding(.bottom, 5.0)
                                
                            Text(model.recipes[index].prepTime).padding(.bottom, 5.0)
                        Text("Fucking tasty shit")
                        }
                        .padding(.trailing, 200.0)
            }
                }
            }
        }
        .padding(.top, -100.0)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
        }
        
    }
}


struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
