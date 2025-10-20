using Documenter
using TheForce

makedocs(;
    modules=[TheForce],
    sitename="TheForce.jl",
    source="docs/src",
    build="docs/build",
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