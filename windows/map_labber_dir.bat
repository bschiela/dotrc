:: Map the Labber directory in the user's home to a virtual L: drive.
:: Useful for sharing the directory over a Windows Remote Desktop Connection.
:: Put this in your startup folder ("Win+r", "shell:startup<CR>") to run at startup.
subst L: "%userprofile%\Labber"
