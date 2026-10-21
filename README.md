# Product Catalog - ASP.NET Core MVC (Experiment 6)

Niraj Ghumnani (92400103378) | Batch A | 01CE1523 .NET Technologies

## Easiest: double-click run.bat
It restores packages, starts the app and opens http://localhost:5280

## Run in Visual Studio 2022 (17.8+) / Visual Studio 2026
0. Extract the zip first. Open `ProductCatalogApp.sln` with File > Open > Project/Solution (not File > Open > Folder).
1. Right-click the solution in Solution Explorer > Restore NuGet Packages.
2. Make sure the "ASP.NET and web development" workload is installed.
3. Press F5 (debug) or Ctrl+F5 (run). The browser opens at http://localhost:5280

## Run in VS Code
Open the folder, then in the terminal: `dotnet run`  ->  http://localhost:5280  (or press F5)

## Framework
The project automatically targets the .NET version of the SDK you have installed
(8, 9, 10...). You need the .NET SDK 8.0 or newer: run `dotnet --version` to check.
Download: https://dotnet.microsoft.com/download

## Structure (MVC)
- Models/        Product, ProductListViewModel
- Data/          ProductStore (in-memory data, 105 seeded products)
- Controllers/   ProductController (Index, Details, Create, Edit, Delete)
- Views/         Product/Index, Details, Form + Shared/_Layout
- wwwroot/css/   site.css (dark theme)
- Program.cs     Routing: {controller=Product}/{action=Index}/{id?}
