def attributes_index(attributes, model)
  attributes_array = []
  models = model.all

  models.each do |model|
    posting.attributes.each do |attribute|
      attributes_array << attribute if attributes_array.exclude?(attribute)
    end
  end
end

# FOR EXAMPLE:

# attributes_index(languages, Posting)

# languages_array = []
# postings = Posting.all

# postings.each do |posting|
#   posting.languages.each do |language|
#     languages_array << language if languages_array.exclude?(language)
#   end
# end
