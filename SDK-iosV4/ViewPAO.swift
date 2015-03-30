//
//  ViewPAO.swift
//  SDK-iosV4
//
//  Created by angel.urban on 13/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//

import Foundation
import UIKit

/*@objc class ViewPAO  {
    
    class func `new`()->ViewPAO {
        return ViewPAO()
    }
    
    var WebPAO:FilterPAO = FilterPAO()
    var _version:String = "1.0"
    var _url:String = ""
    var device:String = ""
    var sistem:String = ""
    
    //DEVOLVEMOS LA URL
    func loadURL ()->NSURLRequest {
        
        device = UIDevice.currentDevice().modelName
        sistem = UIDevice.currentDevice().systemVersion
        
        //WebPAO._page = "detalle"
        //WebPAO._position = "x01"
        //WebPAO._site = WebPAO.getSite(eSite.COCHES)
        //WebPAO._query = /*"oasSite=coches&wsite=coches&oasGeoRegion=16&oasGeoRegionStr=Cuenca&region=cuenca&oasSubsection=2500&subseccion=2500&tipomoto=0&test=on&postMessage=1&oasNumPage=1"*/
            
            
        //"oasSite=segundamanoes&oasSgmCat=101&oasSgmSubcat1=4&oasTransaction=1&oasPrice=12690&oasGeoRegion=51&oasMake=35&oasModel=956&oasYear=2012&oasFuel=2&oasKilometers=79999&oasBodywork=1&oasDetailid=88090231&oasCompanyid=900616016589&oasCustomer=1&oasGeoRegionStr=Madrid&oasMakeStr=RENAULT&oasModelStr=Fluence&oasVersion=Dynamique+dCi+110&oasFuelStr=Di%C3%A9sel&oasTransmission=2&oasBodyworkStr=Berlina&urlp=http://mimgs.sgmn.es:80/635x476/365/36598713908.jpg"
        
        //Encoding query
        let Queris = WebPAO.getQuery()
        let escaped = CFURLCreateStringByAddingPercentEscapes(nil, Queris, nil, "/%&=?$#+-~@<>|\\*,.()[]{}^!", CFStringBuiltInEncodings.UTF8.rawValue)
        
        
        var baseURL = NSURL (string: "http://static-advertising.scmspain.com/pao_ios_sdk/1.0/ios-sdk_angel.html")
        
        _url = "?site="+WebPAO.getSite()+"&page="+WebPAO.getPage()+"&pos="+WebPAO.getPosicion()+"&versdk="+_version+"&device="+device+"&iOsvers="+sistem+"&query="+escaped
        
        var url = NSURL(string: _url, relativeToURL: baseURL)
        
        var request = NSURLRequest(URL: url!)
        
        print(request)
        
        
        return request
    }
    
}*/
