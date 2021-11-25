require 'faraday'
require 'json'
class JobsApiService
  def initialize(keyword, location, profile)
    @keyword = keyword
    @location = location
    @profile = profile
  end

  def call
    jobs = JSON.parse(payload)['results']
    jobs.each do |response|
      create_postings(response)
    end
  end

  def payload
     headers = {
      Authorization: 'cdbc09e80ceb6d16e8a24076c07148946384ce6c'
     }
     baseUrl = "https://findwork.dev/api/jobs/?location=london&search=full-stack&sort_by=relevance"
     puts "fetching jobs"
    response = Faraday.get(baseUrl) do |req|
      req.params['limit'] = 100
      req.headers['Authorization'] = ENV['FIND_WORK_API']
    end
    response = response.body
  end

  def create_postings(response)
    format_response_company = response["company_name"]&.split(' ')&.first
    @company = Company.find_by(name: format_response_company)
    @company = Company.create(name: format_response_company,
     address: response['location'],
     logo: response['logo']) unless @company

    posting = Posting.create!(
       field: @profile.field,
       job_title: response['role'],
       contract_types: response['employment_type'],
       locations: ["#{response['location']},#{'Remote' if response['remote']}"],
       description: response['text'].split('<br>').join(' '),
       company: @company,
       photo: "https://source.unsplash.com/weekly?#{response['role'].split(' ').first}"
      )
    puts posting.job_title
  end
end
