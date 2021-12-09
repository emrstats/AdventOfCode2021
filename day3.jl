using DelimitedFiles

day3_test = [00100; 11110; 10110; 10111; 10101; 01111; 00111; 11100; 10000; 11001; 00010; 01010]
day3_test = [reverse(digits(i, pad = 5)) for i in day3_test]


day3 = readdlm("input_day3.txt", Int64)
day3 = [reverse(digits(i, pad = 12)) for i in day3]

#= sums_day3 = sum(day3, dims = 1)[1]

function gamma_eval(x, cond = 500)
    if x < cond return 0
    else return 1
    end
end

function epsilon_eval(x, cond = 500)
    if x < cond return 1
    else return 0
    end
end

gamma = join([gamma_eval(i) for i in reverse(sums_day3)])
epsilon = join([epsilon_eval(i) for i in reverse(sums_day3)])
println(parse(Int, gamma, base = 2))
println(parse(Int, epsilon, base = 2))

println(parse(Int, gamma, base = 2) * parse(Int, epsilon, base = 2)) =#

function oxygen_calc(x)
    iter = 1
    while length(x) > 1
        cond = length(x) / 2
        curr_sum = sum(x, dims = 1)[1][iter] >= cond
        x = [i for i in x if i[iter] == curr_sum]
        iter += 1
    end
    println(iter)
    return(join(x[1]))
end

function dioxide_calc(x)
    iter = 1
    while length(x) > 1
        cond = length(x) / 2
        curr_sum = sum(x, dims = 1)[1][iter] < cond
        x = [i for i in x if i[iter] == curr_sum]
        iter += 1
    end
    println(iter)
    return(join(x[1]))
end

println(parse(Int, oxygen_calc(day3), base = 2) * parse(Int, dioxide_calc(day3), base = 2))