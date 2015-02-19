//
//  FilterPAO.swift
//  SDK-iosV4
//
//  Created by angel.urban on 13/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//

import Foundation
import UIKit

enum eSite:String {
    case COCHES = "COCHES"
    case MOTOS = "MOTOS"
    case FOTOCASA = "FOTOCASA"
    case SEGUNDAMANO = "SEGUNDAMANO"
    case INFOJOBS = "INFOJOBS"
    
}

class FilterPAO {
    
    var _site:String = ""
    var _position:String = ""
    var _page:String = ""
    var _query:String = ""
    
    var site:String {
        get {
            return _site
        }
        set (newVal) {
            _site = newVal
        }
    }
    
    func getSite (Site:eSite) ->String {
        switch Site {
        case .COCHES:
            return "1"
        case .MOTOS:
            return "2"
        case .FOTOCASA:
            return "3"
        case .SEGUNDAMANO:
            return "4"
        case .INFOJOBS:
            return "5"
        }
    }
    
    
    
    var position:String {
        get {
            return _position
        }
        set (newVal) {
            _position = newVal
        }
    }
    
    var page:String {
        get {
            return _page
        }
        set (newVal) {
            _page = newVal
        }
    }
    
    var query:String {
        get {
            return _query
        }
        set (newVal) {
            _query = newVal
        }
    }
    
    
}
