
Clean up the current Project.toml (I created one prematurely - we'll fix it)
Create Packages for each module and the application using PkgTemplates
   TheForce
   TheEmpire
   TheResistance
   StarWarsApp
Organize code into src directories for each module
Set up test files in test/ directories for each module
Create documentation structure in docs/ for each module
Refine GitHub Actions to work with the proper directory structure
Add package-level and project-level coverage reporting
Set up documentation generation

# Set up the appliation Monorepo

## Initialize a repo

https://www.youtube.com/watch?v=QVmU29rCjaA&t=526s

Init a repo following instructions from about 2:25 to ~3:30. 

## Create the "Base" package TheForce 

In VS Code, OpenFolder and open the root directory of the new repo

```julia
using PkgTemplates

t = Template(;
    user = "stevenhughes73",
    dir = pwd(),                # write into repo root
    authors = "Steve Hughes",
    julia_version = v"1.11",
    plugins = [
        License(; name = "MIT"),
        # Skip Git() here to avoid a nested .git inside modules
        # Skip GitHubActions() here; we'll add a monorepo CI file at repo root
        Documenter{GitHubActions}(),   # keep docs skeleton
        Develop(),
        CompatHelper(),          # helps manage [compat] entries
    ],
)
```

move in tests and docs code into module file and runtests.jl. 


## Create a package that depends on Base: TheEmpire

use same template as TheForce

Add TheForce as a dependency list for TheEmpire, and reexport its dependency on TheForce.

```julia
cd("TheEmpire")
using Pkg
Pkg.activate(".")
Pkg.develop(path="../TheForce")
Pkg.add("Reexport")
```
Migrate code tests into package TheEmpire

# Create repo level project to help manage dependencies at the App level. 

From the root directory (make sure you're in JuliaMonoRepoApp/)

```julia
julia> pwd()
julia> "C:\\Users\\steve\\Dev\\JuliaMonoRepoApp"
```
Create a basic Project.toml in current directory

```julia

using Pkg
Pkg.activate(".")  # This will create Project.toml if it doesn't exist
Pkg.develop(path="TheForce")
Pkg.develop(path="TheEmpire")
```

**UPDATE ROOT ENVIRONMENT DEPENDENCIES**  # <-- ADD THIS SECTION
```julia
# After developing packages, resolve all transitive dependencies
Pkg.resolve()
Pkg.instantiate()
```

Now test two different workflows.  The test workflow, this shows that TheForce is loaded automatically by TheEmpire, and "just works".  

```julia
using Pkg
Pkg.activate(".")
using TheEmpire

# Test that everything works
sith = SithLord("Vader", DarkSide())
tf = TieFighter(sith)
println("Attack power: ", attack(tf, 10.0))
```

Now the check the test workflow for CI/CD which will come later. 

```julia
Pkg.test("TheEmpire")  
```

## Create Resistance

Follow the same steps as TheEmpire, just change names where appropriate.  

Back in the root directroy

```julia
using Pkg
Pkg.activate(".")  # Should show "Activating project at JuliaMonoRepoApp"

# Resolve all transitive dependencies
Pkg.resolve()
Pkg.instantiate()
```

Now test from REPL. 

```julia
using TheResistance
jedi = JediKnight("ObiWan",LightSide())
xw = XWingFighter(jedi)
println("Attack power: ", attack(xw, 10.0))
```

Now test Pkg.test

``` julia
Pkg.test("TheResistance")
```

## Create the Application

Using the same template we used above create the StarWarsApp project

Add all dependencies to the project.

```julia
cd("StarWarsApp")
using Pkg
Pkg.activate(".")
Pkg.develop(path="../TheForce")
Pkg.develop(path="../TheEmpire")
Pkg.develop(path="../TheResistance")
Pkg.add("Reexport")
```

Now migrate code into the src and test files. 

From the repo root folder now update the main Package to contain new module and instantiate. 

```julia
# From root directory
using Pkg
Pkg.activate(".")  # Should show "Activating project at JuliaMonoRepoApp"

# Add StarWarsApp to root environment
Pkg.develop(path="StarWarsApp")

# Resolve all transitive dependencies
Pkg.resolve()
Pkg.instantiate()
```

At this point, I like to start fresh REPL session and test things out. 

``` julia
using Pkg
Pkg.activate(".") 

using StarWarsApp
battle()

```
You should see this

```julia
julia> battle()
:resistance_wins
```

# Set up Github workflows