//
//  DownloadView.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/28/20.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Image(systemName: "info.circle")
                    Text("Smart Download")
                    Text("ON")
                        .foregroundColor(.blue)
                }.padding()
                .font(.system(size: 18, weight: .bold))
                
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal,100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:75)
                }
                .frame(height:275)
                .padding(.top,75)
                
                
                VStack {
                    Text("Nerver be withouth Netflix")
                        .font(.title2)
                    Text("Download shows and movies so you'll never be without somthing to watch \n-- even when youre' off line ")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See what you can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                }
                
                Spacer()
            }.foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            DownloadView()
        }
    }
}
