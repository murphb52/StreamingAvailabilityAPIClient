//
//  StreamingInfo.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct StreamingInfo: Codable {
    /// Unix timestamp of the time we found out this series was on this service, not the time the series was actually added to the service
    public let added: Int

    /// 0, if the series is not set as leaving; 1 if the series is leaving but not stated when; a unix timestamp of the expected leave time if the series is leaving and leaving time is known
    public let leaving: Int
    
    public let link: String
}
