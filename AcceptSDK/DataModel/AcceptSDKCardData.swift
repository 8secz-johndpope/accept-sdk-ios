//
//  AcceptSDKCardData.swift
//  AcceptSDK
//
//  Created by Ramamurthy, Rakesh Ramamurthy on 7/11/16.
//  Copyright © 2016 Ramamurthy, Rakesh Ramamurthy. All rights reserved.
//

import Foundation

public class AcceptSDKCardData {
    
    public var accountNumber:String!
    public var expirationMonth:String!
    public var expirationYear:String!
    public var cvNumber:String!
    
    init() {
    }
    
    init (inDict:Dictionary<String,AnyObject>) {
    }
}