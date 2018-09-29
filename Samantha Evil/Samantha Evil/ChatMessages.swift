//
//  ChatDialogue.swift
//  Samantha Evil
//
//  Created by Samuel Chung on 2018-09-29.
//  Copyright © 2018 Kaan Ersan. All rights reserved.
//

import UIKit

class ChatMessages: NSObject {
    
    public static func getMessagePack(pack: Int) -> [DialogueViewController.Dialogue] {
        let messageArray: [DialogueViewController.Dialogue]
        switch pack {
        case 1:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Great! We will need your help",
                         buttonA: nil,
                         buttonB: nil,
                         delay: 2.0,
                         type: .message),
                DialogueViewController.Dialogue(dialogue: "We will initiate video communication now",
                         buttonA: nil,
                         buttonB: nil,
                         delay: 2.0,
                         type: .message)
            ]
        default:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Incoming Transmission....",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 1.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We have a problem only you can help",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 3.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Looks like our database has been hacked, all Canadians digital identify are at risk...",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "we need your help to stop her, would you help us?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Yes",
                                                                                       buttonAction: 1),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Yes",
                                                                                       buttonAction: 2),
                                                delay: 2.0,
                                                type: .button)
            ]
        }
        return messageArray
    }
}
