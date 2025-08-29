ip = "192.168.57.66"  --PC Server IP地址
port = 8080  --PC Server端口号
tcp = 0
R0 = 0
R1 = 0
R2 = 0
while (tcp==0) do 
    tcp = SocketOpen(ip,port,"socket_0")
end
PTP(home,100,-1,0)
while 1 do
    str = SocketReadString("socket_0",0)
    if str == "1" then
        while 1 do
            Lin(home,100,-1,0,0)
            WaitMs(1000)
            ModbusMasterWriteAO(Modbus_0,Register_1,1,{0})
            while(R0==0)do
				R0 = ModbusMasterReadAO(Modbus_0,Register_0,1)
            end
            if R0 == 1 then
                WaitMs(3000)
                PTP(H1,40,-1,0)
                WaitMs(3000)
                PTP(H2,40,-1,0)
                WaitMs(2000)
                ModbusMasterWriteAO(Modbus_0,Register_1,1,{2})
                WaitMs(1000)
                PTP(H1,40,-1,0)
                WaitMs(2000)
            elseif R0 == 2 or R0 == 3 then
                while 1 do
                    R0 = ModbusMasterReadAO(Modbus_0,Register_0,1)
                    if R0 == 2 then
                        WaitMs(3000)
                        PTP(H1,40,-1,0)
                    elseif R0 == 3 then
                        WaitMs(3000)
                        PTP(H2,40,-1,0)
                    else
                        break
                    end
                end
            end
            R0 = 0
        end
    end
end