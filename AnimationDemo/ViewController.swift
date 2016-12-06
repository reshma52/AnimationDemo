//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Reshma Dhomse on 10/3/16.
//  Copyright © 2016 Infojini,Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate {
private var lastContentOffset: CGFloat = 0
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstButton: UIButton!
     let myFirstButton = UIButton()
    var newValue: Int = 20
    @IBAction func firstButtonClick(_ sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
  
        myFirstButton.frame = CGRect(x:10, y:40, width:300, height:500)
        myFirstButton.setTitle("✸", for: .normal)
        myFirstButton.setTitleColor(UIColor.blue, for: .normal)
      scrollView .addSubview(myFirstButton)
        //scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 1500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func fiveButtonClick(_ sender: AnyObject) {
    }

   
    @IBAction func fourButtonClick(_ sender: AnyObject) {
    }
    @IBAction func thirdButtonClick(_ sender: AnyObject) {
    }

    @IBAction func secondButtonClick(_ sender: AnyObject) {
    }
  
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    
    {
        if (self.lastContentOffset > scrollView.contentOffset.y) {
            // move up
            print("move up")
           //  myFirstButton.frame = CGRect(x:10, y:40, width:300, height:500)
            myFirstButton.frame = CGRect(x:myFirstButton.frame.origin.x+3, y:40, width:300, height:500)
        }
        else if (self.lastContentOffset < scrollView.contentOffset.y)
        {
           print(newValue)
           // var  newFrame = firstButton.frame;
           // firstButton.frame.origin.x = firstButton.frame.origin.x+CGFloat(newValue)
           
            
             myFirstButton.frame = CGRect(x:myFirstButton.frame.origin.x-3, y:40, width:300, height:500)
            
            newValue += 5
           print("move down")
        }
        
        // update the new position acquired
        //self.lastContentOffset = scrollView.contentOffset.y
    }
    
    
  override func viewDidLayoutSubviews()
    {
     scrollView.contentSize = CGSize(width: 0, height: 1500)
        
   
    }
}

