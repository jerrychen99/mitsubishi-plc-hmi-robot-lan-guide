![Summary](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/Summary.png)

# PLC: FX5UCPU

- Parameters → FX5UCPU → Module Parameters → Ethernet Port: change the IP address (e.g., 192.168.57.11).
- External device connection configuration: add MELSOFT connection device (for hub access), and Modbus/TCP connection device (for robot ↔ PLC communications).

![PLCIP](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/PLCIP.png)

# HMI:
- 系统设置: 系列: GS系列, 机种: GS21**-W-N(800x480)
- 连接器设置: 制造商:三菱电机, 机种: MELSEC iQ-F, I/F: 以太网: 多CPU连接对应
- 详细设置: 连接PLC (FX5CPU), IP地址同PLC IP地址(ex: 192.168.57.11)
- GOT IP地址设置(ex: 192.168.57.18) (注意: 需跟PLC&局域网络里设备IP区域相同及可通讯(ex 192.168.57.xx)
- GOT以太网公共设置: 通讯用端口号需要设定(ex:1025)
- 选取画面切换的软元件(ex: D100, D101)可在PLC内控制切换
- 烧录方式: 通讯->写入到GOT->GOT IP地址同为GOT IP地址设置值, 周边S/W通讯用端口同为GOT以太网公共设置通讯用端口号

# ROBOT（FR5）: 
- 初始化可先接网卡1 IP(192.168.58.2), 确认连上网站确认网口0 IP地址(192.168.57.2)后可将PC, PLC, HMI调为网卡0相同区域以便构成局域网(ex: 192.168.57.xx)

![RobotIP](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/RobotIP.png)

- 进入撰写程式后需设定Modbus TCP连接处(ex:连接PLC IP地址:192.168.57.11)才能互相沟通

![RobotModbus](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/RobotModbusTCP.png)

# PC端:
- 控制面板->网络和Internet->网络和共享中心->以太网->属性->Internet 协议版本 4 (TCP/IPv4)将IP地址改为同一局域网(ex: 192.168.57.66)
- 再把网线集中接到Hub即可形成局域网

# HMI

- System settings: Series: GS Series Model: GS21**-W-N (800×480)
- Connection settings: Manufacturer: Mitsubishi Electric PLC, Series/Type: MELSEC iQ-F, I/F: Ethernet – Multi-CPU connection
- Detailed settings: Connect to PLC (FX5CPU). PLC IP address: same as the PLC’s IP (e.g., 192.168.57.11).
- GOT IP address settings: set the GOT IP (e.g., 192.168.57.18). (Note: must be in the same subnet as the PLC and other devices and be reachable, e.g., 192.168.57.xx.)
- GOT Ethernet Common Settings: set the communication port number (e.g., 1025).
- Screen switching soft devices: choose devices (e.g., D100, D101) that the PLC can manipulate to switch screens.
- Writing method (download to HMI): Communication → Write to GOT → use the GOT IP address set above; the Peripheral S/W communication port must match the GOT Ethernet Common Settings communication port.

# ROBOT (FR5)
- For initial setup, first connect to NIC1 at IP 192.168.58.2. After logging into the web interface and confirming NIC0 IP is 192.168.57.2, set the PC, PLC, and HMI to the same subnet as NIC0 to form a LAN (e.g., 192.168.57.xx).
- In the programming environment, configure the Modbus TCP connection (e.g., PLC IP 192.168.57.11) so the robot and PLC can communicate.

# PLC: FX5UCPU
- 需要在参数->FX5UCPU->模块参数->以太网端口更改IP地址(ex: 192.168.57.11)
- 对象设备连接配置设置: 加上MELSOFT连接设备(for hub), Modbus/TCP连接设备(for robot & plc 通讯)

# PC
- Control Panel → Network and Internet → Network and Sharing Center → Ethernet → Properties → Internet Protocol Version 4 (TCP/IPv4): set a static IP in the same LAN (e.g., 192.168.57.66).
- Connect all Ethernet cables to a hub/switch to form the LAN.
