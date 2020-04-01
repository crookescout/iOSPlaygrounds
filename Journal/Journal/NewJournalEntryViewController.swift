//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by Scout Crooke on 3/30/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    var journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
