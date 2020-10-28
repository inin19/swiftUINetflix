//
//  ComingSoon.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/27/20.
//

import SwiftUI

struct ComingSoon: View {
    @State private var showNotificationList: Bool = false
    @State private var movieDetailToShow: Movie? = nil

    @State private var navBarHidden: Bool = true
    
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0


    @ObservedObject var vm = ComingSoonVM()
    
    
    func updateActiveIndex(fromScroll scroll: CGFloat)  {
        if scroll < 105 {
            activeIndex = 0
        }else {
            let remove105 = scroll - 105
            
            let active = Int(remove105 / 410) + 1
            activeIndex = Int(active)
        }
        
    }
    
    var body: some View {
        
        let movies = vm.movies.enumerated().map({$0 })
        
        let scrollTraickingBinding = Binding {
            return scrollOffset
        } set: { newVal in
            scrollOffset = newVal
            updateActiveIndex(fromScroll: newVal)
        }
        
//        NavigationView {
          return  Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTraickingBinding) {
                        VStack {
                            NotificationBar(showNotificationList: $showNotificationList)
                            
                            ForEach(Array(movies), id:\.offset) { index, movie in
                                ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height:400)
                                    .overlay(
                                        
                                        Group {
                                            index == activeIndex ? Color.clear: Color.black.opacity(0.8)

                                        }.animation(.easeInOut)
                                        
                                    )
                            }
                        }

                    }
                    .foregroundColor(.white)
                    
                    NavigationLink (
                        destination: Text("Notification List"),
                        isActive: $showNotificationList,
                        label: {
                            EmptyView()
                        })
                        .navigationTitle("")
                        .navigationBarHidden(navBarHidden) // work around weakest
                        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
                            self.navBarHidden = true
                        })
                        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: { _ in
                            self.navBarHidden = false
                        })

                    
                    
                }
                
                
            }
//        }
    }
}

struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            ComingSoon()
        }
    }
}
