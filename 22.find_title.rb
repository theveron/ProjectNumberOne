# Method name: find_title
# Inputs:      A URL
# Returns:     The contents of the <title>...</title> tag at that URL
# Prints:      Nothing

require "open-uri"
require "Nokogiri"

def find_title(url)
    docs = Nokogiri::HTML(open(url)).title

    return docs.to_s
end

if __FILE__ == $PROGRAM_NAME
    # Some sanity checks!
  
    p find_title("https://www.google.com") == "Google"
    p find_title("https://www.yahoo.com") == "Yahoo"
  
    # this link, depends on the country you are in 
    p find_title("https://www.facebook.com") == "Facebook - Log masuk atau daftar"
  end