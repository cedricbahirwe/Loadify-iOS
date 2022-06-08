//
//  Protocols.swift
//  Loadify
//
//  Created by Vishweshwaran on 06/06/22.
//

import SwiftUI

protocol Urlable: ObservableObject {
    var url: String { get set }
}

protocol Errorable: ObservableObject {
    var detailsError: Error? { get set }
}

protocol Loadable: Urlable, Errorable { }

protocol Describable: Loadable {
    var details: VideoDetails? { get set }
}

protocol Navigatable: Describable {
    var shouldNavigateToDownload: Bool { get set }
}
