![Summary](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/Summary.png)

# PLC: FX5UCPU

- Parameters → FX5UCPU → Module Parameters → Ethernet Port: change the IP address (e.g., 192.168.57.11).
- External device connection configuration: add MELSOFT connection device (for hub access), and Modbus/TCP connection device (for robot ↔ PLC communications).

![PLCIP](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/PLCIP.png)

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

![RobotIP](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/RobotIP.png)

- In the programming environment, configure the Modbus TCP connection (e.g., PLC IP 192.168.57.11) so the robot and PLC can communicate.

![RobotModbus](https://github.com/jerrychen99/mitsubishi-plc-hmi-robot-lan-guide/blob/main/PLC%2BHMI%2BRobot/RobotModbusTCP.png)

# PC
- Control Panel → Network and Internet → Network and Sharing Center → Ethernet → Properties → Internet Protocol Version 4 (TCP/IPv4): set a static IP in the same LAN (e.g., 192.168.57.66).
- Connect all Ethernet cables to a hub/switch to form the LAN.
