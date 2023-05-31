# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET to /" do
    it "returns 200 OK with the right content" do
      # Send a GET request to /
      # and returns a response object we can test.
      response = get('/')
      # Assert the response status code and body.
      expect(response.status).to eq(200)
      expect(response.body).to eq("Hello Heather")
    end
  end

    context "Get to /name" do
     it 'returns 200 Ok and returns the name' do
      response = get('/name', name: "Julia")
         expect(response.status).to eq(200)
         expect(response.body).to eq("Julia")
       end 
     end

     context "Get to /names" do 
        it "returns 200 OK and returns the names" do
            response = get('/names', name1: "Julia", name2: "Mary", name3: "Karim")
            expect(response.status).to eq(200)
            expect(response.body).to eq("Julia, Mary, Karim")
        end 
    end 

    context "Post to /sort-names" do 
        it "returns 200 ok and returns the sorted names" do 
            response = post('/sort-names', names: "Joe,Alice,Zoe,Julia,Kieran")
            expect(response.status).to eq(200)
            expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
        end 
    end 

     context "Post to /hello" do 
        it 'returns 200 OK' do 
            response = post('/hello')
            expect(response.status).to eq(200)
            expect(response.body).to eq("hello")
        end 
     end 

    #  context "Post to /sort-names" do
    #     it 'returns 200 Ok and returns the names sorted' do
    #      response = post('/sort-names', names: "Alice")
    #         expect(response.status).to eq(200)
    #         #expect(response.body).to eq("Alice") #,Joe,Julia,Kieran,Zoe")
    #       end 
    #     end

end
#   context "POST to /submit" do
#     it "returns 200 OK with the right content" do
#       # Send a POST request to /submit
#       # with some body parameters
#       # and returns a response object we can test.
#       response = post("/submit", name: "Dana", some_other_param: 12)

#       # Assert the response status code and body.
#       expect(response.status).to eq(200)
#       #expect(response.body).to eq("Hello Dana")
#     end
#   end