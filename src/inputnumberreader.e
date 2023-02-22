note
	description: "Summary description for {INPUTNUMBERREADER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	INPUTNUMBERREADER


feature
	read_numbers(message_for_user: STRING; number_of_numbers: INTEGER): ARRAY[INTEGER]
require else number_of_numbers_at_least_1: number_of_numbers >= 1;
		deferred
		end



invariant
	invariant_clause: True -- Your invariant here

end
