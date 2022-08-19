//
//  ContentView.swift
//  Drawing Fun
//
//  Created by Burak Şahin Erden on 18.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var multiplyer = 0.0
    @State var isShown =  false
    
    var body: some View {
        VStack {
            
            if isShown {
                Circle()
                    .frame(width: 150, height: 150, alignment: .center)
                    .transition(.scale)
            }
        
            Rectangle()
                .padding()
                .frame(width: 150, height: 150, alignment: .center)
                .rotationEffect(.degrees(10 * multiplyer))

            Button(action:{
                withAnimation(.linear(duration: 0.2)){
                    self.multiplyer += 1
                    self.isShown.toggle()
                    }
            })
            {
                Text("Rotate Me!")
            }
            .padding(.top)
            
        }
   
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
