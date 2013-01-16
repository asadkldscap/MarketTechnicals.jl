using Oil

my_tests = ["test/movingaverages.jl" ]

print_with_color("Running tests: ", :cyan) 
println("")

for my_test in my_tests
    print_with_color("**   ", :magenta) 
    print_with_color("$my_test", :blue) 
    println("")
    include(my_test)
end
