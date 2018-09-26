# OneDrive-Upload
Context Menu for OneDrive to upload  folder in any place 

任意位置同步文件夹至OneDrive。

基本原理：
在注册表里写一个文件夹的右键，调用bat文件。

在bat文件中获取管理员权限，运行mklink命令，在OneDrive文件夹下创建同名符号链接。

主要方法网上早有，只是需要手动输入命令有些繁琐，因此凑了一个bat出来方便操作。

安装流程：
1. 将bat文件放于某目录下
2. 用记事本编辑bat文件，将其中OneDrive地址改本机Onedrive地址
3. 用记事本编辑reg文件，将其中bat文件地址改为当前bat文件的地址
4. 将bat文件中icon的地址改为自定义图标的地址
5. 运行reg文件，向注册表内写入文件夹右键的选项
6. 安装完成

注：运行时mklink命令会有要求管理员权限

注：运行时有cmd窗口闪现

注：reg文件里的路径需要用两个\

