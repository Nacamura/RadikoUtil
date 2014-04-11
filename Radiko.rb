class Radiko
	def initialize(channel, duration, start_time, file_name)
		@channel = channel
		@duration = duration
		@start_time = start_time
		@file_name = file_name
	end

	def call
		system("./Radiko.sh #{@channel} #{@duration} #{@start_time} #{@file_name} &")
	end

end