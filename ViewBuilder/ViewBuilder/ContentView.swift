//
//  ContentView.swift
//  ViewBuilder
//
//  Created by Aitor Iglesias Pubill on 9/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            Contenedor {
                Text("🥳🥳🥳")
            }
            
            
            kcButton {
                Button {
                    //todo
                } label: {
                    Text("HOLA BOTON")
                }
            }

            
        }
        .padding()
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
