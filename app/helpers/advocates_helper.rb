module AdvocatesHelper
 	def grab_one_rep
		x = @my_advocate.get_raw_data_from_sunglight.first
		"#{x["title"]} #{x["first_name"]} #{x["last_name"]}"
	end

	def rep_address
		@my_advocate.get_raw_data_from_sunglight.first["office"]
	end
end
