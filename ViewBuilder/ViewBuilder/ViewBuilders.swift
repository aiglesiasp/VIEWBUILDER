//
//  ViewBuilders.swift
//  ViewBuilder
//
//  Created by Aitor Iglesias Pubill on 9/12/22.
//

import SwiftUI

//MARK: ESTRUCTURA CAJAS DE TEXTO
struct Contenedor <Content: View> : View {
    //parte que siempre se hace igual
    var content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding()
            .background(.green)
            .cornerRadius(10)
    }
}

//MARK: ESTRUCTURA DEL BOTON
struct kcButton <Content: View> : View {
    @Environment(\.colorScheme) var colorScheme
    
    //parte que siempre se hace igual
    var content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding()
            .frame(width: 300, height: 50)
            //.background( colorScheme == .dark ? Color.gray: Color.orange)
            .if(colorScheme == .dark, transform: { View in
                View
                    .background(.blue)
            })
            .if(colorScheme == .light, transform: { View in
                View
                    .background(.orange)
            })
            .foregroundColor(.white)
            .cornerRadius(30)
    }
}


extension View {
    @ViewBuilder
    func `if` <Content: View>(_ condicion: Bool, transform: (Self) -> Content) -> some View {
        if(condicion) {
            transform(self)
        } else {
            self
        }
    }
}

