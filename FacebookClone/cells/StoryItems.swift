//
//  StoryItems.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 20/08/21.
//

import SwiftUI

struct StoryItems: View {
    var body: some View {
        
        ZStack(alignment: .leading){
            Image("nature1").resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Image("images-4").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius:  30).stroke(Color.blue,lineWidth: 5))
                    .padding()
                Spacer()
                VStack{
                Text("Bruse").fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size:  17))
                Text("Wane").fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size:  17))
                }.padding()
            }
            
            
        }
        .frame(width: 150, height: 250)
        .cornerRadius(25)
        
    }
}

struct StoryItems_Previews: PreviewProvider {
    static var previews: some View {
        StoryItems()
    }
}
