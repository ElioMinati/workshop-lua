
function main()
    local i = 1
    local endl = false

    while i <= 100 do
        endl = false
        if (i % 3) == 0 and (i % 5) == 0 then
            print("ThreeFive")
        elseif (i % 3) == 0 then
            print("Three")
        elseif (i % 5) == 0 then
            print("Five")
        end
        i = i + 1
    end
end

function Countword(sentence, target)
    local counter = 0
    
    for word in sentence:gmatch("%S+") do
        if word == target then
            counter = counter + 1
        end
    end
    return counter
end

function Calculator(...)
    local total = 0
    local args = {...}

    for k, v in pairs(args) do
        if (v >= 'a' and v <= 'z') or (v >= 'A' and v <= 'Z') then
            return "Invalid parameter: " .. v
        end
        total = total + v
    end
    return total
end

function ParseFile(fileName)

end

print(Calculator("4", '5', 'a'))
