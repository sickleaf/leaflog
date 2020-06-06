for %%A in (%~dp0*.md) do (
	cmd.exe /c "%~dp0..\BUILDHTML.lnk %%A"
)