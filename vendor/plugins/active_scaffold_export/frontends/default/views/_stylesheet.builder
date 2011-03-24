xml.instruct!

xml.tag! :"xsl:stylesheet", :version => "1.0", :"xmlns:xsl" => "http://www.w3.org/1999/XSL/Transform" do
  xml.tag! :"xsl:template", :match => "/" do
    xml.tag! "html" do
      xml.tag! "body" do
        xml.tag! "h2", active_scaffold_config.list.user.label
        xml.tag! "table", :border => "1" do
          xml.tag! "tr", :bgcolor => "#{@bgcolor}" do
            @export_columns.each do |column|
              xml.tag! "th", :align=>"left" do 
                xml.text! "#{ActiveSupport::Inflector.humanize(column.name)}" 
              end
            end
          end  
          xml.tag! "xsl:for-each", :select => "#{ActiveSupport::Inflector.camelize(ActiveSupport::Inflector.pluralize(active_scaffold_config.model_id))}/#{ActiveSupport::Inflector.camelize(active_scaffold_config.model_id)}" do
            xml.tag! "tr" do
              @export_columns.each do |column|
                xml.tag! "td" do
                  xml.tag! "xsl:value-of", :select=>"#{column.name}"
                end
              end  
            end  
          end  
        end
      end
    end
  end
end

