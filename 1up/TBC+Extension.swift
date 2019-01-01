import UIKit
import With
import Spatial

extension UITabBarController {
   /**
    * Creates a popover tag
    */
   func createPopoverTag(){
      let tagView:PopoverTag = .init(text:"♥ 4",style:PopoverTag.defaultStyle,alignment:.bottom)
      self.view.addSubview(tagView)
      tagView.activateAnchor { view in
         let offset:CGFloat = -self.tabBar.frame.height - UIApplication.shared.statusBarFrame.height/*To get above the tabBar element*/
         return Constraint.anchor(view, to: self.view, align: .bottomCenter, alignTo: .bottomCenter, offset:.init(x:0,y:offset))
      }
      tagView.hide()/*Set init state to hidden*/
      tagView.intro()/*Begins the looping animation*/
   }
}