//
//  Walkthrough.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI
//import SwiftyGif


//walkthrough
struct WalkthroughScreen: View
{
    @State var h = 850.0
    @State var w = 400.0
    @AppStorage("currentPage") var currentPage = 1
    @State var pages: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
    var body: some View
    {
        ZStack {
            if currentPage==1 {
                
                GifImage("n1")
                    .frame(height: h)
                    .frame (width: w)
                  
            }
            else if currentPage==2 {
                GifImage("n2")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==3 {
                GifImage("n3")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==4 {
                GifImage("n4")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==5 {
                GifImage("n5")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==6 {
                GifImage("n6")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==7 {
                GifImage("n7")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==8 {
                GifImage("n8")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==9 {
                GifImage("n9")
                    .frame(height: h)
                    .frame (width: w)
            }
            else if currentPage==10 {
                GifImage("n10")
                    .frame(height: h)
                    .frame (width: w)
            }
            else {
                GifImage("n11")
                    .frame(height: h)
                    .frame (width: w)
            }
            
            VStack {
                Spacer(minLength:50)
                HStack {
                    Spacer(minLength:20)
                    Button(action: {
                        //withAnimation(.easeInOut) {
                            if currentPage > 1 {
                                currentPage -= 1
                            }
                            
                       // }
                    }, label:{
                        Image("back")
                            .resizable()
                                .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 5)
                            //.background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                    Spacer(minLength:350)
                }
                Spacer(minLength:650)
            }
            
            
        }
        .overlay(
            Button(action: {
                //withAnimation(.easeInOut) {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    else  {
                        currentPage = 1
                    }
            }, label: {
                HStack {
                    Spacer(minLength:350)
                    Image("forward")
                        .resizable()
                            .frame(width: 30.0, height: 30.0)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        //.background(Color.black.opacity(0.4))
                        .cornerRadius(10)
                        .background(Color.white)
                        .clipShape(Circle())
                        
                        .overlay(
                            ZStack{
                            Circle()
                                    .stroke(Color.black.opacity(0.04), lineWidth: 4)
                                    .padding(-15)
                            Circle()
                                    .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                    .stroke(Color.gray, lineWidth:4)
                                    .rotationEffect(.init(degrees:-90))
                                    .padding(-15)
                        })
                        .padding(-10)
                    Spacer(minLength:20)
                }
                
            })
                .padding(.bottom, 100)
                , alignment:.bottom
        )
    }
}
    
//total pages
var totalPages = 11

