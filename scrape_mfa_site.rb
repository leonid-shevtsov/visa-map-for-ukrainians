require 'open-uri'
require 'nokogiri'
require 'yaml'
require 'json'

POLICY_URL = 'http://mfa.gov.ua/ua/consular-affairs/travel-advice/entering-foreign-countries'

doc = Nokogiri::HTML(open(POLICY_URL).read)
body = doc.at_css('.page-open .content')

headers = body.css('h3.spoiler-title')
contents = body.css('div.spoiler-body')

country_names = YAML.load_file('ua_country_names.yml')

data = {}

headers.zip(contents).each do |(header, contents)|
  ua_name = header.text.strip
  iso_code = country_names.key(ua_name)
  unless iso_code
    puts "Can't parse - #{ua_name}"
    next
  end
  # note second char in TR is a nbsp
  lines = contents.text.strip.tr("\r ", " ").split("\n").map(&:strip)
  unless lines[0].start_with?("Режим в'їзду:", "Режим в’їзду:")
    puts "Can't parse - #{ua_name}"
    next
  end
  policy = lines[0]
  i = 1
  while lines[i] && !lines[i].start_with?("Місце розташування")
    policy << " " << lines[i]
    i += 1
  end
  match = /^Режим в.їзду:\s*(Візовий|Безвізовий)(.*)$/.match policy
  unless match
    puts "Can't parse - #{ua_name}\n#{policy}"
    next
  end

  status = {'Візовий' => 'visa', 'Безвізовий' => 'visaFree'}[match[1]]
  note = match[2]
  if note.index(/оформлюється в аеропорт(і|у)/) ||
     note.index('Можливе оформлення візи на кордоні')
    status = 'airport'
  end
  if note.index('електронною поштою') ||
     note.index('Можливе оформлення електронного дозволу') ||
     note.index('оформлення візи має бути попередньо узгоджено з імміграційною службою')
    status = 'online'
  end
  data[iso_code] = {
    status: status,
    note: note
  }
end

File.open('scraped_data.json', 'w') { |f| f.puts JSON.pretty_generate(data) }
