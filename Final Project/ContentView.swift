//
//  ContentView.swift
//  Final Project
//
//  Created by Priscilla Chen on 12/6/22.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Spacer()
                Spacer()
                Text("Discovery").font(.system(size: 35)).padding(.horizontal).foregroundColor(.white)
//                Image("front_page").resizable()
//
//                Image("restaurant").resizable().scaledToFit().padding()
                
                Image("card").resizable()
                
//                NavigationView {
//
//                }.navigationTitle("Shopping List")
            }
        }
        
        Image("option").resizable().scaledToFit().padding()
        
        Spacer()
        
        Image("main_menu").resizable().scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
