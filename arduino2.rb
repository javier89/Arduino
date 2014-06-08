require 'artoo'

connection :arduino, :adaptador => :firmata, :port => '/dev/tty.usbmodem1411'
device :led, :driver => :led, :pin => 13

work do 
	every 1.second do 
		led.on? ? led.off : led.on 
	end 
end
