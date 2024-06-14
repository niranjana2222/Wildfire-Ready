//
//  Reminders.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI

import UserNotifications
//reminder page
struct Reminders: View
{
    @State var good = false
    @State var bg = Color.red
    var body: some View
    {
        VStack {
            
            HStack {
                
                Spacer()
                Text("Reminders")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            
            Button(
                action: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) {success, error in
                        if success {
                            bg = Color.green
                        }else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }, label: {
                    VStack {
                        Text("Agree to Notifications")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 300.0)
                            .background(bg)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                        Text("This app needs permission to give you notifications.")
                            .font(.body)
                            .foregroundColor(.black)
                            .frame(width: 300.0)
                            .padding([.top, .leading, .bottom, .trailing])
                    }
            })
            
            
            Button( action: {
                let content = UNMutableNotificationContent()
                content.title = "Check your emergency kit"
                content.subtitle = "It's been a year already!"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval:5, repeats:false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }, label: {
                VStack {
                    Text("Emergency Kit Checkup")
                        .font(.headline)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding([.top, .leading, .bottom, .trailing])
                        .frame(width: 300.0)
                        .background(.blue)
                        .cornerRadius(4.0)
                        .hoverEffect(.lift)
                    Text("Reminder to check and update items in your emergency kit in one month.")
                        .font(.body)
                        .foregroundColor(.black)
                        .frame(width: 300.0)
                        .padding([.top, .leading, .bottom, .trailing])
                }
            })
            
            Button( action: {
                let content = UNMutableNotificationContent()
                content.title = "Finish your preparedness checklist!"
                content.subtitle = "The wildfire season is approaching"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval:5, repeats:false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }, label: {
                VStack {
                    Text("Preparedness Checklist")
                        .font(.headline)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding([.top, .leading, .bottom, .trailing])
                        .frame(width: 300.0)
                        .background(.blue)
                        .cornerRadius(4.0)
                        .hoverEffect(.lift)
                    Text("Reminder to complete your preparedness checklist before the wildfire season.")
                        .font(.body)
                        .foregroundColor(.black)
                        .frame(width: 300.0)
                        .padding([.top, .leading, .bottom, .trailing])
                }
            })
            
        }
    }
}
