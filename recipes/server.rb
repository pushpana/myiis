powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-server'
end
file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1> Hello, World! </h1>'
end
service 'w3svc' do
  action [:enable, :start]
end
