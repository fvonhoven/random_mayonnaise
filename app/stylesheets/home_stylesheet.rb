class HomeStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def status_label st
    st.frame = {t: 150, w: screen_width - 10, h: 200, centered: :horizontal}
    st.text = "Making the world a better place, starts with one more smiling face. And Ronald's smile is just the thing, To make everybody sing! Put a smile on, put a smile on, everybody come on! Put a smile on!"
    st.font = font.medium
    st.number_of_lines = 5
    st.adjusts_font_size = true
    st.text_alignment = :center
  end
    def reg_button st
        st.frame = {l: 25, t: 475, w: 150, h: 150}
        st.corner_radius = 10
        st.background_color = color.gray
        st.text = "Send Mayonnaise !!!!!!"
        st.color = color.black
        st.font = font.system(18)
        st.number_of_lines = 2
        #st.view.setTitle("Impressive!", forState:UIControlStateHighlighted)
        st.text_highlighted = "Impressive!"# NOT SUPPORTED IN THIS RMQ VERSION!!!!!!!!
      end
      def reg_button_2 st
        st.frame = {l: 200, t: 475, w: 150, h: 150}
        st.corner_radius = 10
        st.background_color = color.red
        st.text = "WTF?!?!"
        st.color = color.black
        st.font = font.system(18)
        #st.view.setTitle("Impressive!", forState:UIControlStateHighlighted)
        #st.text_highlighted = "Impressive!" NOT SUPPORTED IN THIS RMQ VERSION!!!!!!!!
      end
end
