# README.md

本项目是基于SDN环境下结合机器学习的DDOS攻击检测，能够检测当前主机是否受到DDos攻击。

## 预备工作
1. mininet:  `sudo apt install mininet`
2. pox:  `git clone https://github.com/noxrepo/pox`
3. hyping3: `sudo apt install hyping3`
4. tshark: `sudo apt install tshark`
5. tensorflow、numpy、pandas、matplotlib：`pip install tensorflow==1.14 numpy pandas matplotlib`

也可以使用我们的脚本：preinstall.sh  
```$ chmod +x preinstall.sh
$ ./preinstall.sh```



## 演示流程
1. 启动POX控制器: `$ ./pox.py openflow.of_01 --address=127.0.0.1 --port=8877 pox.forwarding.l2_learning` 

2. 使用mininet建立topo: `$ sudo mn --custom sdntopo.py --topo mytopo --controller=remote,ip=127.0.0.1,port=8877 --switch ovsk,protocols=OpenFlow10`

3. pingall 测试联通性：`pingall`

4. hyping3 模拟攻击：`h3 hping3 h1 -p 80 -S -i u400 --rand-source`

5. 开始DDOS检测：`./detect.sh`


## 结果显示
如果终端出现`machine is under attack`则说明成功检测到了DDOS攻击
![成功检测](./DDOS检测.png)
