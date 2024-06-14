//
//  Checklist.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI
import Combine

struct Checklist: View {
    
    @State var todo: [String] = [
        "Designate an emergency meeting location",
        "Family communication plan",
        "Test your fire extinguisher",
        "Know the main control locations",
        "Sign up for wildfire alerts in your area"
    ]
    
    @State var descripts: [String] = [
        "An accessible location far from your house",
        "Designate emergency contacts for your family",
        "Make sure everyone knows how to use them!",
        "Inform everyone of the gas, electric, and water shut-off controls",
        "Sign up on sccalert.com for alerts specifically for your city"
    ]
    
    @State var show: [Bool] = [
        false,
        false,
        false,
        false,
        false,
    ]
    
    @State var done: [Bool] = [
        false,
        false,
        false,
        false,
        false,
    ]
    
    @State var completed = 5
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
                    .frame(height: 50)
            HStack {
                
                Spacer()
                Text("Preparedness Checklist")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: completed)
            /*
            List {
                Section(header:Text("Evacuation Plan Checklist")) {
                    ForEach(0..<3, id: \.self) { i in
                        //VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(todo[i].capitalized)
                                    
                                    Button {
                                        show[i] = !show[i]
                                    } label: {
                                        Text("Details")
                                            .font(.caption)
                                            .foregroundColor(.blue)
                                            
                                    }
                                    .controlSize(.small)
                                    if show[i] {
                                        Text(descripts[i])
                                            .font(.caption)
                                            .foregroundColor(.purple)
                                    }
                                }
                                
                                Spacer()
                                
                                Button {
                                    done[i] = !done[i]
                                } label: {
                                    if done[i] {
                                        Text("Completed!")
                                        .foregroundColor(.green)
                                    }
                                    else{
                                        Text("Incomplete")
                                        .foregroundColor(.red)
                                    }
                                }
                                .buttonStyle(.bordered)
                                .controlSize(.small)
                                
                            }
                       // }
                    }
                }
                
            }
            .frame(height: 250.0)
            */
            //evacuation plan
            HStack {
                Spacer(minLength:20)
            
                List {
                    Section(header:Text("Evacuation Plan Checklist")) {
                        ForEach(0..<(todo.count), id: \.self) { i in
                            //VStack {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(todo[i].capitalized)
                                        
                                        Button {
                                            show[i] = !show[i]
                                        } label: {
                                            Text("Details")
                                                .font(.caption)
                                                .foregroundColor(.blue)
                                        }
                                        .controlSize(.small)
                                        if show[i] {
                                            Text(descripts[i])
                                                .font(.caption)
                                                .foregroundColor(.purple)
                                                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: show[i])
                                        }
                                            
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                        done[i] = !done[i]
                                        if (done[i]) {
                                            completed-=1
                                        }
                                        else {completed+=1}
                                    } label: {
                                        if done[i] {
                                            Text("Completed!")
                                            .foregroundColor(.green)
                                            
                                        }
                                        else{
                                            Text("Incomplete")
                                            .foregroundColor(.red)
                                        }
                                    }
                                    .buttonStyle(.bordered)
                                    .controlSize(.small)
                                    
                                }
                        }
                    }
                }
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: completed)
                .frame(height: 650.0)
                Spacer(minLength:20)
            }
            Spacer()
            HStack {
                Spacer()
                /**
                GifImage("fire")
                    .frame(width: 60.0*CGFloat(completed), height: 60.0*CGFloat(completed))
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: completed)
                 */
                Spacer()
                    
            }
            
            //Spacer()
                //.frame(height:300)
        }
        
    }
}
