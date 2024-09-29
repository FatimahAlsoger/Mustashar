//
//  homescreen.swift
//  Mostshr
//
//  Created by Fatimah Alsoger on 23/01/1445 AH.
//
import SwiftUI

struct homescreen: View {
    var body: some View {
    VStack{
        Spacer(minLength: 100)
        Text("مرحبا")
       .font(.title)
       .foregroundColor(Color(hue: 0.725, saturation: 0.847, brightness: 0.192))
        
        //first text
        Text("في اي مجال تود الاستشاره")
        .font(.title)
        .foregroundColor(Color(hue: 0.725, saturation: 0.847, brightness: 0.192))
        Spacer(minLength: 0)

           HStack{
            ZStack{
TabView {
ContentView()
.tabItem {Image(systemName: "square.grid.3x3.middle.filled")
Text("Home")}
        
ContentView()
.tabItem {Image(systemName: "bubble.left.and.bubble.right")
Text("Home")}
    
ContentView()
.tabItem {Image(systemName: "calendar")
Text("Home")}
    
ContentView()
.tabItem {Image(systemName:"person")
Text("Home")} }//tab view ends

 //the other one

   ScrollView {
   VStack{
//loop to create the rows
   ForEach(0..<4) { index in ScrollView(.horizontal, showsIndicators: false, content: {
//Hstack to create the culmns
 HStack {
                ForEach(0..<3){
                index in RoundedRectangle(cornerRadius: 25.0).fill(Color.white)
                .frame(width: 90, height: 90)
                //to add borders to the Rounded Rectangles
                .overlay(RoundedRectangle(cornerRadius: 15)
                //add color to the borders
                .stroke(Color.blue, lineWidth:1))
                .shadow(radius: 10)
                .padding()
                                                
                                                
                                            } } } )} }
                                
                                
                                
                                
                } 
                
                
              }//zstack ends
        }//hstack end
      }//vstack ends
    }//view ends
}//view end











//to review the iphone
struct homescreen_Previews: PreviewProvider {
    static var previews: some View {
        homescreen()
    }
}

