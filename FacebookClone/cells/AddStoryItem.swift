//
//  AddStoryItem.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 21/08/21.
//

import SwiftUI

struct AddStoryItem: View {
    var body: some View {
        ZStack(alignment: .bottom){
            
        
        VStack{
            Image("human").resizable().frame(height: 160)
            Spacer().frame(height: -1.0)
            Image(systemName: "rectangle").resizable()
                .foregroundColor(.gray.opacity(0))
                .background(Color.gray.opacity(0.2))
            
        }.frame(width: 150, height: 250)
        .cornerRadius(25)
            
            VStack(){
                Image(systemName: "plus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(80)
                VStack{
                Text("   Create a   ")
                Text("Story")
                }.font(.system(size: 20))
            }.padding(.bottom, 20)
            
        }
    }
}

struct AddStoryItem_Previews: PreviewProvider {
    static var previews: some View {
        AddStoryItem()
    }
}
