//
//  Contacts.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//


import Foundation
import SwiftUI

import Contacts
//contacts page
struct Contacts: View
{
   @State var addNew = false
    @State var edit1 = false
    
    @State var contactNum = 0
    
    @State var phones = ""
    @State var name = ""
    
    @State var phones1 = ""
    @State var name1 = ""
    
    @State var phones2 = ""
    @State var name2 = ""
   
    var body: some View
    {
       VStack {
           HStack {
               Spacer()
               Text("Emergency Contacts")
                   .font(.title)
                   .fontWeight(.heavy)
               Spacer()
           }
       
           //VStack {
           if (contactNum <= 2) {
               Button(action: {
                   addNew = true
           
               }, label:{
                   Text("+ Add New Contact")
               })
                   .buttonStyle(.borderedProminent)
                   .tint(.blue)
           }
         
           if contactNum>=1 && !edit1 {
               HStack {
                   VStack {
                       Text(name)
                       Text(phones)
                       Button (action: {
                           edit1 = true
                       },
                        label: {
                           Text("Edit")
                       })
                   }
                   Button(action: {
                       callNumber(phoneNumber: phones)
                   },
                          label: {
                       Image("call")
                           .resizable()
                                .frame(width:60, height:60)
                       
                   })
               }
           }
           
           if contactNum>=2 {
               HStack {
                   VStack {
                       Text(name1)
                       Text(phones1)
                   }
                   Button(action: {callNumber(phoneNumber: phones1)},
                          label: {
                       Image("call")
                           .resizable()
                                .frame(width:60, height:60)
                   })
               }
           }
           
           if contactNum>=3 {
               HStack {
                   VStack {
                       Text(name2)
                       Text(phones2)
                   }
                   Button(action: {callNumber(phoneNumber: phones2)},
                          label: {
                       Image("call")
                           .resizable()
                                .frame(width:60, height:60)
                       
                   })
               }
           }
           
           if addNew || edit1{
               //VStack {
               if contactNum == 0 || edit1 {
                   Form {
                       TextField(text: $name, prompt: Text("Contact Name")) {
                           //Text("Username")
                       }
               
                       TextField(text: $phones, prompt: Text("Phone Number")) {
                           //Text("Username")
                       }
                   }
                   .frame(height:175)
               }
               if contactNum == 1 && !edit1{
                   Form {
                       TextField(text: $name1, prompt: Text("Contact Name")) {
                           //Text("Username")
                       }
               
                       TextField(text: $phones1, prompt: Text("Phone Number")) {
                           //Text("Username")
                       }
                   }
                   .frame(height:175)
               }
               if contactNum == 2 && !edit1{
                   Form {
                       TextField(text: $name2, prompt: Text("Contact Name")) {
                           //Text("Username")
                       }
               
                       TextField(text: $phones2, prompt: Text("Phone Number")) {
                           //Text("Username")
                       }
                   }
                   .frame(height:175)
               }
                   Button(action: {
                       contactNum+=1
                       edit1=false
                       addNew = false
                       phones = "408"
                       name = "che"
                       phones1 = "408"
                       name1 = "che"
                       phones2 = "408"
                       name2 = "che"
                   }, label: {
                       Text("Save")})
           }
           
           Spacer()
           Spacer()
           Spacer()
                   
    }
    }
    
    private func callNumber(phoneNumber:String) {
      if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(phoneCallURL)) {
            application.open(phoneCallURL, options: [:], completionHandler: nil)
        }
      }
    }
     
}


/***
VStack {
    //Spacer(minLength:150.0)

    /*
    Button("+ Add to Contacts") {
        
        let contact = CNMutableContact()
        // Name
        contact.givenName = "Ming"
        // Phone No.
        contact.phoneNumbers = [CNLabeledValue(label: CNLabelPhoneNumberiPhone, value: CNPhoneNumber(stringValue: "12345678"))]
        // Save the created contact.
        let store = CNContactStore()
        let saveRequest = CNSaveRequest()
        saveRequest.add(contact, toContainerWithIdentifier: nil)
        do {
            try store.execute(saveRequest)
        } catch {
            print("Error occur: \(error)")
        }
        
    }
    .buttonStyle(.borderedProminent)
    .tint(.black)
    */
    //Spacer(minLength:200.0)
    VStack {
        //HStack {
            Spacer(minLength:20)
            Form {
                TextField(text: $name, prompt: Text("Contact Name 1")) {
                    //Text("Username")
                }
                
                TextField(text: $phones, prompt: Text("Phone Number 1")) {
                    //Text("Username")
                    
                }
            
            }
            
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        //}
            
        HStack {
            Spacer(minLength:20)
            Form {
                TextField(text: $name1, prompt: Text("Contact Name 2")) {
                    //Text("Username")
                }
                
                TextField(text: $phones1, prompt: Text("Phone Number 2")) {
                    //Text("Username")
                    
                }
            
            }
            
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones1)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        }
        
        HStack {
            Spacer(minLength:20)
            Form {
                TextField(text: $name2, prompt: Text("Contact Name 3")) {
                    //Text("Username")
                }
                
                TextField(text: $phones2, prompt: Text("Phone Number 3")) {
                    //Text("Username")
                    
                }
            
            }
            
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones2)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        }
        
        /*
        Spacer()
        HStack {
            Spacer()
            Text(name)
            Spacer()
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        }
        Spacer()
        HStack {
            Spacer()
            Text(name1)
            Spacer()
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones1)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        }
        Spacer()
        HStack {
            Spacer()
            Text(name2)
            Spacer()
            Spacer()
            Button("Call")
            {
                callNumber(phoneNumber: phones2)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Spacer()
        }
         */
    }
    .frame(height: 500.0)
    
    //GifImage("call")
     //   .padding(.bottom, 100.0)
     //   .frame(width: 100.0, height: 190.0)
        
   Spacer()
        .frame(height:300)
}
 ***/
