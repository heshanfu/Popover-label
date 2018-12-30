import UIKit
import With
import Spatial

//l,r,t,b
//Make room for drawing arrow
//rotate cgPath

extension ViewController{
   /**
    * Creates CustomShapedShadowView instance
    */
   func createCustomShapedShadowView() -> CustomShapedShadowView{
      let customView = CustomShapedShadowView(frame:.init(origin:.zero,size:.init(width:200,height:200)))
      let roundCorners:UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
      customView.setAttributes(roundCorners, radius: 10)
      self.view.addSubview(customView)
      return customView
   }
   /**
    *
    */
   func createCustomShape(){
      let points:[CGPoint] = [.init(x: 0, y: 0),.init(x: 100, y: 0),.init(x: 100, y: 100),.init(x: 00, y: 100)]
      let cgPath = CGPathParser.polyLine(points:points, close: true, offset: .init(x: 0, y: 0))
      /**/
      let shapeLayer:CAShapeLayer = .init()
      CGPathModifier.fill(shape: shapeLayer, cgPath: cgPath, fillColor: .green)
      self.view.layer.addSublayer(shapeLayer)
   }
   /**
    *
    */
   func createRoundedRect(){
      let cgPath = CGRectParser.roundRect(rect:.init(origin: .zero, size: .init(width:100,height:100)), radius: 20)
      /**/
      let shapeLayer:CAShapeLayer = .init()
      CGPathModifier.fill(shape: shapeLayer, cgPath: cgPath, fillColor: .green)
      self.view.layer.addSublayer(shapeLayer)
   }
   /**
    *
    */
   func createTriangleShape(){
      let rect:CGRect = .init(origin:.zero,size:.init(width:50,height:50))
      let p1:CGPoint = .init(x:rect.width/2,y:0)
      let p2:CGPoint = .init(x:rect.width,y:rect.height)
      let p3:CGPoint = .init(x:0,y:rect.height)
      let points:[CGPoint] = [p1,p2,p3]//[.init(x: 0, y: 0),.init(x: 100, y: 0),.init(x: 100, y: 100),.init(x: 00, y: 100)]
      let cgPath = CGPathParser.polyLine(points:points, close: true)
      /**/
      let shapeLayer:CAShapeLayer = .init()
      CGPathModifier.fill(shape: shapeLayer, cgPath: cgPath, fillColor: .green)
      self.view.layer.addSublayer(shapeLayer)
   }
   /**
    *
    */
   func createEquilateralTriangle(){
      let triangle = TriangleMath.equilateralTriangle(height: 100)
      let points:[CGPoint] = [triangle.a,triangle.b,triangle.c]
      let cgPath = CGPathParser.polyLine(points:points, close: true)
      /**/
      let shapeLayer:CAShapeLayer = .init()
      CGPathModifier.fill(shape: shapeLayer, cgPath: cgPath, fillColor: .green)
      self.view.layer.addSublayer(shapeLayer)
   }
   
}
