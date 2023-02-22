note
	description: "Summary description for {CALCULATOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CALCULATOR

create
	first_constructor

feature {NONE}
	numbers_reader: INPUTNUMBERREADER;

feature {NONE}
	number_raiser: NUMBER_RAISER;

feature {NONE}
	sender: MESSAGE_SENDER_TO_USER;

feature first_constructor(
		m_numbers_reader: INPUTNUMBERREADER;
		m_number_raiser: NUMBER_RAISER;
		m_sender: MESSAGE_SENDER_TO_USER)

	do
		numbers_reader := m_numbers_reader;
		number_raiser := m_number_raiser;
		sender := m_sender;
	end

feature start_program_to_calculate_power
	local
		base_and_power: ARRAY[INTEGER];
		base, power: INTEGER;
		base_to_the_power: INTEGER;
	do
		base_and_power := numbers_reader.read_numbers("Enter the base and then power to which you want to raise it: ", 2);
		base := base_and_power[0];
		power := base_and_power[1];

		base_to_the_power := number_raiser.raise_to_the_power(base, power);

		sender.send_message_to_user(base.out + " to the power of " +
		power.out + " = " + base_to_the_power.out);
	end

end
