include_recipe 'gitinstaller::newrecipe.db'

remote_file 'c:/chef/PortableGit-2.12.0-64-bit.7z.exe' do
 source 'https://github.com/git-for-windows/git/releases/download/v2.12.0.windows.1/PortableGit-2.12.0-64-bit.7z.exe'
 action :create
end

