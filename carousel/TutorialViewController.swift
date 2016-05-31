//
//  TutorialViewController.swift
//  carousel
//
//  Created by Nicholas Wallen on 5/30/16.
//  Copyright © 2016 Nicholas Wallen. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        
        pageControl.numberOfPages = 4
        button.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        if page == 3{
            pageControl.hidden = true
            UIView.animateWithDuration(0.2){
                self.button.alpha = 1
            }
        } else {
            pageControl.hidden = false
            UIView.animateWithDuration(0.1){
                  self.button.alpha = 0
            }
          
        }
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
