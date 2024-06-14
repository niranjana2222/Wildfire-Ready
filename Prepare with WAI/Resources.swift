//
//  Resources.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI

struct Resources: View
{
    var body: some View
    {
        VStack{
            Spacer()
            HStack {
                
                Spacer()
                Text("Important Resources")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            Spacer()
            
            VStack {
                Link("CalFire.org", destination: URL(string: "https://www.fire.ca.gov/incidents/")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.red)
                    .cornerRadius(4.0)
            
                Text("Calfire provides a map of where wildfires are located in realtime with information about their size, damage, and status.")
                    .font(.body)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.red)
                    .cornerRadius(4.0)
                    .hoverEffect(.lift)
            }
            
            Spacer()
            
            VStack {
                Link("AirNow.gov", destination: URL(string: "https://www.airnow.gov/")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.green)
                    .cornerRadius(4.0)
            
                Text("AirNow provides realtime information about the air quality in any given zip code within the United States.")
                    .font(.body)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.green)
                    .cornerRadius(4.0)
                    .hoverEffect(.lift)
            }
            
            Spacer()
            
            VStack {
                Link("50states.com", destination: URL(string: "https://www.50states.com/california/fire_departments.htm")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.orange)
                    .cornerRadius(4.0)
                
                Text("50states.com provides information about the local fire department in your area given your city or zipcode.")
                        .font(.body)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding([.top, .leading, .bottom, .trailing])
                        .frame(width: 300.0)
                        .background(Color.orange)
                        .cornerRadius(4.0)
                        .hoverEffect(.lift)
            }
            Spacer()
                
        }
        
    }
}
