note
	description: "Summary description for {NUMBER_RAISER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	NUMBER_RAISER

feature
	raise_to_the_power(base: INTEGER; power: INTEGER): INTEGER
require else power_isnt_negative: power >= 0;

	deferred
	end

end
