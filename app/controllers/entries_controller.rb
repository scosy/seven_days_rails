class EntriesController < ApplicationController
	def index
		@entries = JournalEntry.all
		@entries = @entries.order(:created_at)

		@today = Date.today
	end

	def new
	end

	def edit
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
end