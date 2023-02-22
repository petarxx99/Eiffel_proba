note
	description: "Summary description for {NUMBER_READER_FROM_CONSOLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NUMBER_READER_FROM_CONSOLE
inherit
	INPUTNUMBERREADER

-- ARRAY CLASS https://www.infor.uva.es/~felix/referencia_smart_eiffel/libraries/array.html

-- Ne treba redefine, jer je read_numbers deferred u INPUTNUMBERREADER klasi.
feature read_numbers(message_for_user: STRING; number_of_numbers: INTEGER): ARRAY[INTEGER]
	local
		i: INTEGER;
		numbers: ARRAY[INTEGER];
	do
		create numbers.make(0, number_of_numbers - 1);
		IO.put_string (message_for_user);

		IO.read_integer;
		numbers[0] := IO.last_integer;

		from i := 1
		until i = number_of_numbers
		loop
			IO.new_line;
			IO.put_string("Enter next number: ");
			IO.read_integer;
			numbers[i] := IO.last_integer;
			i := i + 1;
		end
		IO.new_line;
		Result := numbers;
	end


end
