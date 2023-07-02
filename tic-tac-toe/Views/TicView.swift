//
//  TicView.swift
//  tic-tac-toe
//
//  Created by Italo Albano on 10/06/23.
//

import SwiftUI

struct TicView: View {
    @State private var icon = 0
    
    var body: some View {
        HStack{
            Spacer(minLength: 15)
            
            VStack {
                Spacer()
                
                GeometryReader { geometry in
                    if(icon == 1){
                        Image(systemName: "cross")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                    } else if(icon == 2){
                        Image(systemName: "circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                    }else{
                        Color.clear
                            .contentShape(Rectangle())
                            .aspectRatio(contentMode: .fit)
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                    }
                }
                Spacer()
            }
            .onTapGesture {
                print("Show details for user")
            }
            Spacer(minLength: 15)
        }
    }
}

func show() -> Void {
    
}

struct TicView_Previews: PreviewProvider {
    static var previews: some View {
        TicView()
    }
}
