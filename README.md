## cps
压缩或归档
用法如下:

```
CPS(1) compress file to .tar.gz .tar.bz2 .tar .zip .rar .7z file
Usage:
      cps [file_or_dir] [compressed_file_name]
example:
         to zip     :  cps file1 file2.zip
         to tar     :  cps file1 file2.tar
         to tar.gz  :  cps file1 file2.tar.gz
         to tar.bz2 :  cps file1 file2.tar.bz2
         to rar     :  cps file1 file2.rar
         to 7z      :  cps file1 file2.7z

```

##dps
解压或解档
用法如下：

```
DPS(1) decompress .tar.gz .tar.bz2 .tar .gzip .bzip2 .zip .rar .7z .xz file
Usage:
dps [compressed_file_name]
```

##安装
```
$cp dps cps /usr/local/bin/
```
