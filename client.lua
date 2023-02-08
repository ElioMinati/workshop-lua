
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
    local lines = {}

    for l in io.lines(fileName) do
        table.insert(lines, l)
    end
    local i = 1
    while lines[i] ~= nil do
        if (#lines[i] % 2) == 0 then
            print(lines[i])
        end
        i = i + 1
    end
end

function Pet(name, status)
    local pet = {
        name = name,
        status = status,
        check = function(animal)
            print(tostring(animal.name) .. " is " .. tostring(animal.status))
        end,
        feed = function(animal)
            print(tostring(animal.name) .. " has been fed")
        end
    }

    return pet
end

function Dog(name, status, breed)
    local animal = Pet(name or "Meimei", status)

    animal.breed = "Australian Shepherd"
    animal.loyalty = 0
    animal.feed = function(animal)
        animal.loyalty = animal.loyalty + 5
        print(tostring(animal.name) .. " has been fed")
    end
    animal.isLoyal = function(animal)
        if animal.loyalty >= 10 then
            print(tostring(animal.name) .. " is loyal")
        else
            print(tostring(animal.name) .. " is NOT loyal")
        end
    end
    animal.bark = function(animal)
        print("Woof Woof")
    end
    return animal
end

local t1 = {x = 5, y = 10}
local t2 = {x = 15, y = 15}

mt = {}

mt.__add = function(tabA, tabB)
    return {x = tabA.x + tabB.x, y = tabA.y + tabB.y}
end

setmetatable(t1, mt)

local t3 = t1 + t2
print(t3.y)
