module TestFoldsDagger
import FoldsDagger
using Test

@testset "$file" for file in sort([
    file for file in readdir(@__DIR__) if match(r"^test_.*\.jl$", file) !== nothing
])
    include(file)
end

if FoldsDagger.DaggerArrays !== nothing
    include("daggerarrays/runtests.jl")
end

end  # module
