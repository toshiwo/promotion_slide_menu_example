class MainTableScreen < ProMotion::TableScreen
  title 'main screen'

  def table_data
    [
      {
        cells: [
          { title: '1st', action: :open_sub_screen, arguments: { id: 1 } },
          { title: '2nd', action: :open_sub_screen, arguments: { id: 2 } },
          { title: '3rd', action: :open_sub_screen, arguments: { id: 3 } },
          { title: '4th', action: :open_sub_screen, arguments: { id: 4 } },
        ],
      },
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

  def open_sub_screen args
    open SubTableScrenn.new parent_id: args[:id]
  end

  def open_detail_screen args
    open DetailScreen.new color_name: args[:color_name]
  end

end
