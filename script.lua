local input = 'accessions.txt'
local output = 'accessions.csv'
-- local csv = require("csv")

local function read_file(lines)
    local file = io.open(input, "rb")
    if not file then
        error("Not the correct input file")
        return nil
    elseif file then
        print("Accepted txt")
        local lines = file:read("*a")
        file:close()
        return lines
    end
end

local content = read_file(input)
-- for k,v in pairs(content) do
--     print('line['.. k .. ']', v)
-- end
print("Finished output: ", output, "from input: ", input)
