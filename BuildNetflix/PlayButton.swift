//
//  WhiteButton.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/22/20.
//

import SwiftUI

struct PlayButton: View {
    
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)

                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
//                    .frame(height:30)
                
                Spacer()

            }
            .background(backgroundColor)
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black: .white )
            .cornerRadius(3.0)
            
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}
