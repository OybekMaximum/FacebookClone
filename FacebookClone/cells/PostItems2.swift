//
//  PostItems2.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 21/08/21.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
struct PostItems2: View {
    var img_ur1 = "nature"
    var body: some View {
        
        VStack(alignment: .leading){
            //Header
            HStack(alignment: .top){
                ZStack(alignment: .bottomTrailing){
                    Image("nature2").resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    
                    ZStack{
                        Circle().frame(width: 22, height: 22)
                            .foregroundColor(.white)
                        Circle().frame(width: 16, height: 16)
                            .foregroundColor(.green)
                    }
                }
//                VStack(alignment: .leading, spacing: 5){
//                    Text("Bruse").fontWeight(.bold)
//                    HStack{
//                        Text("18m")
//                        Image(systemName: "network").resizable()
//                            .frame(width: 20, height: 20)
//                    }
//                }
                
                VStack(alignment: .leading){
                    Text("IT Park ").fontWeight(.bold)
                    
                    HStack{
                    Text("1d •")
                        Image(systemName: "network")
                    }.padding(.top,1)
                    
                       
                } .font(.system(size: 14)).lineLimit(3)
                Spacer()
                Image(systemName: "ellipsis")
                
            }.padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.top, 10).padding(.bottom, 35)
            VStack(alignment: .leading){
                Text("⁉️ IT sohasida frilansermisiz?").padding(.leading,10)
                HStack{
                    Text("Unda oxirg...").padding(.leading, 10)
                        
                Text("See more...").opacity(0.7)
                }.padding(.top,20).padding(.bottom, 15)
                
            }
            
            // image
            HStack{
                Image(img_ur1).resizable()
                    .frame(width: UIScreen.screenWidth/2, height: UIScreen.screenWidth/2)
                Spacer()
                    
                    
                Image(img_ur1).resizable()
                    .frame(width: UIScreen.screenWidth/2, height: UIScreen.screenWidth/2)
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth/2)
            
            // Like, love, counts for comment and share
            HStack(){
                HStack(spacing: 2){
                    ZStack{
                    Image(systemName: "circle").background(Color.blue)
                        .overlay(RoundedRectangle(cornerRadius:  30).stroke(Color.blue,lineWidth: 12))
                        Image(systemName: "hand.thumbsup")
                    }
//                    ZStack{
//                    Image(systemName: "circle").background(Color.red)
//                        .overlay(RoundedRectangle(cornerRadius:  30).stroke(Color.red,lineWidth: 12))
////
//}
                    
                }
                Text("4.8k")
                Spacer()
//                Text("63.2 Comments")
                Text("84.6 Shares")
            }.font(.system(size: 14)).padding(.trailing,10).padding(.leading,10)
            .padding(.top,6).padding(.bottom,6)
            
            HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.5)).padding(.top,5)
            
            HStack{
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image(systemName: "text.bubble")
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
            }.frame(height: 40).padding(.top, 5).padding(.leading,20).padding(.trailing,20)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.5))
        }
        
        
        
    }
}

struct PostItems2_Previews: PreviewProvider {
    static var previews: some View {
        PostItems2()
    }
}
