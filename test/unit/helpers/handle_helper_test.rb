require 'test_helper'

class HandleHelperTest < ActionView::TestCase
	test 'Simple Number Request' do
		result = parse('5031234567')
		assert result
	end 
	
	test 'Simple Number Request with beginning whitespace' do
		result = parse(' 5031234567')
		assert result
	end 
	
	test 'Simple Number Request with ending whitespace' do
		result = parse('5031234567  ')
		
		assert result
	end
	
	test 'Simple Number Request with both whitespace' do
		result = parse('  5031234567 ')
		assert result
	end
	
	test 'Simple email Request' do
	    result = parse('sample@sample.sample')
	    assert result
	end
	
	test 'license request' do
		result = parse('OR*sample')
		
		assert result
	end
	
	test 'phone report' do
		result = parse('5555555555 VI')
		rep = result.to_out
				
		assert_equal "Report", rep.class.name.split('::').last
		
		id = rep.id
		assert_equal "Phone", id.class.name.split('::').last
		
		assert_equal 1, rep.problems.length
		
		puts result.inspect
		
		assert_equal "VI", rep.problems.first
	end
	
	test 'instruction' do
		result = parse('')
		
		assert result
	end
end
