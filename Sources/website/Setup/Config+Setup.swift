//
//  Config+Setup.swift
//  websitePackageDescription
//
//  Created by Seto Elkahfi on 01/02/18.
//

import Vapor
import LeafProvider

extension Config {
    
    public func setup() throws {
        try setupProviders()
    }
    
    public func setupProviders() throws {
        try addProvider(LeafProvider.Provider.self)
    }
    
}
