//
//  AcceptSDKPaymentRequest.swift
//  AcceptSDK
//
//  Created by Ramamurthy, Rakesh Ramamurthy on 7/11/16.
//  Copyright © 2016 Ramamurthy, Rakesh Ramamurthy. All rights reserved.
//

import Foundation

//public class AcceptSDKPaymentRequest: NSObject {
//    public var name:String!
//    public var clinetKey:String!
//
//    public var cardData = AcceptSDKCardData()
//}

public class AcceptSDKRequest: NSObject {
    public var merchantAuthentication:MerchantAuthenticaton = MerchantAuthenticaton()
    public var securePaymentContainerRequest:SecurePaymentContainerRequest = SecurePaymentContainerRequest()
    
    func validate(request: AcceptSDKRequest, successHandler:(isSuccess:Bool)->(),failureHandler:(withResponse:AcceptSDKErrorResponse)->()) {
        self.merchantAuthentication.validate(request.merchantAuthentication, successHandler: {_ in 
            self.securePaymentContainerRequest.validate(request.securePaymentContainerRequest, successHandler: successHandler, failureHandler: failureHandler)
            }, failureHandler: failureHandler)
    }
}