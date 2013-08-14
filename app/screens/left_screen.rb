class LeftScreen < ProMotion::Screen
  title 'left screen'

  def on_load
    view.backgroundColor = UIColor.whiteColor

    change_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    change_button.setTitle("change center", forState:UIControlStateNormal)
    change_button.addTarget(self,
      action: "change_center_screen",
      forControlEvents: UIControlEventTouchUpInside)
    change_button.sizeToFit
    change_button.frame = CGRectMake(10, 10, 150, 30)

    self.view.addSubview change_button
  end

  def change_center_screen
    app_delegate = UIApplication.sharedApplication.delegate
    current_panel = self.sidePanelController.centerPanel.topViewController

    if current_panel.is_a? MainTableScreen
      screen = DetailScreen.new nav_bar: true, color_name: :whiteColor
    else
      screen = MainTableScreen.new nav_bar: true
    end

    self.sidePanelController.centerPanel = screen.navigation_controller
  end

end
