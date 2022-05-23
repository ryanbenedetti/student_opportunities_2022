module OpportunitiesHelper

    # RJB: Turning this helper off and using just the strings with a validation rather than the values
    # but keeping this helper Bryce wrote in case we need it later.
    # def citizen_select_options
       # List from former requirements: 
       # None = 1, U.S. Citizen = 2, Permanent Resident = 3
       # return [''] + select_options_helper(['None', 'U.S. Citizen', 'Permanent Resident'], 1)
       #
       # New requirements list: No Requirement = 1, US Citizen = 2, US Citizen or Permanent Resident = 3
       # return [''] + select_options_helper(['No Requirement', 'US Citizen', 'US Citizen or Permanent Resident'], 1)
    # end
     
     def level_select_options
       # Undergraduate = 1, High School = 2, Graduate Student = 3, Alumni = 4
       return [''] + select_options_helper(['Undergraduate', 'High School', 'Graduate Student', 'Alumni'], 1)
     end
   
     # Maps select options to value of their array index + start value
     def select_options_helper(arr, start)
       return arr.map.with_index(start).to_a
     end
   
     # If the website_link_text field is blank, set the clickable text to the award name
      def link_text_to_display(opportunity)
       opportunity.website_link_text.blank? ? opportunity.award_name : opportunity.website_link_text
      end
   
   end
   