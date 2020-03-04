//
//  SettingsSection.swift
//  SettingsTemplate
//
//  Created by Stephen Dowless on 2/10/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit
protocol SectionType: CustomStringConvertible {
    var containsSwitch: Bool { get }
}

enum SettingsSection: Int, CaseIterable, CustomStringConvertible {
    case Social
    case Information
    
    var description: String {
        switch self {
        case .Social: return "Settings"
        case .Information: return "Information"
        }
    }
}

enum SocialOptions: Int, CaseIterable, SectionType {
    case contact
    case reportBug
    case logout
    
    
    var containsSwitch: Bool { return false }
    
    var description: String {
        switch self {
        case .contact: return "Contact"
        case .reportBug: return "Report a Bug"
        case .logout: return "Log Out"
       
        }
    }
}


enum InformationOptions: Int, CaseIterable, SectionType {
    
    case officer
    case about
    var containsSwitch: Bool {return false}
    
    var description: String {
        switch self {
         case .officer: return "Officers"
              case .about: return "About Us"
        }
    }
}
    

