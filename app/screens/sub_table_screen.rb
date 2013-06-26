class SubTableScrenn < ProMotion::TableScreen

  attr_accessor :parent_id

  def will_appear
    update_table_view_data self.table_data
  end

  def on_load
    self.title = "sub table: #{ parent_id }"
  end

  def table_data
    [
      {
        title: :details,
        cells: [
          { title: 'Black', action: :open_detail_screen, arguments: { color_name: :blackColor } },
          { title: 'Light Gray', action: :open_detail_screen, arguments: { color_name: :lightGrayColor } },
          { title: 'Dark Gray', action: :open_detail_screen, arguments: { color_name: :darkGrayColor } },
          { title: 'White', action: :open_detail_screen, arguments: { color_name: :whiteColor } },
        ],
      },
    ]
  end

  def open_detail_screen args
    open DetailScreen.new color_name: args[:color_name]
  end

end
