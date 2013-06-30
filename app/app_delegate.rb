class AppDelegate

  attr_accessor :window

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @viewController = JASidePanelController.new

    ## leftPanel
    @left_screen = LeftScreen.new nav_bar: true
    @left_screen.on_load if @left_screen.respond_to? :on_load
    @viewController.leftPanel = @left_screen.navigation_controller

    ## centerPanel
    @screen = MainTableScreen.new
    @screen.on_load if @screen.respond_to? :on_load
    @viewController.centerPanel = UINavigationController.alloc.initWithRootViewController(@screen)

    ## rightPanel
    @right_screen = RightScreen.new
    @right_screen.on_load if @right_screen.respond_to? :on_load
    @viewController.rightPanel = @right_screen

    frame = UIScreen.mainScreen.bounds
    self.window = UIWindow.alloc.initWithFrame(frame)
    self.window.rootViewController = @viewController
    self.window.makeKeyAndVisible

    true
  end
end
