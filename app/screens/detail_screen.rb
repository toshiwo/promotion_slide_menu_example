class DetailScreen < ProMotion::Screen

  attr_accessor :color_name

  def on_load
    view.backgroundColor = UIColor.send self.color_name
  end

end
