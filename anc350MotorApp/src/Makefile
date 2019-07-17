TOP=../..

include $(TOP)/configure/CONFIG

# -------------------------------

DBD += anc350AsynMotor.dbd

LIBRARY_IOC += anc350AsynMotor

anc350AsynMotor_SRCS += anc350AsynMotor.c anc350AsynMotorRegister.cc
anc350AsynMotor_LIBS += motor asyn
anc350AsynMotor_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
