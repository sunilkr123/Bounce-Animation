# Core_Animation
1.for bounce the UIbutton

//this is the action to bounce the button

@IBAction func Bebounce(_ sender: UIButton) {

        let bounds = sender.bounds
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
            sender.bounds = CGRect(x: bounds.origin.x-60, y: bounds.origin.y, width: bounds.size.width+100, height: bounds.size.height+5)
        }) { (success:Bool) in
            UIView.animate(withDuration: 1, animations: {
                sender.bounds = bounds
            })
        }
    }

## Preview 1
<img src="https://raw.githubusercontent.com/sunilkr123/Bounce-Animation/master/Attachment/gif_xcode.gif" width="300" height="600">


## Preview 2


<img src="https://raw.githubusercontent.com/sunilkr123/Bounce-Animation/master/Attachment/bounce.gif" width="300" height="600">
