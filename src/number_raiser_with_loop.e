note
	description: "Summary description for {NUMBER_RAISER_WITH_LOOP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NUMBER_RAISER_WITH_LOOP
inherit
	NUMBER_RAISER

-- Ne treba redefine, jer je ovaj feature deferred u NUMBER_RAISER klasi.
feature raise_to_the_power(base: INTEGER; power: INTEGER): INTEGER
	local
		i: INTEGER;
		rezultat: INTEGER;
	do
		from i:=0; rezultat := 1;
		until i = power
		loop
			rezultat := rezultat * base;
			i := i + 1;
		end
		Result := rezultat;
	end
end
