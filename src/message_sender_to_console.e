note
	description: "Summary description for {MESSAGE_SENDER_TO_CONSOLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MESSAGE_SENDER_TO_CONSOLE

inherit
	MESSAGE_SENDER_TO_USER

-- Ne treba redefine, jer je feature deferred kod MESSAGE_SENDER_TO_USER klase.
feature
	send_message_to_user(message: STRING)
		do
			IO.put_string(message);
		end

end
