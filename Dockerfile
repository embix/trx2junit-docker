FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN dotnet tool install -g trx2junit
ENTRYPOINT ["/root/.dotnet/tools/trx2junit"]
