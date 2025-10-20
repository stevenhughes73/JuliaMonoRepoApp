using Documenter

makedocs(;
    sitename="Julia Monorepo App - Documentation Hub",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://stevenhughes73.github.io/JuliaMonoRepoApp",
    ),
    pages=[
        "Documentation Hub" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stevenhughes73/JuliaMonoRepoApp",
    devbranch="main",
)