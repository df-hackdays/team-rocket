//
//  DialogueViewController.swift
//  Samantha Evil
//
//  Created by Samuel Chung on 2018-09-28.
//  Copyright © 2018 Kaan Ersan. All rights reserved.
//

import UIKit

class DialogueViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var dialogueTableView: UITableView!
    
    private var dialogueArray: [Dialogue] = []
    private var shownDialogueArray: [Dialogue] = []
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    enum ChatType {
        case message, button
    }
    
    enum ButtonType {
        case nextMessages, openUrl
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
        spinner.isHidden = true
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
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath) as? ButtonTableViewCell
            
            cell?.buttonA.setTitle(dialogue.buttonA?.buttonLabel, for: .normal)
            cell?.buttonA.messagePack = dialogue.buttonA?.buttonAction
            cell?.buttonA.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
            cell?.buttonA.buttonKind = dialogue.buttonA?.type
            cell?.buttonA.cell = cell
            
            cell?.buttonB.setTitle(dialogue.buttonB?.buttonLabel, for: .normal)
            cell?.buttonB.messagePack = dialogue.buttonB?.buttonAction
            cell?.buttonB.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
            cell?.buttonB.buttonKind = dialogue.buttonB?.type
            cell?.buttonB.cell = cell
            
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
        case .message:
            return 120
        default:
            return 240
        }
    }
    
    @objc func buttonAction(_ sender: ChoiceButton!) {
        
        switch sender.buttonKind {
        case .openUrl?:
            //open url
            let url = URL(string: "http://www.youtube.com")
            UIApplication.shared.open(url!, options: [:]) { (completed) in
                //go to url
            }
        default:
            dialogueArray = ChatMessages.getMessagePack(pack: sender.messagePack!)
            showDialogue()
            sender.cell?.buttonA.isEnabled = false
            sender.cell?.buttonB.isEnabled = false
        }
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
    var choiceSelected: Bool = false
}

class ChoiceButton: UIButton {
    var messagePack: Int?
    var cell: ButtonTableViewCell?
    var buttonKind: DialogueViewController.ButtonType?
}





