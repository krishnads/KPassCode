# KPassCode
A simple StackView to be used for Passcode or OTP fields. Completely customisable with separate classes and very easy to use. Just Drag and drop with 2 lines of code.


# Separate files are there to fully customize the control


# Demo Video

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/16478904/60504460-47567800-9cdf-11e9-93c3-32f55e592144.gif)

# Screenshots


![Simulator Screen Shot - iPhone X - 2019-07-02 at 15 27 50](https://user-images.githubusercontent.com/16478904/60503764-fc883080-9cdd-11e9-8cfa-86658bb37afb.png)


![Simulator Screen Shot - iPhone X - 2019-07-02 at 15 18 33](https://user-images.githubusercontent.com/16478904/60503130-b2527f80-9cdc-11e9-9e81-36dd1892a703.png)


![Simulator Screen Shot - iPhone X - 2019-07-02 at 15 22 03](https://user-images.githubusercontent.com/16478904/60503359-2c830400-9cdd-11e9-9eff-e74f1a887205.png)


# Usage -  It's simpler than anything:

# Steps:

# 1. Simply Drag and drop KPin folder in your project.
# 2. Drag horizontol UIStackView from UIElement Collection into the storyboard and Give it custom name as 'PinView'

![Screen Shot 2019-07-02 at 3 40 05 PM](https://user-images.githubusercontent.com/16478904/60504711-baf88500-9cdf-11e9-89d4-79f140c3861e.png)

# 3. In you viewControoler write the following code to initialize the PinView

    @IBOutlet weak var viewOTP: PinView!

# For Simple one: 

          viewOTP.setUpView()
          viewOTP.textFields[0].becomeFirstResponder()

# For More Content: 


        var config:PinConfig!     = PinConfig()
        config.otpLength          = .four
        config.dotColor           = .black
        config.lineColor          = #colorLiteral(red: 0.8265652657, green: 0.8502194881, blue: 0.9000532627, alpha: 1)
        config.spacing            = 20
        config.isSecureTextEntry  = false
        config.showPlaceHolder    = false
        
        viewOTP.config = config
        viewOTP.setUpView()
        viewOTP.textFields[0].becomeFirstResponder()
        
        
        
 ![Screen Shot 2019-07-02 at 3 44 12 PM](https://user-images.githubusercontent.com/16478904/60504950-4a059d00-9ce0-11e9-8a31-7d2eb0ec6a3a.png)
        
        
        
        
        
