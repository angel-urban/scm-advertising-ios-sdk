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

var _site:String = ""
var _position:String = ""
var _page:String = ""
var _query:String = ""

@objc class FilterPAO: NSObject {
    
    override class func `new`()->FilterPAO {
        return FilterPAO()
    }
    
    var _version:String = ""
    var _url:String = ""
    var device:String = ""
    var sistem:String = ""
    var make:String = "Apple"
    var sdkversion:Int = 1
    
    
    func setPosicion (Posicion:String) {
        _position = Posicion
        print("Posicion: \(_position)\n")
    }
    
    func getPosicion ()->String {
        print("Position return: \(_position) \n")
        return _position
    }
    
    func setSite (Site:String) {
        _site = Site;
        print("Site: \(_site)\n")
    }
    
    func getSite ()->String {
        switch _site {
        case "COCHES":
            return "1"
        case "MOTOS":
            return "2"
        case "FOTOCASA":
            return "3"
        case "SEGUNDAMANO":
            return "4"
        case "INFOJOBS":
            return "5"
        default:
            print("Ninguna opcion de site")
        }

        return _site
    }
    
    func setPage (Page:String) {
        _page = Page
        print("Page: \(_page)\n")
    }
    
    func getPage ()->String {
        return _page
    }
    
    func setQuery (Query:String) {
        _query = Query
        print("Query: \(_query)\n")
    }
    
    func getQuery()->String {
        //print("Query return: \(_query)")
        return _query
        
    }
    
    
    //DEVOLVEMOS LA URL
    func loadURL ()->NSURLRequest {
        
        
        //INFO DEVICE
        device = UIDevice.currentDevice().modelName
        sistem = UIDevice.currentDevice().systemVersion
        
        //INFO BUILD SDK
        let appInfo = NSBundle.mainBundle().infoDictionary as Dictionary<String,AnyObject>
        let shortVersionString = appInfo["CFBundleShortVersionString"] as String
        let bundleVersion      = appInfo["CFBundleVersion"] as String
        //let versionSDK = bundleVersion.toInt()!*10000
        //var sdkver = String(versionSDK)
        var sdkver = sdkversion*10000
        var versionSDK = String(sdkver)
        
        
        //Encoding query
        let Queris = self.getQuery()
        let escaped = CFURLCreateStringByAddingPercentEscapes(nil, Queris, nil, "/%&=?$#+-~@<>|\\*,.()[]{}^!", CFStringBuiltInEncodings.UTF8.rawValue)
        
        
        var baseURL = NSURL (string: "http://static-advertising.scmspain.com/pao_ios_sdk/1.0/ios-sdk.html")
        
        _url = "?site="+self.getSite()+"&page="+self.getPage()+"&pos="+self.getPosicion()+"&make="+make+"&model="+device+"&vsdk="+shortVersionString+"&vsdkint="+versionSDK+"&phonever="+sistem+"&phoneapi="+sistem+"&query="+escaped
        
        var url = NSURL(string: _url, relativeToURL: baseURL)
        
        var request = NSURLRequest(URL: url!)
        
        
        print(request)
        
        
        return request
    }

    
}


//CLASE PARA CUANDO SEA COMPATIBLE EL ACCESO A VARIABLES GLOBALES NO SE USA ACTUALMENTE
class FilterPAO_old {
    
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
    
    func getSite (Site:eSite)->String {
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




