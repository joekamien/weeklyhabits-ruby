#!/usr/local/bin/ruby -w

#function to take a filename and day of the week and print relevant tasks for that day
def parse(filename, today)
  $projectname = /data\/(.*)\.txt/.match(filename)[1]
  $projectname ||= $filename
  including = false
  IO.foreach(filename) do |line|
    line.chomp!
    if line == today
      including = true
    elsif !/\s+.*/.match(line)
		# the line did not start with whitespace, so this is the start of another day
      including = false
    elsif including
		#the line started with whitespace, and including is set to true, so print it
      puts $projectname + " - " + line.strip
    end
  end
end

#find the current day of the week
wday = Time.new.wday
days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
today = days[wday]

# iterate through files in the "data" directory and run the "parse" function on each one
Dir.glob("data/*") do |filename|
  parse(filename, today)
end
