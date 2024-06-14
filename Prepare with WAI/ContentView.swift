//
//  ContentView.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        
        if currentPage > totalPages {
            HomePage()
        }
        else {
            WalkthroughScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
            ContentView()
        }
    }
}

//Homepage
struct HomePage: View
{
    @State var goBack = false
    @State var reminders = false
    @State var contacts = false
    @State var kit = false
    @State var alerts = false
    @State var checklist = false
    @State var resources = false
    @State var home = true
    @State var location = false
    
    @State var showingAlert = true

    var body: some View
    {
        //NavigationView {
            if goBack {
                WalkthroughScreen()
            
            } else if reminders {
                VStack {
                   // Spacer(minLength:100.0)
                    Button(action: {
                            reminders = false
                            home = true
                        
                    }, label:{
                        //Text("<")
                            //.font(.system(size:15, weight: .semibold))
                        Image("back")
                            .resizable()
                                .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 5)
                            //.background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                        
                    
                    Reminders()
                    //Spacer(minLength:-100)
                }
            
            } else if contacts {
                VStack {
                    Spacer()
                        .frame(height:20)
                    Button(action: {
                        
                            contacts = false
                            kit = false
                            alerts = false
                            checklist = false
                            resources = false
                        
                    }, label:{
                        //Text("<")
                            //.font(.system(size:15, weight: .semibold))
                        Image("back")
                            .resizable()
                                .frame(width: 32.0, height: 32.0)
                            //.scaledToFit()
                            //.aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .padding(.vertical, 15)
                            .padding(.horizontal)
                            //.background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                    
                    Contacts()
                }
            
            }else if location {
                VStack {
                    Button(action: {
                        
                            contacts = false
                            kit = false
                            alerts = false
                            checklist = false
                            resources = false
                            location = false
                        
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
                        .padding(.trailing, 300.0)
                    
                    Location()
                }
            
            }else if kit {
                VStack {
                    //Spacer(minLength:-100)
                    Button(action: {
                        
                            contacts = false
                            kit = false
                            alerts = false
                            checklist = false
                            resources = false
                            
                        
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
                        .padding(.trailing, 300.0)
                        .padding(.top, 80)
                        //.padding(.top, -37.0)
                    
                    Kit()
                        .frame(height:750)
                    //Spacer()
                    
                }
            
            }
            else if checklist {
                VStack {
                    Spacer(minLength:20.0)
                    Button(action: {
                        contacts = false
                        kit = false
                        alerts = false
                        checklist = false
                        resources = false
                            
                        
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
                        .padding(.trailing, 300.0)
                        //.padding(.top, -37.0)
                    
                    Checklist()
                        //.frame(height:500)
                    //Spacer()
                }
            
            }else if resources {
                VStack {
                    Button(action: {
                        contacts = false
                        kit = false
                        alerts = false
                        checklist = false
                        resources = false
                        
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
                        .padding(.trailing, 300.0)
                        //.padding(.top, -37.0)
                    
                    Resources()
                }
            
            }else {
                VStack {
                    
                    Spacer()
                   
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation(.easeInOut) {
                                goBack = true
                                
                            }
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
                        
                        Spacer()
                        
                        Text("Prepare Your Home")
                        .font(.title)
                        .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.easeInOut) {
                                reminders = true
                            }
                        }, label: {
                            Text("!")
                                .font(.system(size:15, weight: .semibold))
                                .foregroundColor(.black)
                                .frame(width:25, height:25)
                                .background(Color.yellow)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                            .stroke(Color.black.opacity(0.04), lineWidth: 4)
                                            .padding(-8)
                                    
                                    )
                            })
                        
                        Spacer()
                    }
                    
                    Button(action: {checklist = true}, label: {
                        Text("  Preparing Checklist  ")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Button(action: {contacts = true}, label: {
                        Text("Emergency Contacts")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Button(action: {kit = true}, label: {
                        Text("Emergency Kit")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                            
                    })
                   
                    Button(action: {location = true}, label: {
                        Text("Emergency Location")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Button(action: {resources = true}, label: {
                        Text("Information Resources")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Spacer()
                    HStack{
                        Spacer()
                        Spacer()
                        Image("image1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Text("WAI")
                            .font(.footnote)
                        Spacer()
                        Text("waiforchange@gmail.com")
                            .font(.footnote)
                        Spacer()
                        Text("Instagram: @waiforchange")
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
            }
    }
}


struct ContentView_Previews_2: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
