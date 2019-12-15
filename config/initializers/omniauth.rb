Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV["LI_ID"], ENV["LI_KEY"]
end
