//
//  StreamingServiceInformation.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public typealias StreamingServiceInformation = CodableDictionary<StreamingService,
                                                                 [CountryCode: StreamingInfo]>
