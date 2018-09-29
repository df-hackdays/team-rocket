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
                DialogueViewController.Dialogue(dialogue: "I am glad you can help.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Apprantly, Equifax - one of the largest credit bureau in Canada",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "their database has been hacked",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "All Canadians' credit information are now at risk",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.youtube.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Why it's a big risk?",
                                                                                       buttonAction: 0,
                                                                                       type: .video),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Ok, carry on",
                                                                                       buttonAction: 2,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 2:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Samantha Evil is a cyber criminal who hacked Equifax's database",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "She is using people's personal information and stealing from their bank accounts",
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
                DialogueViewController.Dialogue(dialogue: "That's good to hear",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "The case is currently under investigation by Inspector Gabby",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Inspector Gabby just joined not long ago, good, hardworking, but still fresh",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "I will ask Gabby to contact you directly, good luck detective!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "[Transmission ended...]",
                                                buttonA: DialogueViewController.Button(buttonLabel: "messagePack",
                                                                                       buttonAction: 5,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "NotificationTimer",
                                                                                       buttonAction: 10,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .notification),
            ]
        case 4:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Hello Detective!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "This is Inspector Gabby, I have been looking forward to work with you!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "You were a legend here in RCMP, even though you have left the organization 5 years ago.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "I can't imagine why you left the organization, hopefully you will tell me one day.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Anyways, I have tracked down Samantha on her instagram account, please take a look.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com/samanthaevil",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "What's this?",
                                                                                       buttonAction: 5,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 5:
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
                DialogueViewController.Dialogue(dialogue: "We might be able to find clues on where she's at by going through her Instagram",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com/samanthaevil",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Continue",
                                                                                       buttonAction: 6,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 6:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Looks like Samantha has a good taste of wine",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We might be able to track her down by looking at which wine she drinks and where is the place we can get the wine!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com/samanthaevil",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Instagram",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Reply with answer",
                                                                                       buttonAction: 7,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 7:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "So which wine did Samantha have and how many people liked it?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.instagram.com",
                                                buttonA: DialogueViewController.Button(buttonLabel: "#Summerwine, 1 Like",
                                                                                       buttonAction: 8,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "#Merlon, 2 Likes",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 8:
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
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Facebook",
                                                                                       buttonAction: 0,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Reply with answer",
                                                                                       buttonAction: 9,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 9:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Avengers Infinity War, Cineplex",
                                                                                       buttonAction: 10,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Swordfish, Tower Theater",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 0.0,
                                                type: .button)
            ]
        case 10:
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
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's facebook",
                                                                                       buttonAction: 11,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Give Gabby the answer",
                                                                                       buttonAction: 11,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 11:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "What's the rating of that movie",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "approx. 4.4 out of 5",
                                                                                       buttonAction: 12,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "approx. 1 out of 5",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 12:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Excellent! I haven't see that movie yet.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Who did she watch the movie with?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Samuel Chung",
                                                                                       buttonAction: 13,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Ashley Cruz",
                                                                                       buttonAction: 13,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 13:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "Ok, in this case, when I go arrest her, I am expecting two suspects on the scene!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Are you able to dig further on facebook and tell me their most recent location?",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Open Samantha's Facebook",
                                                                                       buttonAction: 14,
                                                                                       type: .openUrl),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Tell Gabby the address",
                                                                                       buttonAction: 14,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
            ]
        case 14:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "http://www.facebook.com/samantha.eevil.399",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Scotiabank Digital Factory",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "ScotiaBank Theater",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 0.0,
                                                type: .button)
            ]
        case 999:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "I am disappointed...",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 0.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "[Ending Transmission....]",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "-GAME OVER-",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message)
            ]
        default:
            messageArray = [
                DialogueViewController.Dialogue(dialogue: "[Incoming Transmission....]",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 1.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Good day, detective.",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 3.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Hope you enjoyed your vacation, we are sorry to call you in",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "We have a problem... All Canadians credit information are at risk!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "Only YOU can help!",
                                                buttonA: nil,
                                                buttonB: nil,
                                                delay: 2.0,
                                                type: .message),
                DialogueViewController.Dialogue(dialogue: "How",
                                                buttonA: DialogueViewController.Button(buttonLabel: "Tell me more",
                                                                                       buttonAction: 1,
                                                                                       type: .nextMessages),
                                                buttonB: DialogueViewController.Button(buttonLabel: "Turn down this case",
                                                                                       buttonAction: 999,
                                                                                       type: .nextMessages),
                                                delay: 2.0,
                                                type: .button)
                
            ]
        }
        return messageArray
    }
}
