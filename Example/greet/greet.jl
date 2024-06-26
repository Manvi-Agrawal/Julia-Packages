import Pkg
Pkg.activate("..")

using Example

a = Example.greet()
println(a)