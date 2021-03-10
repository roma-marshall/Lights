//
//  ContentView.swift
//  ColorChanger
//
//  Created by Roma Marshall on 10.03.21.
//

import SwiftUI

struct ContentView: View {
    @State var color1: Color = Color.white
    @State var color2: Color = Color.blue
    @State var color3: Color = Color.white
    @State var color4: Color = Color.gray
    
    @State var position1: Double = 1
    @State var position2: Double = 2
    
    var body: some View {
        
        ZStack {
            color3
                .animation(.easeIn)
            
            Button(action: {
                self.color3 = .white
                self.color2 = .blue
                self.color1 = .white
                self.position1 = 1
                self.position2 = 2
                
            }) {
                Image(systemName: "lightbulb")
                    .font(.system(size: 60))
                    .foregroundColor(color1)
            }
            .animation(.spring())
            .zIndex(position1)
            
            Button(action: {
                self.color3 = .gray
                self.color2 = .gray
                self.color1 = .yellow
                self.position1 = 2
                self.position2 = 1
                
            }) {
                Image(systemName: "lightbulb.slash")
                    .font(.system(size: 60))
                    .foregroundColor(color2)
            }
            .animation(.spring())
            .zIndex(position2)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
