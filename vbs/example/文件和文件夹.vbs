' 文件
dim s
s="C:\1\22\333\4444\55555.txt"
msgbox s ' 字符串C:\1\22\333\4444\55555.txt
msgbox left(s,instrrev(s,"\")-1) ' 路径C:\1\22\333\4444
msgbox right(s,len(s)-instrrev(s,"\")) '文件名55555.txt
if instrrev(s,".")-instrrev(s,"\")-1>0 then
    msgbox left(right(s,len(s)-instrrev(s,"\")),instrrev(s,".")-instrrev(s,"\")-1) '文件名(不含后缀)55555
    msgbox right(s,len(s)-instrrev(s,".")) '后缀txt
else
    msgbox right(s,len(s)-instrrev(s,"\")) '文件名(不含后缀)55555
    msgbox "" '后缀无
end if

' 文件夹
s="C:\1\22\333\4444"
msgbox s ' 字符串C:\1\22\333\4444
msgbox right(s,len(s)-instrrev(s,"\")) '文件夹名4444
msgbox left(s,instrrev(s,"\")-1) '上一级文件夹路径C:\1\22\333
