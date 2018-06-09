FROM microsoft/dotnet:2.1-sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY DotNetCarService/*.csproj .
RUN dotnet restore

# Copy everything else and build
COPY DotNetCarService .
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:2.1-sdk
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "DotNetCarService.dll"]
