//
//  ViewController.swift
//  PrimeiroProjeto
//
//  Created by Alexandre Maia on 23/11/2017.
//  Copyright © 2017 Alexandre Maia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPergunta: UILabel!
    @IBOutlet weak var imgQuadro: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblPergunta.text = "Em qual país fica este lugar?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ShowAnswer(_ sender: Any) {
        lblPergunta.text = "Estados Unidos"
    }
    
    @IBAction func HideImage(_ sender: Any) {
        imgQuadro.isHidden = true
    }
}

