//
//  QueryStringConvertible.swift
//  Stone
//
//  Created by Michael MacCallum on 5/16/16.
//  Copyright © 2016 Tethr Technologies Inc. All rights reserved.
//

/**
	Should be used to represent any type that can be safely converted into a properly escaped URL query string.
*/
public protocol QueryStringConvertible: Hashable {
	var queryStringRepresentation: String? { get }
}

