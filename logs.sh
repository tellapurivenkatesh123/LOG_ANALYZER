#!/bin/bash
<< "end"
manually sorting the files using grep cammand.
grep -c is used to count the no of issues in the file
end

# grep "ERROR" application.log 
# grep "INFO" application.log
# grep "CRITICAL" application.log
 
# grep -c "FATAL" application.log

# find . -name "*.log" -mtime -1
