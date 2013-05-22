#Install REST Client 
# -- gem install rest-client 
#Change status update with REST API Call 
#Call put method with status_id to update status


require 'rubygems'
require 'rest_client'
@res=RestClient.put 'http://localhost:3000/issues/25.json?key=5219f71f37de9f84563ffe60674851c0a17e881a', File.read('demo'), :content_type => 'application/json'
puts "Response Code :"
puts @res.code
@getcall = RestClient.get 'http://localhost:3000/issues/25.json?key=5219f71f37de9f84563ffe60674851c0a17e881a'
puts "**************"
puts @getcall
puts "*************"

