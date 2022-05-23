class Opportunity < ApplicationRecord
    has_many :level_requirements, dependent: :destroy
    has_many :levels, through: :level_requirements
  
  
    # Set up arrays as constants for the Citizenship list ...
  
    CITIZENSHIP_LIST = ['No Requirement', 'US Citizen', 'US Citizen or Permanent Resident'] 
    
   # Second list as copy of first with a blank element added for search.
  
    CITIZENSHIP_SEARCH_LIST = CITIZENSHIP_LIST
    CITIZENSHIP_SEARCH_LIST.unshift('')
    
    # ... and use them as validations
  
      validates :citizenship, inclusion: { in: CITIZENSHIP_LIST }
  
  # Set up arrays as constants for the opportunity_type list ...
    
      OPPORTUNITY_TYPE_LIST = ['Scholarship', 'Undergraduate Research', 'Fellowship', 'Internship']
  
  
  # Second list as copy of first with a blank element added for search.
    
    OPPORTUNITY_TYPE_SEARCH_LIST = OPPORTUNITY_TYPE_LIST
    OPPORTUNITY_TYPE_SEARCH_LIST.unshift('')
    
  # ... and use them as validations
  
    validates :opportunity_type, inclusion: { in: OPPORTUNITY_TYPE_LIST }
  
  
    # more validations
  
     validates :award_name, :citizenship, :deadline, presence: true
  
    validates :website, format: { with: /\A(http|https):\/\/.+/,
  message: "URL needs to have http:\/\/ or https:\/\/ in front" }, allow_blank: true
      
end
