//
//  ContentView.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    
    var body: some View {
        
       
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            
            ComingSoon()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Coming Soon")
                }.tag(2)
            
            DownloadView()
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Download")

                }.tag(3)
            
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                }.tag(4)
        }.accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
