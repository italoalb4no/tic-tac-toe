//
//  ContentView.swift
//  tic-tac-toe
//
//  Created by Italo Albano on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var user0 = true
    
    var body: some View {
        ZStack{
            GeometryReader { geometry in
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: 0,
                            y: geometry.size.height / 3
                        )
                    )
                    path.addLine(
                        to: CGPoint(
                            x: geometry.size.width,
                            y: geometry.size.height / 3
                        )
                    )
                }
                .stroke(
                    Color.blue,
                    lineWidth: 20)
            }
            GeometryReader { geometry in
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: 0,
                            y: (geometry.size.height / 3) * 2
                        )
                    )
                    path.addLine(
                        to: CGPoint(
                            x: geometry.size.width,
                            y: (geometry.size.height / 3) * 2
                        )
                    )
                }
                .stroke(
                    Color.blue,
                    lineWidth: 20)
            }
            
            GeometryReader { geometry in
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: geometry.size.width / 3,
                            y : 0
                        )
                    )
                    path.addLine(
                        to: CGPoint(
                            x: geometry.size.width / 3,
                            y: geometry.size.height
                        )
                    )
                }
                .stroke(
                    Color.blue,
                    lineWidth: 20
                )
            }
            
            GeometryReader { geometry in
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: (geometry.size.width / 3) * 2,
                            y : 0
                        )
                    )
                    path.addLine(
                        to: CGPoint(
                            x: (geometry.size.width / 3) * 2,
                            y: geometry.size.height
                        )
                    )
                }
                .stroke(
                    Color.blue,
                    lineWidth: 20)
            }
            
            VStack {
                ForEach(0..<3) { _ in
                    row()
                }
            }
            
        }
        .padding()
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct row: View {
    var body: some View {
        HStack{
            TicView()
            TicView()
            TicView()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity)
    }
}
