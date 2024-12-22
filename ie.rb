require 'httparty'

response = HTTParty.get 'https://indianexpress.com/section/explained/feed'
raise if response.code != 200
File.write('explained.xml', response.body)


response = HTTParty.get 'https://indianexpress.com/section/opinion/feed/'
raise if response.code != 200
File.write('opinion.xml', response.body)
