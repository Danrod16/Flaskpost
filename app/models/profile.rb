class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # belongs_to :user // REPLACED BY 'USER' METHOD BELOW
  has_many :matches

  # FORM COLLECTION ARRAYS
  INDUSTRIES = ["Information Technology", "Health Care", "Retail", "Financial Services", "Automotive", "Education", "Advertising", "Government Administration", "Real Estate", "Telecommunications", "Energy", "Food & Beverages", "Management Consulting", "Pharmaceuticals", "Logistics", "Architecture", "Fashion", "Non-profit", "Media", "Legal Services", "Tourism", "Aviation", "Recruitment", "Graphic Design", "Public Relations", "Philanthropy" ].sort
  JOBS = ["Account Manager", "Area Sales Manager", "Artificial Intelligence Engineer", "Back-End Developer", "Brand Manager", "Brand Strategist", "Cloud Architect", "Communications Director", "Computer Scientist", "Content Marketing Manager", "Content Strategist", "Continuous Improvement Consultant", "Copywriter", "Customer Service", "Data Entry", "DevOps Engineer", "Digital Marketing Manager", "Director of Inside Sales", "eCommerce Marketing Specialist", "Front-End Developer", "Full-Stack Developer", "Graphic Designer", "Information Security Analyst", "IT Manager", "Marketing Research Analyst", "Media Relations Coordinator", "Operations Manager", "Product Manager", "Public Relations Specialist", "Sales Analyst", "Sales Associate", "Scrum Master", "Social Media Specialist", "Software Engineer", "SQL Developer", "Technical Support Specialist", "UX Designer", "UI Developer", "Video Game Writer", "Web Designer", "Web Developer"].sort
  EXPERIENCES = ['Entry', 'Junior', 'Mid', 'Senior'].sort
  LANGUAGES = ["English", "French", "German", "Spanish", "Italian", "Greek", "Dutch"].sort
  LOCATIONS = ["Madrid", "London", "Berlin", "Amsterdam", "Paris", "Barcelona", "Dublin"].sort
  CONTRACTS = ['Full-time', 'Part-time', 'Freelance'].sort

  # FORM VALIDATIONS
  validates :field, inclusion: { in: INDUSTRIES }, presence: true, allow_blank: false, if: :active_or_first?
  validates :job_title, inclusion: { in: JOBS }, presence: true, allow_blank: false, if: :active_or_first?
  validates :experience, inclusion: { in: EXPERIENCES }, presence: true, allow_blank: false, if: :active_or_first?

  validates :languages, presence: true, allow_blank: false, if: :active_or_second?
  validates :locations, presence: true, allow_blank: false, if: :active_or_second?
  validates :contract_types, presence: true, allow_blank: false, if: :active_or_second?
  validates :salary_min, presence: true, allow_blank: false, if: :active_or_second?
  validates :salary_min, numericality: { only_integer: true }, if: :active_or_second?

  validates :description, presence: true, allow_blank: false, if: :active_or_third?
  validates :description, length: { maximum: 180, minimum: 20 }, if: :active_or_third?

  # VALIDATES USER
  validates :user_id, presence: true, if: :active?

  after_create :compute_score
  before_save :remove_empty_string

  # VALIDATION METHODS
  def active?
    status == 'active'
  end

  def user
    User.find(self.user_id) if active?
  end

  def active_or_first?
    status.include? "first" || active?
  end

  def active_or_second?
    status.include?('second') || active?
  end

  def compute_score
    stats = []
    types = ["contract_types", "languages", "locations", "experience"]
    types.each do |type|
      query = { field: field }
      query[type.to_sym] = send(type)
      stat = Posting.where(query).count.to_f / Posting.where(field: field).count.to_f
      stats << (stat.nan? ? 0 : stat)
    end

    self.score = ((stats.sum.to_f / stats.count.to_f) * 100).round.to_i
    save
  end

  def active_or_third?
    status.include?('third') || active?
  end

  private

  def remove_empty_string
    %w[contract_types languages locations].each do |attributes|
      self[attributes] = self[attributes]&.reject(&:blank?)
    end
  end
end
