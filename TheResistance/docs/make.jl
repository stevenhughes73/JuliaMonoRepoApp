using TheResistance
using Documenter

DocMeta.setdocmeta!(TheResistance, :DocTestSetup, :(using TheResistance); recursive=true)

makedocs(;
    modules=[TheResistance],
    authors="Steve Hughes",
    sitename="TheResistance.jl",
    format=Documenter.HTML(;
        canonical="https://stevenhughes73.github.io/TheResistance.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/TheResistance.jl",
    devbranch="master",
)
