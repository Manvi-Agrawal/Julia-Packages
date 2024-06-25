using Example

@testset "Testset 1" begin
    @test 2 == Example.simple_add(1, 1)
    @test 3.5 == Example.simple_add(1, 2.5)
        @test_throws MethodError Example.simple_add(1, "A")
        @test_throws MethodError Example.simple_add(1, 2, 3)
end

@testset "Testset 2" begin
    @test 1.0 == Example.type_multiply(1.0, 1.0)
        @test isa(Example.type_multiply(2.0, 2.0), Float64)
    @test_throws MethodError Example.type_multiply(1, 2.5)
end