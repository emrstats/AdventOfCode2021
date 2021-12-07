using DelimitedFiles

day1 = readdlm("input_day1.txt", Int64)

function greater_than_prev(x)
    return(sum([1 for i in 2:length(x) if x[i] > x[i-1]]))
end

println(greater_than_prev(day1))

summed_window = Int64[]

for n in eachindex(day1)
    if (n+2) > length(day1)
        break
    end
    append!(summed_window, sum(day1[n:n+2]))
end

println(greater_than_prev(summed_window))