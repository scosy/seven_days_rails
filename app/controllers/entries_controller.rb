class EntriesController < ApplicationController
	def index
		@entries = JournalEntry.all
	end

	def new
	end

	def edit
	end
end