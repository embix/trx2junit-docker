FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app/trx2junit
RUN git clone https://github.com/gfoidl/trx2junit.git
RUN dotnet restore
RUN dotnet publish -c Release -o out

#runtime image, yes it actually needs the sdk at runtime
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /app/trx2junit
COPY --from=build-env /app/trx2junit/out .
ENTRYPOINT ["dotnet", "trx2junit.dll"]
