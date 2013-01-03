
require 'treetop'
require File.expand_path(File.join(File.dirname(__FILE__), 'parse_types.rb'))

#from https://github.com/aarongough/treetop-sexp-parser under MIT
class Parser

  Treetop.load(File.expand_path(File.join(File.dirname(__FILE__), 'smsgrammar.treetop')))
  @@parser = SMSMessageParser.new
  
  def self.parse(data)
  
    tree = @@parser.parse(data.strip)
    
    if(tree.nil?)
      raise Exception, "Parse error at offset: #{@@parser.index}; reason: #{@@parser.failure_reason}"
    end
    
    # clean up the tree by removing all nodes of default type 'SyntaxNode'
    self.clean_tree(tree)
    
    return tree
  end
  
  private
  
    def self.clean_tree(root_node)
      return if(root_node.elements.nil?)
      root_node.elements.delete_if{|node| node.class.name == "Treetop::Runtime::SyntaxNode" }
      root_node.elements.each {|node| self.clean_tree(node) }
    end

end
