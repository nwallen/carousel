//
//  IntroViewController.swift
//  carousel
//
//  Created by Nicholas Wallen on 5/30/16.
//  Copyright © 2016 Nicholas Wallen. All rights reserved.
//

//    var yOffsets : [Float] = [-285, -240, -408, -415, -500, -480]
//    var xOffsets : [Float] = [-60, 45, 10, 100, -120, -75]
//    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
//    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]


import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        scrollView.contentSize = introImageView.image!.size
        scrollView.delegate = self
        transformTiles()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func transformTiles() {
        let tileViews = [tile1View, tile2View, tile3View, tile4View, tile5View, tile6View]
        
        var offset = CGFloat(scrollView.contentOffset.y)
        if offset > 568 {
            offset = 568
        }
        
        for i in 0...(tileViews.count - 1){
            let tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[i]), r2Max: 0)
            let ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[i]), r2Max: 0)
            let scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min:CGFloat(scales[i]) , r2Max:1 )
            let rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[i]), r2Max: 0)
            
            tileViews[i].transform = CGAffineTransformMakeTranslation(tx, ty)
            tileViews[i].transform = CGAffineTransformScale(tileViews[i].transform, scale, scale)
            tileViews[i].transform = CGAffineTransformRotate(tileViews[i].transform, rotation * CGFloat(M_PI / 180))
            
        }

    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        transformTiles()
    }
    
}
