//
//  Kit.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI

struct Kit: View
{
    @State var supplies: [String] = [
        "WATER + FOOD",
        "FLASHLIGHT",
        "FIRST AID KID",
        "BATTERIES",
        "SLEEPING BAG",
        "GARBAGE BAG",
        "CASH + DOCUMENTS",
        "SANITIZER",
        "MASK",
        "CLOTHING",
        "MATCHES"
    ]
    
    @State var done2: [Bool] = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    ]
    
    @State var showingAlert: Bool = true
    
    var body: some View
    {
        VStack {
            Button("") {
                       showingAlert = true
                   }
                   .alert(isPresented: $showingAlert) {
                       Alert(title: Text("Reminders"), message: Text("Once you have completed your emergency kit, set a reminder for a check up!"), dismissButton: .default(Text("Got it!")))
                   }
            
            Spacer()
                .frame(height:20)
            HStack {
                
                Spacer()
                Text("Emergency Kit")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            
            // go bag
            HStack {
                Spacer(minLength:20)
            
                List {
                    Section(header:Text("Emergency Go-Bag")) {
                        ForEach(0..<(supplies.count), id: \.self) { i in
                            //VStack {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(supplies[i].capitalized)
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                        done2[i] = !done2[i]
                                    } label: {
                                        if done2[i] {
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
                .frame(height: 550)
                Spacer(minLength:20)
            }
            Spacer(minLength:10)
            GifImage("kit2")
                .frame(height: 180)
                .frame (width: 200)
        }
    }
}

