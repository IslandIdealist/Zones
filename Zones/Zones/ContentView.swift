//
//  ContentView.swift
//  Zones
//
//  Created by Matt Jerrard on 9/27/20.
//

import SwiftUI
import Combine

class Zone: ObservableObject{
    var objectWillChange = PassthroughSubject<Void, Never>()
    
    static let sizes = ["large", "medium", "small"]
    let zones = [Image("large"), Image("medium"), Image("small")]
    
    var size = 0 { didSet { update() } }
    var name = "" { didSet { update() } }
    var zone = Image("zone") { didSet { update() } }
    
    func getSize() -> Int{
        return size
    }
    
    func getZone() ->Image{
        return zone
    }
    
    func getZoneArray() ->[Image]{
        return zones
    }
    
    func update() {
        objectWillChange.send(())
    }
    
}

struct ContentView: View {
    
    @ObservedObject var zone = Zone()
    
    func getSize() ->Int{
        return zone.getSize()
    }
    
    func getZone() ->Image{
        return zone.getZone()
    }
    
    func getZones() ->[Image]{
        return zone.getZoneArray()
    }
    
    //var zoneImage = Image("zones")
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $zone.size, label: Text("Select Zone size")) {
                    ForEach(0 ..< Zone.sizes.count) {
                        Text(Zone.sizes[$0]).tag($0)
                        //var zoneImage = getZones()[$0]
                    }
                    
                }
                
            //Text(getSize())
                                        
            if getSize() == 0 {
                getZones()[0]
                .resizable()
                .scaledToFit()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            }
            if getSize() == 1 {
                getZones()[1]
                .resizable()
                .scaledToFit()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            }
            if getSize() == 2 {
                getZones()[2]
                .resizable()
                .scaledToFit()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            }
                
        }
            
        .navigationBarTitle(Text("Create a Zone"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
