//
//  DialogueViewController.swift
//  Samantha Evil
//
//  Created by Samuel Chung on 2018-09-28.
//  Copyright © 2018 Kaan Ersan. All rights reserved.
//

import UIKit
import UserNotifications
import AVKit
import AVFoundation

public let kNotification = Notification.Name("resumeMessages")

class DialogueViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var dialogueTableView: UITableView!
    
    private var dialogueArray: [Dialogue] = []
    private var shownDialogueArray: [Dialogue] = []
    
    enum ChatType {
        case message, button, notification
    }
    
    enum ButtonType {
        case nextMessages, openUrl, video
    }
    
    struct Dialogue {
        var dialogue: String
        var buttonA: Button? //receive chat message pack #
        var buttonB: Button?
        var delay: Double //delay in seconds
        var type: ChatType //0 is pure dialogue, // 1 is a dialogue that shows 2 buttons
    }
    
    struct Button {
        var buttonLabel: String
        var buttonAction: Int
        var type: ButtonType
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(reactToNotification(_:)), name: kNotification, object: nil)
        dialogueArray += ChatMessages.getMessagePack(pack: 0)
        showDialogue()
    }
    
    func showDialogue() {
        var timer: Double = 0
        for dialogue in dialogueArray {
            timer += dialogue.delay
            DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
                self.shownDialogueArray.append(dialogue)
                self.dialogueTableView.beginUpdates()
                let indexPath = IndexPath(row: self.shownDialogueArray.count - 1, section: 0)
                self.dialogueTableView.insertRows(at: [indexPath], with: UITableViewRowAnimation.fade)
                self.dialogueTableView.endUpdates()
                self.dialogueTableView.layoutIfNeeded()
                self.dialogueTableView.scrollToRow(at: indexPath,
                                           at: UITableViewScrollPosition.bottom,
                                           animated: true)
            }
        }

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shownDialogueArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dialogue = shownDialogueArray[indexPath.row]
        
        switch dialogue.type {
        case .message:
            let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as? MessageTableViewCell
            cell?.dialogueLabel.text = dialogue.dialogue
            cell?.alpha = 0.0
            
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
                cell?.alpha = 1.0
            }, completion: nil)
            return cell!
        case .notification:
            let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as? MessageTableViewCell
            cell?.dialogueLabel.text = dialogue.dialogue
            cell?.alpha = 0.0
            sendDelayNotification(timeInSec: Double(dialogue.buttonB?.buttonAction ?? 5))
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
                cell?.alpha = 1.0
            }) { (completed) in
            }
            
            return cell!
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath) as? ButtonTableViewCell
            
            cell?.buttonA.setTitle(dialogue.buttonA?.buttonLabel, for: .normal)
            cell?.buttonA.messagePack = dialogue.buttonA?.buttonAction
            cell?.buttonA.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
            cell?.buttonA.buttonKind = dialogue.buttonA?.type
            cell?.buttonA.cell = cell
            cell?.buttonA.url = dialogue.dialogue
            
            cell?.buttonB.setTitle(dialogue.buttonB?.buttonLabel, for: .normal)
            cell?.buttonB.messagePack = dialogue.buttonB?.buttonAction
            cell?.buttonB.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
            cell?.buttonB.buttonKind = dialogue.buttonB?.type
            cell?.buttonB.cell = cell
            cell?.buttonB.url = dialogue.dialogue
            
            if indexPath.row == shownDialogueArray.count - 1 {
                cell?.buttonA.isEnabled = true
                cell?.buttonB.isEnabled = true
            }
            else {
                cell?.buttonA.isEnabled = false
                cell?.buttonB.isEnabled = false
            }
            
            cell?.alpha = 0.0
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
                cell?.alpha = 1.0
            }, completion: nil)
            return cell!
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let dialogue = shownDialogueArray[indexPath.row]
        switch dialogue.type {
        case .button:
            return 240
        default:
            return 120
        }
    }
    
    func playVideo(videoNumber: Int) {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "test", ofType:"mp4")!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc, animated: true) {
            vc.player?.play()
        }
    }
    
    @objc func buttonAction(_ sender: ChoiceButton!) {
        
        switch sender.buttonKind {
        case .openUrl?:
            //open url
            if let url = URL(string: sender.url ?? "") {
                UIApplication.shared.open(url, options: [:]) { (completed) in
                    //go to url
                }
            }
        case .video?:
            playVideo(videoNumber: sender.videoNumber ?? 0)

        default:
            dialogueArray = ChatMessages.getMessagePack(pack: sender.messagePack!)
            showDialogue()
            sender.cell?.buttonA.isEnabled = false
            sender.cell?.buttonB.isEnabled = false
        }
    }
    
    @objc func reactToNotification(_ sender: Notification) {
        dialogueArray = ChatMessages.getMessagePack(pack: 4)
        showDialogue()
    }
    
    func sendDelayNotification(timeInSec: Double) {
        let content = UNMutableNotificationContent()
        content.title = "You got a new message"
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInSec, repeats: false)
        
        let request = UNNotificationRequest(identifier: "delayNotification", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

class MessageTableViewCell: UITableViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var dialogueLabel: UILabel!
}

class ButtonTableViewCell: UITableViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var buttonA: ChoiceButton!
    @IBOutlet weak var buttonB: ChoiceButton!
}

class ChoiceButton: UIButton {
    var messagePack: Int?
    var cell: ButtonTableViewCell?
    var buttonKind: DialogueViewController.ButtonType?
    var url: String?
    var videoNumber: Int?
}





