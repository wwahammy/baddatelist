module HandleHelper
	require_relative 'parser/parser'
	def parse(data)
		return Parser.parse(data)
	end
end
