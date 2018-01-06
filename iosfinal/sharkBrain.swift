//
//  tourismBrain.swift
//  DangerousSharks
//
//  Created by viquar on 01/01/2018.
//  Copyright © 2018 viquar. All rights reserved.
//
import Foundation

struct sharkBrain {
    private let sharkName = ["Great White","Bull Shark","Tigershark","Hammer Head","blacktip shark","Blue Shark"]
    private let sharkSubtitle = ["Dangerous No.1","Dangerous No.2","Dangerous No.3","Dangerous No.4","Dangerous No.5","Dangerous No.6"]
    private let time = ["No.1","No.2","No.3","No.4","No.5","No.6"]
    private let description = ["Few animals instill quite the same fear as sharks. As apex predators many types of sharks are well equipped to inflict serious injury; large, fast, powerful and armed with row upon row of razor sharp teeth these fish are finely honed killing machines. Yet with around 400 shark species it is only a tiny minority that present any danger to humans. I would regard only six, of all the species as “man-eating sharks"]
    
    let sharkLength = 6
    
    func getDetails(index : Int) ->[String]{
        return [sharkName[index],sharkSubtitle[index]]
    }
    
    func getFullDetails(index : Int) ->[String]{
        return [sharkName[index],sharkSubtitle[index],time[index],description[0]]
    }
}

