.paket\paket.bootstrapper.exe --run restore
MSBuild.exe "GitLabTestApp\GitLabTestApp.csproj" /t:Build /m /nodeReuse:False /clp:ForceConsoleColor /p:RestorePackages=False /p:Configuration=Release /p:Platform="AnyCPU"
MSBuild.exe "GitLabTestApp\GitLabTestApp.csproj" /t:_CopyWebApplication;_BuiltWebOutputGroupOutput /m /nodeReuse:False /clp:ForceConsoleColor /p:RestorePackages=False /p:Configuration=Release /p:Platform="AnyCPU" /p:OutDir="..\bin\web" /p:WebProjectOutputDir="..\bin\web\GitLabTestApp"


