
require 'nokogiri'
require 'open-uri'
require 'pry'

job_title = 'developer'
location = 'barcelona'

url = "https://www.jobfluent.com/en/empleos-barcelona/q=#{job_title}"
html_file = open(url).read
html_doc = Nokogiri.HTML(html_file)

# @company_name = html_doc.search('.panel-body h3').each { |e| puts e.text.strip.split(" en ")[1] }
# @salary = html_doc.search('.panel-body span .text-dark').each do |e|
#   range_array = e.text.strip.split(" ")
#    x = (range_array[1][0,2]).to_i
#    y = (range_array[4][0,2]).to_i
#  puts average_salary = ((x + y)/ 2)* 1000
#   end
# @company_logo = html_doc.search('.panel-body .offer-logo img').each { |e| puts e[:src] }

# @job_title = html_doc.search('.panel-body .label-category').each { |e| puts e.text.strip }


@company_seed = html_doc.search('.panel-body').each do |card|
  # ------------company name ----------
  name = card.search('h3').text.strip.split(" en ")[1]
  # ------------company logo ----------
  logo = card.search('.offer-logo img')[:src]
  #new company
  company = Company.new(name: name, logo: logo)
  company.save
  puts name
  # # ----------job title -----------
  # job_title = card.search('.label-category')text.strip
  # #----------salary ----------------
  # salary = card.search('span .text-dark').text.strip.split(" ")
  # salary_range = (salary[4][0,2]).to_i
  # salary_max = salary_range * 1000
  # # --------- experience ---------
  # #new posting
  # posting = Posting.new(job_title: job_title, salary_max: salary_max, location: location)
end

binding.pry




