require 'artoo'

connection :arduino, adaptor: :firmata, port:  '/dev/tty.usbmodem1411'
device :board, :driver => :device_info
device :led, :driver => :led, :pin => 13

work do 
	puts "firmware name #{board.firmware_name}"
	puts "firmata version #{board.version}"

	every 1.second do
		led.toggle
	end
end