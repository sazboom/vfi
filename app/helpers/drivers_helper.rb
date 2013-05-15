module DriversHelper
  def open_date
    lambda{ |date|
    form_tag("/") do
      select_tag "colors", "<option>Red</option><option>Green</option><option>Blue</option>".html_safe
    end
    }  
  end
end
