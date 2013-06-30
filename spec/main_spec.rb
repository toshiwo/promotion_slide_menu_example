describe "Application 'slide_menu_example'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  describe 'rootViewController' do

    it 'should be instalce of JASidePanelController' do
      view_controller = @app.windows.first.rootViewController
      view_controller.should.be.instance_of JASidePanelController
    end
  end

  describe 'leftPanel' do

    it 'should be instalce of ProMotion::NavigationController' do
      left_panel = @app.windows.first.rootViewController.leftPanel
      left_panel.should.be.instance_of ProMotion::NavigationController
    end
  end

  describe 'centerPanel' do

    it 'should be instalce of NSKVONotifying_UINavigationController' do
      center_panel = @app.windows.first.rootViewController.centerPanel
      center_panel.should.be.instance_of NSKVONotifying_UINavigationController
    end
  end

  describe 'rightPanel' do

    it 'should be instalce of RightScreen' do
      right_panel = @app.windows.first.rootViewController.rightPanel
      right_panel.should.be.instance_of RightScreen
    end
  end

end
