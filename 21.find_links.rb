# Method name: find_links
# Inputs:      A website URL
# Returns:     An array of all link URLs on the input website
# Prints:      Nothing

require "open-uri"
require "nokogiri"

def find_links(url)
    docs = Nokogiri::HTML(open(url).read)
    urls = docs.search('a').map{ |tag|
        case tag.name.downcase
        when 'a'
            tag['href']
        end
    }
    return urls
end


find_links("http://www.cnn.com/").each do |url|
  puts url
end


