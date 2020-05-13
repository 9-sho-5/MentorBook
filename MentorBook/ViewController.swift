//
//  ViewController.swift
//  MentorBook
//
//  Created by Kusunose Hosho on 2020/05/13.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "webS,webD"))
        
        setUI()
    }

    @IBAction func pre() {
        index = index - 1
        if index < 0 {
            index = 2
        }
        setUI()
    }
    
    @IBAction func next() {
        index = index + 1
        if index == 3 {
            index = 0
        }
        setUI()
    }

}

