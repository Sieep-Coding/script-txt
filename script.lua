local input = 'accessions.txt'
local output = 'accessions.csv'

local csv = require("csv")
local file = io.open(input, "rb")
if not file then
    error("Not the correct input file")
end
if file then
    print("Accepted txt")
    local lines = {}
    for line in io.lines(file) do
        lines[#lines + 1] = line
    end
    return lines
end
print("Finished output:", output, "from input:", input)
