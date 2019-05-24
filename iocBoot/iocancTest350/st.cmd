#!../../bin/linux-x86/ancTest350

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/ancTest350.dbd",0,0)
ancTest350_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("IP1","10.2.2.78:2101",0,0,0)
anc350AsynMotorCreate("IP1", "0", "0", "4")
drvAsynMotorConfigure("ANC1", "anc350AsynMotor", "0", "4")

## Load record instances
dbLoadRecords("db/ancTest.db", "")

cd ${TOP}/iocBoot/${IOC}
iocInit()

#asynSetTraceMask("IP1", 1, 31)
#asynSetTraceIOMask("IP1", 1, 31)


