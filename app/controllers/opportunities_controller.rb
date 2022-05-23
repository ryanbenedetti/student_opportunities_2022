class OpportunitiesController < ApplicationController
    #before_filter :authenticate_user!, :only => [:new, :edit, :create, :destroy]
    #before_filter :check_admin, :only => [:new, :edit, :create, :destroy]
  
    #require_admin needs to be defined in the application controller level
    # before_action :require_admin, except: [:index, :show, :help]
  
    def index
      @total = Opportunity.all.size
      @search = Opportunity.ransack(params[:q])
      @opportunities = @search.result
    
      # @current_user = current_user
    
     # check to see if the current_user is an admin    
      #if not current_user
      
        # Filter what end user sees by if it's "published" or if it's "expired"
        # @opportunities = @opportunities.where(is_published: true)
        # # delete_if method is deprecated: @opportunities.delete_if {|opp| parse_deadline_date(opp.deadline).nil? or ((Time.now > parse_deadline_date(opp.deadline) and opp.respect_deadline)) }
        # @opportunities = @opportunities.reject {|opp| opp.deadline.nil? or ((Time.now > opp.deadline and opp.respect_deadline)) }
      
    end
 
    def show
      # @current_user = current_user
      @opportunity = Opportunity.find(params[:id])
      @levels = @opportunity.levels
    end
  
    def edit
      @opportunity = Opportunity.find(params[:id])
    end
  
    def update
      @opportunity = Opportunity.find(params[:id])
      if @opportunity.update(opportunity_params)
        @opportunity.save_by(current_user)
        redirect_to @opportunity, notice: "Opportunity successfully updated!"
      else
        render :edit
      end
    end
  
    def new
      @opportunity = Opportunity.new
    end
  
    def create
      @opportunity = Opportunity.new(opportunity_params)
      if @opportunity.save
        #  @opportunity.save_by(current_user)
         redirect_to @opportunity, notice: "Opportunity successfully created!"
      else
         render :new
      end
    end
  
    def destroy
     @opportunity = Opportunity.find(params[:id])
     @opportunity.destroy
     redirect_to opportunities_url, alert: "Opportunity successfully deleted!"
    end
  
  
  private
  
    def opportunity_params
      params.require(:opportunity).
                            permit(:award_name, :subject_area, :year_to_apply, :deadline, :other_req, :sponsor, :amount, :state, :min_gpa, :contact, :keywords, :opportunity_type, :website, :website_link_text, :is_published, :admin_notes, :respect_deadline, :citizenship, :date_reopens, :updated_by, level_ids: [])
    end
    
  #  def check_admin
  #  if current_user
  #     return
  #  else
  #     redirect_to root_url
  #  end
  # end
    
    # For now, checks if deadline string follows specific datetime format (month/day/year)
    # and returns equivalent Time object, otherwise, returns nil
    # def parse_deadline_date(str)
      # Need the rescue, becuase an invalid string returns stacktrace barf.
     # return Time.strptime(str, "%m/%d/%Y") rescue nil
    # end
  end
  