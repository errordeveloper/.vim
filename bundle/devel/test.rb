require 'rubygems'; gem('gist', '2.0.3'); require('gist');

#v = Gist.write([:input=>"Another test!\n"]);

#puts "Returned #{v}"

class Testing

  def initialize
    @log = File.open("testing.log", "a+")
    puts "File #{@log} has been opened!"
  end

  def put
    @log.puts("Testing ...\n");
  end

  def finalize
    puts "File #{@log} will be closed!"
    @log.close
  end

end


x = Testing.new
x.put
