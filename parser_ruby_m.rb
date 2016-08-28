require 'rexml/document'
include REXML

file = File.new("mddrive.xml")
doc = Document.new(file)
file.close

file_result = File.new('result_parsing.txt','w')

doc.elements.each("system/point/template/template"){ 
   |e| file_result.puts ("template name= " + e.attributes["name"]) 
}
file_result.close

file_result = File.open('result_parsing.txt','r')
file_result.each {
   |line| puts line
 }
file_result.close

