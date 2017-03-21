# IoT_bot     
* A sample IoT bot origin from Mirai    

**介绍**      
>IoT_bot是在Mirai的基础上改的一个简单的物联网设备运行程序      
 基本上只保留了通信
>
**配置**      
* 在include.h中更改要连接的IP和Port
* 运行config.sh //它会自动完成交叉编译环境的安装     
* 运行build.sh  //它会完成程序的编译，分为release模式和debug模式   
     
**运行**      
>sever端：
>         
>>linux下安装nc， nc -l 9999 监听9999端口    
>
>client端：       
>
>>在debug目录下找到相应的可执行程序，并运行 
>>
**运行截图**            
>server端：
>
![image](https://github.com/scu-igroup/IoT_bot/raw/master/images/cc.png)       
>client端：
>
![image](https://github.com/scu-igroup/IoT_bot/raw/master/images/bot.png)