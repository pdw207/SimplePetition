class Advocate < ActiveRecord::Base
	require 'congress'
	Congress.key = "SECRETKEY"

	def full_name
		"#{self.first_name} #{self.last_name}"
	end


	def get_raw_data_from_sunglight
		Congress.legislators_locate(self.zip_code.to_s.rjust(5, '0')).results
	end
	# def find_elected_officials
	# 	legislators = get_raw_data_from_sunglight
	#     legislator_names = legislators.collect do |legislator|
 #        " #{legislator.title} #{legislator.first_name} #{legislator.last_name}"
	# 	end
	# end

	def state_name
		Congress.legislators_locate(self.zip_code.to_s.rjust(5, '0')).results.fetch(1)["state_name"]
	end

	def leglislation
		pc_bills = Congress.bills_search(:query => "peace corps").results
	end
end
