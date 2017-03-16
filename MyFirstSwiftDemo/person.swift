//
//  person.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/13.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class person: NSObject {
    fileprivate enum ResourcePath: CustomStringConvertible {
        case login
        case stories
        case storyUpvote(storyId: Int)
        case storyReply(storyId: Int)
        case commentUpvote(commentId: Int)
        case commentReply(commentId: Int)
        
        var description: String {
            switch self {
            case .login: return "/oauth/token"
            case .stories: return "/api/v1/stories"
            case .storyUpvote(let id): return "/api/v1/stories/\(id)/upvote"
            case .storyReply(let id): return "/api/v1/stories/\(id)/reply"
            case .commentUpvote(let id): return "/api/v1/comments/\(id)/upvote"
            case .commentReply(let id): return "/api/v1/comments/\(id)/reply"
            }
        }
    }
    //调用ResourcePath.stories.description

}
