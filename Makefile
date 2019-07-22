# Makefile for Asyn anc350 support
#
# Created by ajg on Wed Mar 11 16:00:39 2009
# Based on the Asyn app template

TOP = .
include $(TOP)/configure/CONFIG

DIRS := configure
DIRS += $(wildcard *[Ss]up)
#DIRS += $(wildcard *[Aa]pp)
DIRS += anc350App
DIRS += anc350MotorApp
DIRS += ancTest350App
DIRS += $(wildcard ioc[Bb]oot)

ancTest350App_DEPEND_DIRS += anc350MotorApp
anc350MotorApp_DEPEND_DIRS += anc350App
iocBoot_DEPEND_DIRS += ancTest350App

include $(TOP)/configure/RULES_TOP
