//
//  Walkthrough.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//
/*
import Foundation
import SwiftUI


//walkthrough
struct WalkthroughScreen2: View
{
    @AppStorage("currentPage") var currentPage = 1
    var body: some View
    {
        ZStack
        {
           
            if currentPage == 1 {
                VStack {
                    GifImage("wai2")
                        .frame(height: 1792)
                        .frame (width: 828)
                    /**
                    Spacer(minLength:50)
                    Text("WAI")
                       // .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.orange)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                        .font(.system(size: 70))
                    Spacer(minLength:20)
                    
                    Text("Wildfire Awareness Initiative")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                    
                    GifImage("fire3")
                    
                    Text("Prepare for the next wildfire!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.yellow)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                        //.scaledToFit()
                    Spacer(minLength:80)
                     */
                }
            }
            
            else if currentPage == 2 {
                /*ScreenView(gif: "increase", image: "image2", title:["million acres of land is burned", "billion spent on restoration costs"], topic: [" 5 ", " $2.5 "], bgColor: Color.white, other: " IN THE US PER YEAR ", which: true)
                    .transition(.scale)
                 */
                GifImage("wai3")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 3 {
               /* ScreenView(gif: "up", image: "image3", title:["percent of wildfires are human-caused"], topic: [" 70 "], bgColor: Color.white, other: "mainly irresponsible debri-burning, equipment use, and vehicle use ", which: false)
                    .transition(.scale)
                */
                GifImage("wai4")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 4 {
                /*ScreenView(gif: "wildlife",image: "image4", title: ["People on average have died froom wildfires per year", "percent increase of extinction for wildlife"], topic: [" 30 ", " 50 "], bgColor: Color.white, other: " Animals lose their habitats, and humans face polluted water and air and a declining health and economy ", which: true)
                    .transition(.scale)
                 */
                GifImage("wai5")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 5 {
                /*ScreenView(gif: "up",image: "image5", title:["percent increase by 2050", "percent increase by 2100"], topic: [" 33 ", " 52 "], bgColor: Color.white, other: " likelihood of catastrophic and severe wildfires across the world.", which: false)
                    .transition(.scale)
                 */
                GifImage("wai6")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            else if currentPage == 6 {
                VStack {
                    
                    Spacer(minLength:20)
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
                    /*Spacer(minLength:70)
                    Text("How can we prepare?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(/*@START_MENU_TOKEN@*/.highlight/*@END_MENU_TOKEN@*/)
                    
                    Text("It only  takes 5 minutes!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                    
                    GifImage("fire3")
                        //.scaledToFit()
                    //Spacer(minLength:80)
                     */
                    GifImage("prepare")
                        .frame(height: 940)
                        .frame (width: 460)
                }
            }
            
            else if currentPage == 7 {
                /*ScreenView(gif: "garden",image: "image6", title:["feet of your house"], topic: [" 30 "], bgColor: Color.white, other: "remove all dead brush, twigs, dead grass, and flammable materials", which: true)
                    .transition(.scale)
                 */
                GifImage("wai7")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 8 {
                /*ScreenView(gif: "kit",image: "image7", title:["emergency backpacks "], topic: [" 2 "], bgColor: Color.white, other: " Prepare one for your house and one for your car. See ready.gov for a full list", which: true)
                    .transition(.scale)
                 */
                GifImage("wai8")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 9 {
                /*ScreenView(gif: "phone",image: "image8", title:["friends or family contacts for emergencies"], topic: [" 3 "], bgColor: Color.white, other: " outside of your direct community known by everyone in your family", which: true)
                    .transition(.scale)
                 */
                GifImage("wai8")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 10 {
                /*ScreenView(gif: "alert",image: "image9", title:["alert apps and resources "], topic: [" 3 "], bgColor: Color.white, other: " Check the local radio, AmberAlerts, and SCCAlert for wildfire alerts in Santa Clara County", which: true)
                    .transition(.scale)
                 */
                GifImage("wai9")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            
            else if currentPage == 11 {
                /*ScreenView(gif: "firefighter",image: "image10", title:["helpful resources"], topic: [" 2 "], bgColor: Color.white, other: " Listen to your local fire department and check calfire.org for updates on nearby wildfires in your area", which: true)
                    .transition(.scale)
                 */
                GifImage("wai10")
                    .frame(height: 940)
                    .frame (width: 460)
            }
            else if currentPage == 12
            {
                VStack {
                    
                    Spacer(minLength:20)
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
                    /*Spacer(minLength:70)
                    Text("Time to Prepare!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(/*@START_MENU_TOKEN@*/.highlight/*@END_MENU_TOKEN@*/)
                    Spacer(minLength:20)
                    Text("Check out each page to prepare")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                    
                    Spacer(minLength:30)
                    HStack {
                        Spacer(minLength:20)
                        GifImage("kit2")
                        Spacer(minLength:20)
                    }
                     */
                    GifImage("wai11")
                        .frame(height: 940)
                        .frame (width: 460)
                }
            }
            else
            {
                VStack {
                    
                    Spacer(minLength:70)
                    
                    HStack {
                        Spacer(minLength:30)
                        Text("5 Easy Steps")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding([.top, .leading, .bottom, .trailing])
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.highlight)
                        Spacer(minLength:30)
                    }
                    Spacer(minLength:30)
                    Text("Learn how to prepare for future wildfires!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading, .bottom, .trailing])
                        .background(Color.red)
                        .cornerRadius(4.0)
                        .hoverEffect(.highlight)
                    
                    GifImage("fire3")
                        //.scaledToFit()
                    //Spacer(minLength:80)
                }
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
                    
               // }
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
                        .background(Color.orange)
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
    
//screen for walkthrough
struct ScreenView: View
{
    var gif: String
    var image: String
    var title: [String]
    var topic: [String]
    var bgColor: Color
    var other: String
    var which: Bool
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack (spacing: 0)
        {
            Spacer()
            Spacer()
            HStack {
                    
                if currentPage != 1 {
                    //back button
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
                }
                
                Spacer()
                
                Button(action:{
                    if (currentPage < 6) {
                        currentPage = 6
                    } else {
                        currentPage = 12
                    }
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                })
            }
            .foregroundColor(.black)
            .padding()
            
            ForEach(0..<(topic.count), id: \.self) { i in
                Display(title: topic[i], text: title[i], gif: gif, i: i)
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: i)
                    
                Spacer(minLength:20)
                    
            }
            
            //Spacer()
            HStack {
                Spacer(minLength:20)
                Text(other)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .background(Color.orange)
                    .cornerRadius(4.0)
                    .hoverEffect(/*@START_MENU_TOKEN@*/.highlight/*@END_MENU_TOKEN@*/)
                    .frame(width: 380.0)
                Spacer(minLength:20)
                    
            }
            Spacer(minLength:30)
            
            if which
            {
                Spacer(minLength:20)
                GifImage(gif)
                    .scaledToFit()
                Spacer(minLength:20)
            }
            else
            {
                Image(image)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                
            }
            Spacer(minLength:90)
        }
        

    }
}

struct Display:  View
{
    let title: String
    let text: String
    let gif: String
    let i: Int
    
    var body: some View
    {
        VStack {
            HStack {
                Spacer(minLength:20)
                HStack {
                    
                    Text(title)
                        .font(.system(size: CGFloat(370/title.count)))
                        .fontWeight(.black)
                        .kerning(1.1)
                        .padding([.top, .bottom, .trailing])
                        .foregroundColor(Color.white)
                        .cornerRadius(4.0)
                        
                        //.shadow(radius: 10)
                    if text.count > 0 {
                       // Spacer()
                        Text(text)
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding([.top, .leading, .bottom, .trailing])
                            .cornerRadius(4.0)
                    }
                }
                .background(Color.orange)
                .cornerRadius(4.0)
                //.frame(width: 400.0)
               // .fixedSize(horizontal: true, vertical: false)
                
                
                Spacer(minLength:20)
            }
        }
    }
}

import WebKit
struct YouTubeView: UIViewRepresentable {
    let videoId: String
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        //guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        guard let demoURL = URL(string: videoId) else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}

import AVKit

//screen for walkthrough
struct ScreenView2: View
{
    var image: String
    var image1: String
    var image2: String
    var video: String
    //@State var player = AVPlayer(url: Bundle.main.url(forResource: "/Assets/5 million", withExtension: "mp4")!)
    var videoUrl: String = "https://github.com/niranjana2222/Wildfire-Preparedness-App/blob/14b40a20f978ae2ea86c87543ef196b74e2b773f/5%20million.mp4"
    //var videoUrl: String = "https://bit.ly/swswift"

    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack
        {
            HStack {
                //Spacer(minLength:15)
                VStack {
                    /*
                    Image(image)
                        .ignoresSafeArea()
                        .animation(.linear(duration: 1), value: currentPage)
                    Image(image1)
                        .ignoresSafeArea()
                        .padding(.top, -10)
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: currentPage)
                    Image(image2)
                        .ignoresSafeArea()
                        .padding(.top, -10)
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: currentPage)
                     */
                    //VideoPlayer(player:player)
                    //YouTubeView(videoId: "https://youtube.com/shorts/WKxdQbZECuc")
                        //.ignoresSafeArea()
                        //.padding(.bottom, -100.0)
                    //VideoPlayer(player: AVPlayer(url: URL(string: videoUrl)!))
                        
                }
                
                //Spacer(minLength:15)
            }
            
            VStack{
                Spacer(minLength:20)
                HStack {
                    
                    if currentPage != 1 {
                        //back button
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
                    }
                    Spacer()
                    Spacer(minLength:300)
                    Button(action:{
                        currentPage = 5
                    }, label: {
                        Text("Skip")
                            .fontWeight(.bold)
                    })
                    Spacer(minLength: 20.0)
                }
                .foregroundColor(.white)
                Spacer(minLength:840)
            }
        }
    }
}

//total pages
var totalPages = 12

*/
