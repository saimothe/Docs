
 require 'rubygems'

 require 'rest_client'


 response = RestClient.get "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906"
 => "{\"issue\":{\"description\":\"test_description\",\"status\":{\"name\":\"New\",\"id\":1},\"created_on\":\"2013/04/23 06:29:42 +0000\",\"start_date\":\"2013/04/23\",\"assigned_to\":{\"name\":\"ajay cipher\",\"id\":46},\"author\":{\"name\":\"ajay cipher\",\"id\":46},\"subject\":\"test_feature\",\"custom_fields\":[{\"value\":\"\",\"name\":\"URL\",\"id\":1}],\"spent_hours\":0.0,\"updated_on\":\"2013/04/24 06:49:36 +0000\",\"done_ratio\":0,\"id\":2362,\"priority\":{\"name\":\"Normal\",\"id\":4},\"tracker\":{\"name\":\"Feature\",\"id\":2},\"project\":{\"name\":\"Test Project\",\"id\":10}}}"

values = "{\"issue\":{\"description\":\"test_description\",\"status\":{\"name\":\"In Tetsing\",\"id\":1},\"created_on\":\"2013/04/23 06:29:42 +0000\",\"start_date\":\"2013/04/23\",\"assigned_to\":{\"name\":\"ajay cipher\",\"id\":46},\"author\":{\"name\":\"ajay cipher\",\"id\":46},\"subject\":\"test_feature\",\"custom_fields\":[{\"value\":\"\",\"name\":\"URL\",\"id\":1}],\"spent_hours\":0.0,\"updated_on\":\"2013/04/24 06:49:36 +0000\",\"done_ratio\":0,\"id\":2362,\"priority\":{\"name\":\"Normal\",\"id\":4},\"tracker\":{\"name\":\"Feature\",\"id\":2},\"project\":{\"name\":\"Test Project\",\"id\":10}}}"


 response = RestClient.put "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906", values => " "
 response = RestClient.get "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906" => "{\"issue\":{\"description\":\"test_description\",\"status\":{\"name\":\"New\",\"id\":1},\"created_on\":\"2013/04/23 06:29:42 +0000\",\"start_date\":\"2013/04/23\",\"assigned_to\":{\"name\":\"ajay cipher\",\"id\":46},\"author\":{\"name\":\"ajay cipher\",\"id\":46},\"subject\":\"test_feature\",\"custom_fields\":[{\"value\":\"\",\"name\":\"URL\",\"id\":1}],\"spent_hours\":0.0,\"updated_on\":\"2013/04/24 07:01:01 +0000\",\"done_ratio\":0,\"id\":2362,\"priority\":{\"name\":\"Normal\",\"id\":4},\"tracker\":{\"name\":\"Feature\",\"id\":2},\"project\":{\"name\":\"Test Project\",\"id\":10}}}"



ticketData = {"issue"=> {"id"=> "2362","description"=> "sample test"}}.to_json
NoMethodError: undefined method `to_json' for {"issue"=>{"id"=>"2362", "description"=>"sample test"}}:Hash
   

ticketData = {"issue"=> {"id"=> "2362","description"=> "sample test"}}.to_json
 => "{\"issue\":{\"id\":\"2362\",\"description\":\"sample test\"}}"
 response = RestClient.put "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906", ticketData
 => " "

response = RestClient.get "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906"
 => "{\"issue\":{\"description\":\"test_description\",\"status\":{\"name\":\"New\",\"id\":1},\"created_on\":\"2013/04/23 06:29:42 +0000\",\"start_date\":\"2013/04/23\",\"assigned_to\":{\"name\":\"ajay cipher\",\"id\":46},\"author\":{\"name\":\"ajay cipher\",\"id\":46},\"subject\":\"test_feature\",\"custom_fields\":[{\"value\":\"\",\"name\":\"URL\",\"id\":1}],\"spent_hours\":0.0,\"updated_on\":\"2013/04/24 07:06:00 +0000\",\"done_ratio\":0,\"id\":2362,\"priority\":{\"name\":\"Normal\",\"id\":4},\"tracker\":{\"name\":\"Feature\",\"id\":2},\"project\":{\"name\":\"Test Project\",\"id\":10}}}"

response = RestClient.get "http://redmine.vreasy.com/redmine/issues/2362.json?key=8a83aa3361ff3d2c94604408bb7afc74139a0906"
 => "{\"issue\":{\"description\":\"test_description\",\"status\":{\"name\":\"New\",\"id\":1},\"created_on\":\"2013/04/23 06:29:42 +0000\",\"start_date\":\"2013/04/23\",\"assigned_to\":{\"name\":\"ajay cipher\",\"id\":46},\"author\":{\"name\":\"ajay cipher\",\"id\":46},\"subject\":\"test_feature\",\"custom_fields\":[{\"value\":\"\",\"name\":\"URL\",\"id\":1}],\"spent_hours\":0.0,\"updated_on\":\"2013/04/24 07:06:00 +0000\",\"done_ratio\":0,\"id\":2362,\"priority\":{\"name\":\"Normal\",\"id\":4},\"tracker\":{\"name\":\"Feature\",\"id\":2},\"project\":{\"name\":\"Test Project\",\"id\":10}}}"

