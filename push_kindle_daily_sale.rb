require 'open-uri'
require 'nokogiri'
require 'im-kayac'

USERNAME = ENV['IM_KAYAC_USERNAME'].freeze
PASSWORD = ENV['IM_KAYAC_PASSWORD'].freeze

URL = 'http://www.amazon.co.jp/b?_encoding=UTF8&node=3338926051'.freeze

def make_message_from(doc)
  title = doc.xpath('//h3').text
  author_and_price = doc.xpath('//p')[0].text
  title + "\n" + author_and_price
end

begin
  doc = Nokogiri::HTML(open(URL))
  message = make_message_from(doc)
  p ImKayac.to(USERNAME).password(PASSWORD).post(message)
rescue => e
  STDERR.puts e
end
