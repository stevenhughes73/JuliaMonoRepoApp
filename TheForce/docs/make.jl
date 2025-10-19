using TheForce
using Documenter

DocMeta.setdocmeta!(TheForce, :DocTestSetup, :(using TheForce); recursive=true)

makedocs(;
    modules=[TheForce],
    authors="Steve Hughes",
    sitename="TheForce.jl",
    format=Documenter.HTML(;
        canonical="https://stevenhughes73.github.io/TheForce.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/TheForce.jl",
    devbranch="master",
)
