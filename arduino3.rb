require 'artoo'

connection :arduino, adaptor: :firmata, port: '/dev/tty.usbmodem1411'
device :led, :driver => :led, :pin => 2 


work do 
	every 1.second do 
		led.on? ? led.off : led.on
	end
end