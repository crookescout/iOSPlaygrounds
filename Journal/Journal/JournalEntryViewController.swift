//
//  JournalEntryViewController.swift
//  Journal
//
//  Created by Scout Crooke on 3/20/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let journalEntry = journalEntry {
            journalEntryContents.text = journalEntry.contents
            navigationItem.title = journalEntry.description
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
