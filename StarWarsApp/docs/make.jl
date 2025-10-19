using StarWarsApp
using Documenter

DocMeta.setdocmeta!(StarWarsApp, :DocTestSetup, :(using StarWarsApp); recursive=true)

makedocs(;
    modules=[StarWarsApp],
    authors="Steve Hughes",
    sitename="StarWarsApp.jl",
    format=Documenter.HTML(;
        canonical="https://stevenhughes73.github.io/StarWarsApp.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/StarWarsApp.jl",
    devbranch="master",
)
