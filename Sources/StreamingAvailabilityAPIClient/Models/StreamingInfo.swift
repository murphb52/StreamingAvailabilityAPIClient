//
//  StreamingInfo.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct StreamingInfo: Codable {
    /// Unix timestamp of the time we found out this show was on this service, not the time the show was actually added to the service
    public let added: Int

    /// 0, if the show is not set as leaving; 1 if the show is leaving but not stated when; a unix timestamp of the expected leave time if the show is leaving and leaving time is known
    public let leaving: Int
    
    public let link: String
}
