module RatingsHelper
  def rating_label obj
    case obj.severity
    when 'PG', 'PG13'
      label_color = 'warning'
    when 'R', 'XXX'
      label_color = 'danger'
    else
      label_color = 'default'
    end
    content_tag :span, obj.severity, class: "label label-#{label_color}"
  end
end
