//
//  EventRef.swift
//  Stone
//
//  Created by Michael MacCallum on 5/22/16.
//  Copyright © 2016 Tethr. All rights reserved.
//

import Foundation

internal struct EventRef: Hashable {
	internal let event: Event
	internal let ref: String?

	internal var hashValue: Int {
		if let ref = ref {
			return event.hashValue ^ ref.hashValue
		}

		return event.hashValue
	}
}

internal func == (lhs: EventRef, rhs: EventRef) -> Bool {
	return lhs.hashValue == rhs.hashValue
}