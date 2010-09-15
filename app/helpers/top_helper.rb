module TopHelper

 def date_field(object_name, method, options = {})
  result = text_field(object_name, method, options)
  contents = "Event.observe(window, 'load', function() {";
  styleId = options[:id] ? options[:id] : object_name.to_s + '_' + method.to_s
  contents << "  new InputCalendar('#{styleId}', {lang:'ja'});";
  contents << "});";

  (result + javascript_tag(contents))
 end
end
