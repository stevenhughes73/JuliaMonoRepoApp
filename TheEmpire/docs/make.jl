using TheEmpire
using Documenter

DocMeta.setdocmeta!(TheEmpire, :DocTestSetup, :(using TheEmpire); recursive=true)

makedocs(;
    modules=[TheEmpire],
    authors="Steve Hughes",
    sitename="TheEmpire.jl",
    format=Documenter.HTML(;
        canonical="https://stevenhughes73.github.io/TheEmpire.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/TheEmpire.jl",
    devbranch="master",
)
