//
//  ContentView.swift
//  FacebookClone
//
//  Created by Oybek To’laboyev on 19/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                // live , photo, room
                VStack{
                    
                    HStack{
                        Image("person1").resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What's on your mind").font(.system(size: 17))
                    }.frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    // Line
                    HStack{}.frame(height: 1)
                    .frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    
                    HStack{
                        HStack{
                            Image(systemName: "camera.aperture")
                            Text("Live")
                        }
                        Spacer()
                        HStack{}.frame(width: 2, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.gray.opacity(0.3))
                        Spacer()
                        HStack{
                            Image(systemName: "photo")
                            Text("Photo")
                        }
                        Spacer()
                        HStack{}.frame(width: 2, height: 35)
                            .background(Color.gray.opacity(0.3))
                        Spacer()
                        HStack{
                            Image(systemName: "camera")
                            Text("Room")
                        }
                    }.padding().frame(height: 50)
  
                }
                
                // Create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                CreateRoomItems()
                                RoomItems(isOnline: false)
                                RoomItems(isOnline: true)
                                RoomItems(isOnline: false)
                                RoomItems(isOnline: false)
                                RoomItems(isOnline: true)
                                RoomItems(isOnline: true)
                                RoomItems(isOnline: false)
                                RoomItems(isOnline: true)
                                RoomItems(isOnline: true)
                            }
                    
                        }
                        }.frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 10)
                        
                    
            }
                
                // Create Story
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                            AddStoryItem()
                            StoryItems()
                            StoryItems()
                            StoryItems()
                            StoryItems()
                            StoryItems()
                            StoryItems()
                            StoryItems()
                            }
                            
                        }
                    }
                .padding(.leading , 10)
                .padding(.top , 10)
                .padding(.bottom , 10)
                }
                
                // Post items 
                
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    PostItems2(img_ur1: "nature")
                    PostItems(img_ur1: "nature1")
                    PostItems(img_ur1: "nature2")
                    PostItems(img_ur1: "nature")
                    
                }
        }
        // NAVIGATION ITEMS
            .navigationBarItems(
                leading: Text("Facebook").foregroundColor(.blue).fontWeight(.bold).font(.system(size: 25)),
                trailing:HStack{
                ZStack{
                    
                    Image(systemName: "circle").font(.system(size: 35)).foregroundColor(.gray.opacity(0.0)).background(Color.gray.opacity(0.3)).cornerRadius(25)
                    Image(systemName: "magnifyingglass")

                }
                ZStack{
                    Image(systemName: "circle").font(.system(size: 35)).foregroundColor(.gray.opacity(0.0)).background(Color.gray.opacity(0.3)).cornerRadius(25)
                Image(systemName: "bolt.circle.fill")
                }
            })
            .navigationBarTitle("", displayMode: .inline)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
