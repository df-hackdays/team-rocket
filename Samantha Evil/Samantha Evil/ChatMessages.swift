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
                DialogueViewController.Dialogue(dialogue: "Did you hear that TransUnion got hacked?",
                         buttonA: nil,
                         buttonB: nil,
                         delay: 0.0,
                         type: .message),
                DialogueViewController.Dialogue(dialogue: "NO??",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "HUGE scandal in the history of Canada...",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://wwww.youtube.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "See what happened?",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Ok, I am done watching",
                                                                                       buttonAction: 2,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 2:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Samantha Eeevil is a cyber criminal who hacked TransUnion's database",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "She is using people's personal information to rob bank accounts",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "AND all Canadian accounts are at grave risk...",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "People are in despair 😞",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "BUT... YOU can help us to catch her!!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Of course! What can I do?",
                                                                                       buttonAction: 3,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Will do anything for Canada",
                                                                                       buttonAction: 3,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 3:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "I am disappointed",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "- GAME OVER -",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
            ]
        case 999:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "I am disappointed",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "- GAME OVER -",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
            ]
        default:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Incoming Transmission....",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 1.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We have a problem... All Canadian SIN numbers are at risk!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 3.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Only YOU can help!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "How",
                                                buttonA: DialogueViewController.Button(buttonLabel: "How??",
                                                                                       buttonAction: 1,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "No, I cannot help",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
                
            ]
        }
        return messageArray
    }
}
