# weeklyhabits-ruby

## Summary
There are certain weekly habits I'm trying to build. This is a simple Ruby script that can be run daily to indicate what's on the agenda for that day.

## Description
It usually makes sense to keep habits organized by project. For example a file like cleaning.txt, might contain the following:

	Monday
		dust
	Tuesday
		clean bathrooms and kitchen sinks
	etc.

When viewing habits, however, it usually makes more sense to view them by day. For example, on Monday it would be nice to see all the habits (across all projects) which are scheduled for Monday.

## Usage
The script expects a directory called "data" containing project files named "<project-name>.txt". Each project file should be organized as follows:

	Name of day (e.g., "Monday")
		(whitespace) Task 1 for that day
		(whitespace) Task 2 for that day
		etc.
	Name of another day (e.g., "Tuesday")
		(whitespace) Task 1 for that day
		(whitespace) Task 2 for that day
		etc.

When run, the script will iterate across all project files in the data directory. For each project with a task for today, it will print to standard output as follows:
> (project name) - (task name)

## LICENSE
(The MIT License)

Copyright © 2015 Joseph Kamien

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.