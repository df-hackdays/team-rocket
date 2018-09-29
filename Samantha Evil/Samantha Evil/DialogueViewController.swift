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
            }
        }

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shownDialogueArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chiefCell", for: indexPath) as? ChiefTableViewCell
        
        let dialogue = shownDialogueArray[indexPath.row]
        
        cell?.dialogueLabel.text = dialogue.dialogue
        cell?.alpha = 0.0
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
            cell?.alpha = 1.0
        }, completion: nil)
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

class ChiefTableViewCell: UITableViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var dialogueLabel: UILabel!
}





