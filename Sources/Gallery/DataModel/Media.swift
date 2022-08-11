//
//  Media.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import UIKit

@objc public class Media :NSObject {
    @objc public let caption: String?
    @objc public let identifier :String
    @objc public let mediaType: InstaMediaType
    @objc public let url :URL?
    @objc public let permalink: URL?
    @objc public let thumbanailURL: URL?
    @objc public let date :Date?
    @objc public let username: String
    
    init(caption: String? = nil, identifier: String, mediaType: InstaMediaType, url: URL?, permalink: URL? = nil, thumbnailURL: URL? = nil, date: Date? = nil, username: String) {
        self.caption = caption
        self.identifier = identifier
        self.mediaType = mediaType
        self.url = url
        self.permalink = permalink
        self.thumbanailURL = thumbnailURL
        self.date = date
        self.username = username
    }
}
