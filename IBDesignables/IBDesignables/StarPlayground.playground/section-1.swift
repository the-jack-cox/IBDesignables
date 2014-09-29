// StarPlayground - A simple playground to experiment with how to draw a 5 pointed star within
// a view

import UIKit


class StarView : UIView {
    
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        var context = UIGraphicsGetCurrentContext();
        
        var red = UIColor.yellowColor().CGColor
        
        CGContextSetFillColorWithColor(context,red );
        
        let theta:Double = 2.0 * M_PI * (2.0 / 5.0)
        
        let r = Double(self.frame.size.width/2.0)
        
        let xCenter = self.frame.size.width/2.0
        let yCenter = self.frame.size.height/2.0
        
        CGContextMoveToPoint(context, xCenter, CGFloat(r + (Double(yCenter))))
        
        for (var k:Double=1; k<5; k++)
        {
            let x:CGFloat = CGFloat(r * sin(k * theta));
            let y:CGFloat = CGFloat(r * cos(k * theta));
            CGContextAddLineToPoint(context,
                x+xCenter,
                y+yCenter)
        }
        CGContextClosePath(context);
        CGContextFillPath(context);
    }
}


var star = StarView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

var star2 = StarView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
