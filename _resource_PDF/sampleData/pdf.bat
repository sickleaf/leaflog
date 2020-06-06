for %%A in (%~dp0*.md) do (
	cmd.exe /c "%~dp0..\BUILDPDF.lnk %%A"
)