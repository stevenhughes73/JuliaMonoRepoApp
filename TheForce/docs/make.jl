using Documenter
using TheForce

makedocs(;
    modules=[TheForce],
    sitename="TheForce.jl",
    source="src",          # Change from "docs/src" to just "src"
    build="build",         # Change from "docs/build" to just "build"
    checkdocs=:none,
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://stevenhughes73.github.io/JuliaMonoRepoApp/theforce",
    ),
    pages=[
        "Home" => "index.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/JuliaMonoRepoApp",
    devbranch="main",
    target="build",
    dirname="theforce"
)