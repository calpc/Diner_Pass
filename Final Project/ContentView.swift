//
//  ContentView.swift
//  Final Project
//
//  Created by Priscilla Chen on 12/6/22.
//

import SwiftUI

struct ContentView: View {
   @State var friendsPage = false
   @State var profilePage = false
   @State var homePage = false

   var body: some View {
      ZStack {
         Image("Discover").resizable().scaledToFit().aspectRatio(contentMode: .fill)

      ZStack {
         Button("  ") {
            friendsPage.toggle()
            homePage = false
            profilePage = false
         }.offset(y: 410)
         Button("  ") {
            profilePage.toggle()
            friendsPage = false
            homePage = false
         }.offset(x: 150, y: 410)
         Button("  ") {
            homePage.toggle()
            friendsPage = false
            profilePage = false
         }.offset(x: -150, y: 410)
         if homePage {
            Image("Discover").resizable().scaledToFit().aspectRatio(contentMode: .fill).offset(y: -6)
            Button("  ") {
               friendsPage.toggle()
               homePage = false
               profilePage = false
            }.offset(y: 410)
            Button("  ") {
               profilePage.toggle()
               friendsPage = false
               homePage = false
            }.offset(x: 150, y: 410)
         }
         if friendsPage {
            Image("Friends List").resizable().scaledToFit().aspectRatio(contentMode: .fill).offset(y: -6)
            Button("  ") {
               homePage.toggle()
               friendsPage = false
               profilePage = false
            }.offset(x: -150, y: 410)
            Button("  ") {
               profilePage.toggle()
               friendsPage = false
               homePage = false
            }.offset(x: 150, y: 410)
         }
         if profilePage {
            Image("Profile").resizable().scaledToFit().aspectRatio(contentMode: .fill).offset(y: -6)
            Button("  ") {
               friendsPage.toggle()
               homePage = false
               profilePage = false
            }.offset(y: 410)
            Button("  ") {
               homePage.toggle()
               friendsPage = false
               profilePage = false
            }.offset(x: -150, y: 410)
         }
      }
   }
}
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
