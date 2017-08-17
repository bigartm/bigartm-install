mkdir C:\BigARTM
cd C:\BigARTM
wget "https://ci.appveyor.com/api/buildjobs/k75qc84ami7x027v/artifacts/BigARTM.7z" -OutFile "$pwd\BigARTM.7z"
7z.exe x .\BigARTM.7z

cd protobuf\python
python.exe setup.py build
python.exe setup.py install

cd C:\BigARTM\python
python setup.py install

# TBD: figure out how to do this properly with powershell
# $env:PATH += ";C:\BigARTM\bin"
