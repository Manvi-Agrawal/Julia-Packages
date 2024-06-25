using Example

@testset "Testset 3" begin
    @test "Hello world!" == Example.greet()
    @test_throws MethodError Example.greet("Antonia")
end