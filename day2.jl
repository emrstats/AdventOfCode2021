using DelimitedFiles

day2 = readdlm("input_day2.txt")

function calc_movement(df)
    dist = 0
    depth = 0

    for r in eachrow(df) 
        m = r[2]
        if r[1] == "forward" dist += m end
        if r[1] == "down" depth += m end
        if r[1] == "up" depth -= m end
    end
    return(dist, depth)
end

x = calc_movement(day2)
println(x[1] * x[2])

function CalcMovementWithAim(df)
    dist = 0
    depth = 0
    aim = 0

    for r in eachrow(df) 
        m = r[2]
        if r[1] == "down" aim += m end
        if r[1] == "up" aim -= m end
        if r[1] == "forward"
            dist += m
            depth += (m * aim)
        end
    end
    return(dist, depth)
end

x = CalcMovementWithAim(day2)
println(x[1] * x[2])