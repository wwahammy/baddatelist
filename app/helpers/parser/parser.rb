require_relative 'parser_error'
#from https://github.com/aarongough/treetop-sexp-parser under MIT
class Parser

  require 'treetop'
  
  Treetop.load(File.expand_path(File.join(File.dirname(__FILE__), 'smsgrammar')))
  @@parser = SMSMessageParser.new
  
  def self.parse(data)
    tree = @@parser.parse(data)
    
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
