class Timer
	attr_accessor :seconds, :padded

    def initialize
		@seconds = 0
		set_time
  	end

  	def set_time
		if @seconds.to_i <= 60
  			@hr = 0
  			@min = 0
  			@sec = @seconds
		else
			get_second
			get_minute
			get_hour
		end
  	end

	def get_second
		@min = @seconds/60 
		@sec = (@seconds-(@min*60))
		@sec
	end

	def get_minute
		@hr = @min/60
		@min = (@min - (@hr*60))
		@min
	end

	def get_hour
  		@hr
	end

  	def time_string
		set_time
  		if @seconds == 0
  			return "00:00:00"
		else
			return padded(@hr) + ":" + padded(@min) + ":" + padded(@sec)
		end
  	end

  	def padded(number)
		if number.to_i <= 9
			number = "0" + number.to_s
		end
		number.to_s
	end

	def seconds
		return @seconds
	end
end
