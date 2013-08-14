class AppDelegate

  attr_accessor :window

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @viewController = JASidePanelController.new

    ## leftPanel
    left_screen = LeftScreen.new nav_bar: true
    @viewController.leftPanel = left_screen.navigation_controller

    ## centerPanel
    screen = MainTableScreen.new nav_bar: true
    @viewController.centerPanel = screen.navigation_controller

    ## rightPanel
    right_screen = RightScreen.new
    @viewController.rightPanel = right_screen

    frame = UIScreen.mainScreen.bounds
    self.window = UIWindow.alloc.initWithFrame(frame)
    self.window.rootViewController = @viewController
    self.window.makeKeyAndVisible

    true
  end
end
