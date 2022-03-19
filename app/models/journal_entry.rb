class JournalEntry < ApplicationRecord
	validates_presence_of :field_1, :field_2, :field_3
end
