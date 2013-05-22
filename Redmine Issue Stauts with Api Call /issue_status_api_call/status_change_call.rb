#Install REST Client 
# -- gem install rest-client 
#Change status update with REST API Call 
#Call put method with status_id to update status
#26,2,13

require 'rubygems'
require 'rest_client'
@res=RestClient.put 'http://redmine.vreasy.com/redmine/issues/2420.json?key=81ca42c61c6d827e7732bf4f2ad3dec13a50ee6e', File.read('demo'), :content_type => 'application/json'
puts "Responce Code is"
puts @res.code
@getcall = RestClient.get 'http://redmine.vreasy.com/redmine/issues/2420.json?key=81ca42c61c6d827e7732bf4f2ad3dec13a50ee6e'
puts "**************"
puts @getcall
puts "*************"

