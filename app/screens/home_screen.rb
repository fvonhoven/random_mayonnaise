class HomeScreen < PM::Screen
  title "Random Mayonaise"
  stylesheet HomeStylesheet

  def on_load
    #set_nav_bar_button :left, system_item: :camera, action: :nav_left_button
    #set_nav_bar_button :right, title: "Right", action: :nav_right_button

    append(UILabel, :status_label)
    append(UIButton, :reg_button).on(:tap) do |sender|
      mp "Button was tapped"
    end.on(:touch_down) do |sender|
      mp "Button was pressed"
    end
    append(UIButton, :reg_button_2).on(:tap) do |sender|
      mp "Button was tapped"
    end.on(:touch_down) do |sender|
      mp "Button was pressed"
    end
  end






  def nav_left_button
    mp 'Left button'
  end

  def nav_right_button
    mp 'Right button'
  end


end
