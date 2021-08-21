//
//  CreateRoomItems.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 21/08/21.
//

import SwiftUI

struct CreateRoomItems: View {
    var body: some View {
        
        ZStack{
//            Image(systemName: "capsule")
//                .resizable()
//                .frame(width: 150, height: 60)
//                .foregroundColor(.blue)
                
            HStack{
                Image(systemName: "video.badge.plus").resizable()
                    .frame(width:40, height: 20)
                    
            
                VStack{
                    Text("Create")
                    Text("Room")
                }
            }.padding(.trailing, 20).padding(.leading, 20).padding(.bottom,8).padding(.top ,8).overlay(RoundedRectangle(cornerRadius:  90).stroke(Color.blue,lineWidth: 3))
        }.padding(.leading, 5)
    }
}

struct CreateRoomItems_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomItems()
    }
}
