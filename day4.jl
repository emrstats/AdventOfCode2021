using DelimitedFiles
using CSV
using DataFrames

day4_test_bingo = readdlm("input_day4_test.txt")[1,1]
day4_test_board = readdlm("input_day4_test.txt")[1]

day4_CSV = CSV.read("input_day4_test.txt", skipto = 2, delim = ' ', DataFrame)