module SMSMessage

	
	
	class Message
		attr_accessor :child
	end
	
	
	
	class Request
		attr_accessor :id
	end
	
	class Report
		attr_accessor :id, :problems
	end
	
	class Instruction
	end
	
	class Phone
		attr_accessor :value
	end
	
	class Email
		attr_accessor :value
	end
	
	class License
		attr_accessor :state, :value
	end
end
