xml.instruct!
xml.instruct! :"xml-stylesheet", :type => "text/xsl", :href => "#{@stylesheet_file}" if @stylesheet_file

xml.tag! ActiveSupport::Inflector.camelize(ActiveSupport::Inflector.pluralize(active_scaffold_config.model_id)) do
  for record in @records 
    xml.tag! ActiveSupport::Inflector.camelize(active_scaffold_config.model_id) do
      # model columns
      @export_columns.each do |column|
        xml.tag!(column.name, get_export_column_value(record, column))
      end
    end  
  end
end
