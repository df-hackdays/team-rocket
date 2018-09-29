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
                DialogueViewController.Dialogue(dialogue: "Let's find Samantha using the Internet! Its fast!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Continue",
                                                                                       buttonAction: 4,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 4:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "What's this? It is a social media platofrm that is called Instagram",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "You can upload photos using this platform and include comments/ captions",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We might be able to find hints on where she's at by going through her Instagram",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Continue",
                                                                                       buttonAction: 5,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 5:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Looks like Samantha has a good taste of wine",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We might be able to track her down by looking where she will buy the wine",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Reply with answer",
                                                                                       buttonAction: 6,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 6:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "So which wine did Samantha have and how many people liked it?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "#Summerwine, 1 Like",
                                                                                       buttonAction: 7,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "#Merlon, 2 Likes",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 7:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Great job!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "we have also tracked her down on Facebook, another social media platform!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Samantha seems to be watching a movie with her friend right now",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We might be able to catch her on the spot!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Facebook",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Reply with answer",
                                                                                       buttonAction: 8,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 8:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Avengers Infinity War, Cineplex",
                                                                                       buttonAction: 9,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Swordfish, Tower Theater",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 0.0,
                                                type: .button)
            ]
        case 9:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Great job!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Find the facebook page of the movie she watched.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "How many people liked the page? (Hint: `Like` is not the same as `Follow`",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "16,823",
                                                                                       buttonAction: 10,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "17,052",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 10:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Excellent!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Who did she watch the movie with?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Samuel Chung",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Ashley Cruz",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
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
