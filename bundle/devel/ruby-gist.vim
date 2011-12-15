"
"        VIM.command(cmd)                      # execute an ex command
"        num = VIM::Window.count               # gets the number of windows
"        w = VIM::Window[n]                    # gets window "n"
"        cw = VIM::Window.current              # gets the current window
"        num = VIM::Buffer.count               # gets the number of buffers
"        b = VIM::Buffer[n]                    # gets buffer "n"
"        cb = VIM::Buffer.current              # gets the current buffer
"        w.height = lines                      # sets the window height
"        w.cursor = [row, col]                 # sets the window cursor position
"        pos = w.cursor                        # gets an array [row, col]
"        name = b.name                         # gets the buffer file name
"        line = b[n]                           # gets a line from the buffer
"        num = b.count                         # gets the number of lines
"        b[n] = str                            # sets a line in the buffer
"        b.delete(n)                           # deletes a line
"        b.append(n, str)                      # appends a line after n
"        line = VIM::Buffer.current.line       # gets the current line
"        num = VIM::Buffer.current.line_number # gets the current line number
"        VIM::Buffer.current.line = "test"     # sets the current line number

function! VimGist()

ruby << EOF


        require('rubygems'); gem('gist', '2.0.3'); require('gist')

        #puts "Loaded Gist version #{Gist::VERSION}"

        class VimGist

          def initialize

             log_file = "gist.log"

             @git = "git@gist.github.com:"

             @buf = VIM::Buffer.current
             @log = File.open(log_file, "a+")

          end

          def write
             @url = Gist.write([:input=>"Testing Vist\n"]);
             @log.puts("#{@url}\t#{@buf.name}");
             @log.flush
             puts("#{@buf.name} => #{@url}");
          end

          def delog(f=@buf.name)
             @log.each { |l| puts l.split if l=~/#{f}/ }
          end

        end

        test = VimGist.new
        #test.write
        test.delog

EOF

endfunction

"
