class EntriesController < ApplicationController
	def index
		@entries = JournalEntry.all
		@entries = @entries.order(:created_at)

		@today = Date.today
	end

	def new
		@today = Date.today
	end

	def edit
		@entry = JournalEntry.find(params[:id])
		
		@today = @entry.created_at
	end

	def create
		permitted_params = params.permit(:field_1, :field_2, :field_3, :field_4, :field_5, :field_6)

		@entry = JournalEntry.create(permitted_params)

		if @entry.persisted?
			redirect_to entries_path
		else
			render :new
		end
	end

  def update
    # Process the incoming data
    permitted_params = params.require(:journal_entry).permit(:field_1, :field_2, :field_3, :field_4, :field_4, :field_5, :field_6)
    # params = {"field_1"=>"", "field_2"=>"", "field_3"=>"", "field_4"=>"", "field_5"=>"", "field_6"=>""}
    # Find the existing journal entry in the database
    @entry = JournalEntry.find(params[:id]) #params[:id] is pulled from the URL
    # We update our entry, and if no errors, redirect to entries_path
    if @entry.update(permitted_params) # this line saves the record and then checks if it went well.
    # If so, it redirects to index page if the creation was successful
      redirect_to entries_path # You can find this helper by executing the "rails routes" command in your terminal
    else
    # Refresh the page and specifiy an error if the creation was unsuccesful
      @day = @entry.created_at
      render :edit # This is the simplest way to reload the page, while keeping our entries
    end
  end
    
end