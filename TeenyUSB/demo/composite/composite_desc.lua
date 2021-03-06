return Device {
    strManufacturer = "KS_DIY",
    strProduct = "KS 996 CMSIS-DAP",
    strSerial = "996_996_996",
    idVendor = 0x0483,
    idProduct = 0x0011,
    prefix = "COMP",
    Config {
        USB_HID{
            ReadEp = EndPoint(IN(2),  Interrupt, 64),
            WriteEp = EndPoint(OUT(2), Interrupt, 64),
            report = HID_InOut(64),
        },
        CDC_ACM{
            EndPoint(IN(8),  Interrupt, 16),
            EndPoint(IN(1), BulkDouble, 32),
            EndPoint(OUT(1),  BulkDouble, 32),
        },
        Interface{
            WCID=WinUSB,
            strInterface = "KS_DIY WinUSB",
            GUID="{1D4B2365-4749-48EA-B38A-7C6FDDDD7E26}",
            EndPoint(IN(3),  BulkDouble, 32),
            EndPoint(OUT(3), BulkDouble, 32),
        },
        
        Interface{
            bInterfaceClass = 0x08,        -- MSC
            bInterfaceSubClass = 0x06,     -- SCSI
            bInterfaceProtocol = 0x50,     -- BOT
            EndPoint(IN(4),  BulkDouble, 64),
            EndPoint(OUT(4), BulkDouble, 64),
        },
   }
}