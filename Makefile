#MPP=$(HOME)/projects/cameras/sdk/GKIPCLinuxV100R001C00SPC030/source/gmp
#TPATH=$(HOME)/git/buildroot_toolchain/hi3516ev200/bin

TPATH=$(HOME)/src/openipc-firmware/output/host/bin
#MPP=$(HOME)/src/openipc-firmware/output/build/hisilicon-opensdk-c033009fa4551650480604dababcb5a852983593

MPP=$(HOME)/src/silicon_research/sdk/gk7205v300/gmp


CFLAGS=-I$(MPP)/include
#LDFLAGS=-L$(MPP)/lib_nolog/share
LDFLAGS=-L$(MPP)/lib_nolog/static
												 
#LDFLAGS=-L/home/home/src/openipc-firmware/output/per-package/hisilicon-osdrv-hi3516ev200/target/usr/lib
#LDFLAGS=-L$(HOME)/src/openipc-firmware/general/package/hisilicon-osdrv-hi3516ev200/files/lib


LDLIBS=-lgk_api -lupvqe -ldnvqe -lvoice_engine -lsecurec
#LDLIBS=-lmpi -lupvqe -ldnvqe -lVoiceEngine -lsecurec
#LDLIBS=-lmpi -lupvqe -ldnvqe -lVoiceEngine -lsecurec



CC=$(TPATH)/arm-openipc-linux-musleabi-gcc

gkrcparams:

clean:
	-rm gkrcparams *.o
