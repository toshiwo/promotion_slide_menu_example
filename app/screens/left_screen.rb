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
      screen = DetailScreen.new color_name: :whiteColor
      screen.on_load if screen.respond_to? :on_load

      self.sidePanelController.centerPanel.setViewControllers [ screen ], animated: false

      self.sidePanelController._placeButtonForLeftPanel # TODO:
    else
      screen = MainTableScreen.new
      screen.on_load if screen.respond_to? :on_load

      self.sidePanelController.centerPanel.setViewControllers [ screen ], animated: false

      self.sidePanelController._placeButtonForLeftPanel # TODO:
    end
  end

end
