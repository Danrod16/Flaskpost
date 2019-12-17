class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # belongs_to :user // REPLACED BY 'USER' METHOD BELOW
  has_many :matches

  # FORM COLLECTION ARRAYS
  INDUSTRIES = ["Information Technology", "Health Care", "Retail", "Financial Services", "Automotive", "Education", "Advertising", "Government Administration", "Real Estate", "Telecommunications", "Energy", "Food & Beverages", "Management Consulting", "Pharmaceuticals", "Logistics", "Architecture", "Fashion", "Non-profit", "Media", "Legal Services", "Tourism", "Aviation", "Recruitment", "Graphic Design", "Public Relations", "Philanthropy" ].sort
  JOBS = ["Account Manager", "Area Sales Manager", "Artificial Intelligence Engineer", "Back-End Developer", "Biologist", "Brand Manager", "Brand Strategist", "Chemist", "Cloud Architect", "Columnist", "Communications Director", "Computer Scientist", "Content Creator", "Content Marketing Manager", "Content Strategist", "Continuous Improvement Consultant", "Copywriter", "Customer Service", "Data Entry", "Dental Hygienist", "DevOps Engineer", "Digital Marketing Manager", "Director of Inside Sales", "Doctor", "eCommerce Marketing Specialist", "Film Critic", "Front-End Developer", "Full-Stack Developer", "Geologist", "Ghostwriter", "Graphic Designer", "Information Security Analyst", "IT Manager", "Journalist", "Marketing Consultant", "Marketing Research Analyst", "Marketing Specialist", "Massage Therapy", "Media Relations Coordinator", "Medical Laboratory Tech", "Nurse", "Operations Manager", "Personal Trainer", "Pharmacist", "Physical Therapist", "Physicist", "Political Scientist", "Product Manager", "Proposal Writer", "Public Relations", "Public Relations Specialist", "Real Estate Broker", "Sales Analyst", "Sales Associate", "Sales Manager", "Sales Representative", "Screenwriter", "Scrum Master", "Social Media Assistant", "Social Media Specialist", "Sociologist", "Software Engineer", "Speechwriter", "SQL Developer", "Store Manager", "Technical Support Specialist", "Technical Writer", "Translator", "Travel Writer", "UX Designer & UI Developer", "Video Game Writer", "Web Designer", "Web Developer"].sort
  EXPERIENCES = ['Entry', 'Junior', 'Mid', 'Senior'].sort
  LANGUAGES = ["", "English", "French", "German", "Spanish", "Italian", "Greek", "Dutch"].sort
  LOCATIONS = ["", "Madrid", "London", "Berlin", "Amsterdam", "Paris", "Barcelona", "Dublin"].sort
  CONTRACTS = ["", 'Full-time', 'Part-time', 'Freelance'].sort

  # FORM VALIDATIONS
  validates :field, inclusion: { in: INDUSTRIES }, presence: true, allow_blank: false, if: :active_or_first?
  validates :job_title, inclusion: { in: JOBS }, presence: true, allow_blank: false, if: :active_or_first?
  validates :experience, inclusion: { in: EXPERIENCES }, presence: true, allow_blank: false, if: :active_or_first?

  validates :languages, inclusion: { in: LANGUAGES }, presence: true, allow_blank: false, if: :active_or_second?
  validates :locations, inclusion: { in: LOCATIONS }, presence: true, allow_blank: false, if: :active_or_second?
  validates :contract_types, inclusion: { in: CONTRACTS }, presence: true, allow_blank: false, if: :active_or_second?
  validates :salary_min, presence: true, allow_blank: false, if: :active_or_second?

  validates :description, presence: true, allow_blank: false, if: :active_or_third?

  validates :description, length: { maximum: 180, minimum: 20 }, if: :active_or_third?
  validates :salary_min, numericality: { only_integer: true }, if: :active_or_second?

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
