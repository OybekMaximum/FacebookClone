//
//  RoomItems.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 19/08/21.
//

import SwiftUI

struct RoomItems: View {
    var isOnline = false
    var body: some View {
       // story
        ZStack(alignment: .bottomTrailing){
            Image("images").resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            
            if isOnline == true{
                ZStack{
                Image(systemName: "circle")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .background(Color.white)
                    .cornerRadius(40)
                
                    Image(systemName: "circle")
                        .frame(width: 14, height: 14)
                        .foregroundColor(.green)
                        .background(Color.green)
                        .cornerRadius(40)
            }
            }
         
            
        }
        
    }
}

struct RoomItems_Previews: PreviewProvider {
    static var previews: some View {
        RoomItems()
    }
}
