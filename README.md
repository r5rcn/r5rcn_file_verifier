# r5rcn_file_verifier 一个简单的文件验证器


## 原理

通过读取filelist.txt里的文件列表来进行文件验证


## 注意事项

由于lua本身的特性 如果要输出中文这类的，需要在编写完成后将格式修改为ANSI 否则会有乱码


## 如何打包成exe

将lua文件拖到srlua文件夹里的srlua.exe即可

分发时要带上code文件夹里的
lua51.dll, lua5.1.dll, filelist.txt和文件校验.bat
(你也可以自己写一个bat 或者cmd 或者其他的巴拉巴拉的)
