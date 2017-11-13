.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x22

.field static final TRANSACTION_acquireWifiLock:I = 0x1d

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x6

.field static final TRANSACTION_addToBlacklist:I = 0x2b

.field static final TRANSACTION_addToSBlacklist:I = 0x2d

.field static final TRANSACTION_buildWifiConfig:I = 0x27

.field static final TRANSACTION_callSECApi:I = 0x48

.field static final TRANSACTION_callSECStringApi:I = 0x49

.field static final TRANSACTION_checkWarningPopup:I = 0x66

.field static final TRANSACTION_clearBlacklist:I = 0x2c

.field static final TRANSACTION_clearSBlacklist:I = 0x2e

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x45

.field static final TRANSACTION_disableNetwork:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xf

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3c

.field static final TRANSACTION_enableAutoJoinWhenAssociated:I = 0x42

.field static final TRANSACTION_enableNetwork:I = 0x8

.field static final TRANSACTION_enableTdls:I = 0x32

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x33

.field static final TRANSACTION_enableVerboseLogging:I = 0x3a

.field static final TRANSACTION_enableWifiSharing:I = 0x71

.field static final TRANSACTION_factoryReset:I = 0x46

.field static final TRANSACTION_fetchHs20OsuProviders:I = 0x6b

.field static final TRANSACTION_getAggressiveHandover:I = 0x3d

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3f

.field static final TRANSACTION_getBatchedScanResults:I = 0x36

.field static final TRANSACTION_getChannelList:I = 0xb

.field static final TRANSACTION_getConfigFile:I = 0x31

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x12

.field static final TRANSACTION_getConnectionStatistics:I = 0x44

.field static final TRANSACTION_getCountryCode:I = 0x16

.field static final TRANSACTION_getCountryRev:I = 0x60

.field static final TRANSACTION_getCurrentNetwork:I = 0x47

.field static final TRANSACTION_getDhcpInfo:I = 0x1b

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x43

.field static final TRANSACTION_getFrequencyBand:I = 0x18

.field static final TRANSACTION_getFullRoamScanPeriod:I = 0x5c

.field static final TRANSACTION_getHalBasedAutojoinOffload:I = 0x41

.field static final TRANSACTION_getHs20OsuProviders:I = 0x69

.field static final TRANSACTION_getLinkStatus:I = 0x61

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x5

.field static final TRANSACTION_getNetworkInfo:I = 0x65

.field static final TRANSACTION_getPPPOEInfo:I = 0x4d

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getProvisionSuccess:I = 0x73

.field static final TRANSACTION_getRoamBand:I = 0x5e

.field static final TRANSACTION_getRoamDelta:I = 0x58

.field static final TRANSACTION_getRoamScanPeriod:I = 0x5a

.field static final TRANSACTION_getRoamTrigger:I = 0x56

.field static final TRANSACTION_getSBlacklist:I = 0x2f

.field static final TRANSACTION_getScanResults:I = 0xe

.field static final TRANSACTION_getSpecificNetwork:I = 0x4a

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x3b

.field static final TRANSACTION_getWifiApChameleonSsid:I = 0x4f

.field static final TRANSACTION_getWifiApConfigTxPower:I = 0x50

.field static final TRANSACTION_getWifiApConfiguration:I = 0x26

.field static final TRANSACTION_getWifiApEnabledState:I = 0x25

.field static final TRANSACTION_getWifiApStaList:I = 0x4e

.field static final TRANSACTION_getWifiApTimeOut:I = 0x54

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiIBSSEnabledState:I = 0x64

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x30

.field static final TRANSACTION_getWifiVerName:I = 0x74

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x39

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x20

.field static final TRANSACTION_isBatchedScanSupported:I = 0x37

.field static final TRANSACTION_isCaptivePortalException:I = 0x6f

.field static final TRANSACTION_isDetectedAsMaliciousHotspot:I = 0x6c

.field static final TRANSACTION_isDualBandSupported:I = 0x19

.field static final TRANSACTION_isHs20OsuProviderAvailable:I = 0x6a

.field static final TRANSACTION_isMulticastEnabled:I = 0x21

.field static final TRANSACTION_isPasspointDefaultOn:I = 0x6d

.field static final TRANSACTION_isPasspointMenuVisible:I = 0x6e

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1c

.field static final TRANSACTION_isWifiSharingEnabled:I = 0x70

.field static final TRANSACTION_pingSupplicant:I = 0xa

.field static final TRANSACTION_pollBatchedScan:I = 0x38

.field static final TRANSACTION_reassociate:I = 0x11

.field static final TRANSACTION_reconnect:I = 0x10

.field static final TRANSACTION_releaseMulticastLock:I = 0x23

.field static final TRANSACTION_releaseWifiLock:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x7

.field static final TRANSACTION_removeNetworkByMDM:I = 0x67

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x34

.field static final TRANSACTION_saveConfiguration:I = 0x1a

.field static final TRANSACTION_saveNetworkByMDM:I = 0x68

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3e

.field static final TRANSACTION_setCountryCode:I = 0x15

.field static final TRANSACTION_setCountryRev:I = 0x5f

.field static final TRANSACTION_setFrequencyBand:I = 0x17

.field static final TRANSACTION_setFullRoamScanPeriod:I = 0x5b

.field static final TRANSACTION_setHalBasedAutojoinOffload:I = 0x40

.field static final TRANSACTION_setIsFmcNetwork:I = 0x62

.field static final TRANSACTION_setProvisionSuccess:I = 0x72

.field static final TRANSACTION_setRoamBand:I = 0x5d

.field static final TRANSACTION_setRoamDelta:I = 0x57

.field static final TRANSACTION_setRoamScanPeriod:I = 0x59

.field static final TRANSACTION_setRoamTrigger:I = 0x55

.field static final TRANSACTION_setWifiApConfigTxPower:I = 0x51

.field static final TRANSACTION_setWifiApConfiguration:I = 0x28

.field static final TRANSACTION_setWifiApConfigurationToDefault:I = 0x52

.field static final TRANSACTION_setWifiApEnabled:I = 0x24

.field static final TRANSACTION_setWifiApTimeOut:I = 0x53

.field static final TRANSACTION_setWifiEnabled:I = 0x13

.field static final TRANSACTION_setWifiIBSSEnabled:I = 0x63

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xd

.field static final TRANSACTION_startPPPOE:I = 0x4b

.field static final TRANSACTION_startScan:I = 0xc

.field static final TRANSACTION_startWifi:I = 0x29

.field static final TRANSACTION_stopBatchedScan:I = 0x35

.field static final TRANSACTION_stopPPPOE:I = 0x4c

.field static final TRANSACTION_stopWifi:I = 0x2a

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 47
    :sswitch_0
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v10, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    .line 54
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v10, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "_result":I
    :sswitch_2
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 62
    .local v4, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_0

    .line 64
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 74
    .end local v4    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 76
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    const/4 v10, 0x1

    goto :goto_0

    .line 82
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 84
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v10, 0x1

    goto :goto_0

    .line 90
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 93
    sget-object v10, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 98
    .local v0, "_arg0":Landroid/net/wifi/ScanResult;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 99
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v4, :cond_2

    .line 101
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 105
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 111
    .end local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 114
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 119
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 120
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 126
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 130
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_4

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 131
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 136
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    .line 141
    .local v1, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 142
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_6

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 143
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_7

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 152
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_7

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 153
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 158
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 160
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_8

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 161
    :cond_8
    const/4 v10, 0x0

    goto :goto_9

    .line 166
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 170
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 174
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    .line 177
    sget-object v10, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    .line 183
    .local v0, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    .line 184
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 189
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_a

    .line 187
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_b

    .line 195
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    .line 198
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 203
    .local v0, "_arg0":Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    .line 209
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :sswitch_e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 213
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 215
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 226
    :sswitch_10
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 233
    :sswitch_11
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 240
    :sswitch_12
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 242
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v4, :cond_c

    .line 244
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    :goto_d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 248
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 254
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_13
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    const/4 v0, 0x1

    .line 257
    .local v0, "_arg0":Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 258
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_e

    const/4 v10, 0x1

    :goto_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 259
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_f

    .line 264
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 266
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 272
    .end local v4    # "_result":I
    :sswitch_15
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    const/4 v1, 0x1

    .line 277
    .local v1, "_arg1":Z
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 276
    .end local v1    # "_arg1":Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 291
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v1, 0x1

    .line 296
    .restart local v1    # "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 295
    .end local v1    # "_arg1":Z
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 302
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 304
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 310
    .end local v4    # "_result":I
    :sswitch_19
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 312
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v4, :cond_11

    const/4 v10, 0x1

    :goto_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 313
    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .line 318
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 320
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v4, :cond_12

    const/4 v10, 0x1

    :goto_13
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 321
    :cond_12
    const/4 v10, 0x0

    goto :goto_13

    .line 326
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 328
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v4, :cond_13

    .line 330
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 336
    :goto_14
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 334
    :cond_13
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 340
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 342
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v4, :cond_14

    const/4 v10, 0x1

    :goto_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 343
    :cond_14
    const/4 v10, 0x0

    goto :goto_15

    .line 348
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 352
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15

    .line 357
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 362
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_16
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 363
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v4, :cond_16

    const/4 v10, 0x1

    :goto_17
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 360
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_16

    .line 364
    .restart local v4    # "_result":Z
    :cond_16
    const/4 v10, 0x0

    goto :goto_17

    .line 369
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 373
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 374
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 379
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_18
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 377
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_18

    .line 385
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 389
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v4, :cond_18

    const/4 v10, 0x1

    :goto_19
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 390
    :cond_18
    const/4 v10, 0x0

    goto :goto_19

    .line 395
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 402
    :sswitch_21
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 404
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v4, :cond_19

    const/4 v10, 0x1

    :goto_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 405
    :cond_19
    const/4 v10, 0x0

    goto :goto_1a

    .line 410
    .end local v4    # "_result":Z
    :sswitch_22
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 414
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 428
    :sswitch_24
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 431
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 437
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v1, 0x1

    .line 438
    .local v1, "_arg1":Z
    :goto_1c
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 437
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 444
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 446
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 452
    .end local v4    # "_result":I
    :sswitch_26
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 454
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v4, :cond_1c

    .line 456
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    :goto_1d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 460
    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 466
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 473
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 474
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v4, :cond_1d

    .line 476
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 482
    :goto_1e
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 480
    :cond_1d
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 486
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e

    .line 489
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 494
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .line 500
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_29
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 507
    :sswitch_2a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 514
    :sswitch_2b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 530
    :sswitch_2d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToSBlacklist(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 539
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearSBlacklist()V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 546
    :sswitch_2f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSBlacklist()Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 554
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 556
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v4, :cond_1f

    .line 558
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 564
    :goto_20
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 562
    :cond_1f
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 568
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_31
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 576
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    const/4 v1, 0x1

    .line 581
    .local v1, "_arg1":Z
    :goto_21
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 580
    .end local v1    # "_arg1":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 587
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21

    const/4 v1, 0x1

    .line 592
    .restart local v1    # "_arg1":Z
    :goto_22
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 591
    .end local v1    # "_arg1":Z
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 598
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_34
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    .line 601
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 607
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 609
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    .line 610
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 615
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_24
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 616
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v4, :cond_24

    const/4 v10, 0x1

    :goto_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 604
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 613
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_24

    .line 617
    .restart local v4    # "_result":Z
    :cond_24
    const/4 v10, 0x0

    goto :goto_25

    .line 622
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    .line 625
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 630
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_26
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 628
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_26

    .line 636
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_36
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 640
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 642
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 646
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_37
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 648
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    if-eqz v4, :cond_26

    const/4 v10, 0x1

    :goto_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 649
    :cond_26
    const/4 v10, 0x0

    goto :goto_27

    .line 654
    .end local v4    # "_result":Z
    :sswitch_38
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 661
    :sswitch_39
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 671
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 680
    .end local v0    # "_arg0":I
    :sswitch_3b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    .line 682
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 688
    .end local v4    # "_result":I
    :sswitch_3c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 691
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 697
    .end local v0    # "_arg0":I
    :sswitch_3d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    .line 699
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 705
    .end local v4    # "_result":I
    :sswitch_3e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 714
    .end local v0    # "_arg0":I
    :sswitch_3f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    .line 716
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 722
    .end local v4    # "_result":I
    :sswitch_40
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 725
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHalBasedAutojoinOffload(I)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 731
    .end local v0    # "_arg0":I
    :sswitch_41
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHalBasedAutojoinOffload()I

    move-result v4

    .line 733
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 739
    .end local v4    # "_result":I
    :sswitch_42
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27

    const/4 v0, 0x1

    .line 742
    .local v0, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoJoinWhenAssociated(Z)Z

    move-result v4

    .line 743
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v4, :cond_28

    const/4 v10, 0x1

    :goto_29
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 741
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 744
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_28
    const/4 v10, 0x0

    goto :goto_29

    .line 749
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_43
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v4

    .line 751
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v4, :cond_29

    const/4 v10, 0x1

    :goto_2a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 752
    :cond_29
    const/4 v10, 0x0

    goto :goto_2a

    .line 757
    .end local v4    # "_result":Z
    :sswitch_44
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    .line 759
    .local v4, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v4, :cond_2a

    .line 761
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 767
    :goto_2b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 765
    :cond_2a
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 771
    .end local v4    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_45
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 787
    :sswitch_47
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v4

    .line 789
    .local v4, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v4, :cond_2b

    .line 791
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 797
    :goto_2c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 795
    :cond_2b
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 801
    .end local v4    # "_result":Landroid/net/Network;
    :sswitch_48
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c

    .line 804
    sget-object v10, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 809
    .local v0, "_arg0":Landroid/os/Message;
    :goto_2d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->callSECApi(Landroid/os/Message;)I

    move-result v4

    .line 810
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v4    # "_result":I
    :cond_2c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Message;
    goto :goto_2d

    .line 816
    .end local v0    # "_arg0":Landroid/os/Message;
    :sswitch_49
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2d

    .line 819
    sget-object v10, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 824
    .restart local v0    # "_arg0":Landroid/os/Message;
    :goto_2e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 822
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Message;
    goto :goto_2e

    .line 831
    .end local v0    # "_arg0":Landroid/os/Message;
    :sswitch_4a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 834
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 835
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v4, :cond_2e

    .line 837
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 843
    :goto_2f
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 841
    :cond_2e
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 847
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2f

    .line 850
    sget-object v10, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    .line 855
    .local v0, "_arg0":Landroid/net/wifi/PPPOEConfig;
    :goto_30
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    goto :goto_30

    .line 861
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :sswitch_4c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 868
    :sswitch_4d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v4

    .line 870
    .local v4, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v4, :cond_30

    .line 872
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 878
    :goto_31
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 876
    :cond_30
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 882
    .end local v4    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_4e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 890
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApChameleonSsid()Ljava/lang/String;

    move-result-object v4

    .line 892
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 898
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfigTxPower()I

    move-result v4

    .line 900
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 906
    .end local v4    # "_result":I
    :sswitch_51
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigTxPower(I)V

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 915
    .end local v0    # "_arg0":I
    :sswitch_52
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigurationToDefault()V

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 922
    :sswitch_53
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 925
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApTimeOut(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 931
    .end local v0    # "_arg0":I
    :sswitch_54
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApTimeOut()I

    move-result v4

    .line 933
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 939
    .end local v4    # "_result":I
    :sswitch_55
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v4

    .line 943
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v4, :cond_31

    const/4 v10, 0x1

    :goto_32
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 944
    :cond_31
    const/4 v10, 0x0

    goto :goto_32

    .line 949
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_56
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v4

    .line 951
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 957
    .end local v4    # "_result":I
    :sswitch_57
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 960
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v4

    .line 961
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    if-eqz v4, :cond_32

    const/4 v10, 0x1

    :goto_33
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 962
    :cond_32
    const/4 v10, 0x0

    goto :goto_33

    .line 967
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_58
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v4

    .line 969
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 975
    .end local v4    # "_result":I
    :sswitch_59
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v4

    .line 979
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    if-eqz v4, :cond_33

    const/4 v10, 0x1

    :goto_34
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 980
    :cond_33
    const/4 v10, 0x0

    goto :goto_34

    .line 985
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v4

    .line 987
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 993
    .end local v4    # "_result":I
    :sswitch_5b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 996
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setFullRoamScanPeriod(I)Z

    move-result v4

    .line 997
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    if-eqz v4, :cond_34

    const/4 v10, 0x1

    :goto_35
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 998
    :cond_34
    const/4 v10, 0x0

    goto :goto_35

    .line 1003
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFullRoamScanPeriod()I

    move-result v4

    .line 1005
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1011
    .end local v4    # "_result":I
    :sswitch_5d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1014
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v4

    .line 1015
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    if-eqz v4, :cond_35

    const/4 v10, 0x1

    :goto_36
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1016
    :cond_35
    const/4 v10, 0x0

    goto :goto_36

    .line 1021
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamBand()I

    move-result v4

    .line 1023
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v4    # "_result":I
    :sswitch_5f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v4

    .line 1033
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    if-eqz v4, :cond_36

    const/4 v10, 0x1

    :goto_37
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1034
    :cond_36
    const/4 v10, 0x0

    goto :goto_37

    .line 1039
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_60
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v4

    .line 1041
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getLinkStatus()I

    move-result v4

    .line 1049
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1055
    .end local v4    # "_result":I
    :sswitch_62
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_37

    const/4 v0, 0x1

    .line 1058
    .local v0, "_arg0":Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setIsFmcNetwork(Z)Z

    move-result v4

    .line 1059
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    if-eqz v4, :cond_38

    const/4 v10, 0x1

    :goto_39
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_37
    const/4 v0, 0x0

    goto :goto_38

    .line 1060
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_38
    const/4 v10, 0x0

    goto :goto_39

    .line 1065
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_63
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_39

    const/4 v0, 0x1

    .line 1068
    .restart local v0    # "_arg0":Z
    :goto_3a
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiIBSSEnabled(Z)Z

    move-result v4

    .line 1069
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    if-eqz v4, :cond_3a

    const/4 v10, 0x1

    :goto_3b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1067
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_39
    const/4 v0, 0x0

    goto :goto_3a

    .line 1070
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_3a
    const/4 v10, 0x0

    goto :goto_3b

    .line 1075
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_64
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiIBSSEnabledState()I

    move-result v4

    .line 1077
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1083
    .end local v4    # "_result":I
    :sswitch_65
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1085
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    if-eqz v4, :cond_3b

    .line 1087
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1093
    :goto_3c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1091
    :cond_3b
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 1097
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_66
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWarningPopup()Z

    move-result v4

    .line 1099
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    if-eqz v4, :cond_3c

    const/4 v10, 0x1

    :goto_3d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1100
    :cond_3c
    const/4 v10, 0x0

    goto :goto_3d

    .line 1105
    .end local v4    # "_result":Z
    :sswitch_67
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1108
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetworkByMDM(I)Z

    move-result v4

    .line 1109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    if-eqz v4, :cond_3d

    const/4 v10, 0x1

    :goto_3e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1110
    :cond_3d
    const/4 v10, 0x0

    goto :goto_3e

    .line 1115
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_68
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3e

    .line 1118
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1123
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_3f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    .line 1124
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    if-eqz v4, :cond_3f

    const/4 v10, 0x1

    :goto_40
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1121
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3f

    .line 1125
    .restart local v4    # "_result":Z
    :cond_3f
    const/4 v10, 0x0

    goto :goto_40

    .line 1130
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":Z
    :sswitch_69
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHs20OsuProviders()Ljava/util/List;

    move-result-object v9

    .line 1132
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1134
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    :sswitch_6a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isHs20OsuProviderAvailable()Z

    move-result v4

    .line 1140
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    if-eqz v4, :cond_40

    const/4 v10, 0x1

    :goto_41
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1141
    :cond_40
    const/4 v10, 0x0

    goto :goto_41

    .line 1146
    .end local v4    # "_result":Z
    :sswitch_6b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->fetchHs20OsuProviders()Z

    move-result v4

    .line 1148
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    if-eqz v4, :cond_41

    const/4 v10, 0x1

    :goto_42
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_41
    const/4 v10, 0x0

    goto :goto_42

    .line 1154
    .end local v4    # "_result":Z
    :sswitch_6c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v4

    .line 1158
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    if-eqz v4, :cond_42

    const/4 v10, 0x1

    :goto_43
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1159
    :cond_42
    const/4 v10, 0x0

    goto :goto_43

    .line 1164
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_6d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointDefaultOn()Z

    move-result v4

    .line 1166
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    if-eqz v4, :cond_43

    const/4 v10, 0x1

    :goto_44
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1167
    :cond_43
    const/4 v10, 0x0

    goto :goto_44

    .line 1172
    .end local v4    # "_result":Z
    :sswitch_6e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointMenuVisible()Z

    move-result v4

    .line 1174
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    if-eqz v4, :cond_44

    const/4 v10, 0x1

    :goto_45
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1175
    :cond_44
    const/4 v10, 0x0

    goto :goto_45

    .line 1180
    .end local v4    # "_result":Z
    :sswitch_6f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isCaptivePortalException()Z

    move-result v4

    .line 1182
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    if-eqz v4, :cond_45

    const/4 v10, 0x1

    :goto_46
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1183
    :cond_45
    const/4 v10, 0x0

    goto :goto_46

    .line 1188
    .end local v4    # "_result":Z
    :sswitch_70
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v4

    .line 1190
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    if-eqz v4, :cond_46

    const/4 v10, 0x1

    :goto_47
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1191
    :cond_46
    const/4 v10, 0x0

    goto :goto_47

    .line 1196
    .end local v4    # "_result":Z
    :sswitch_71
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_47

    const/4 v0, 0x1

    .line 1199
    .local v0, "_arg0":Z
    :goto_48
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiSharing(Z)Z

    move-result v4

    .line 1200
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v4, :cond_48

    const/4 v10, 0x1

    :goto_49
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_47
    const/4 v0, 0x0

    goto :goto_48

    .line 1201
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_48
    const/4 v10, 0x0

    goto :goto_49

    .line 1206
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_72
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_49

    const/4 v0, 0x1

    .line 1209
    .restart local v0    # "_arg0":Z
    :goto_4a
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v4

    .line 1210
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    if-eqz v4, :cond_4a

    const/4 v10, 0x1

    :goto_4b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_49
    const/4 v0, 0x0

    goto :goto_4a

    .line 1211
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_4a
    const/4 v10, 0x0

    goto :goto_4b

    .line 1216
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_73
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getProvisionSuccess()Z

    move-result v4

    .line 1218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    if-eqz v4, :cond_4b

    const/4 v10, 0x1

    :goto_4c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1219
    :cond_4b
    const/4 v10, 0x0

    goto :goto_4c

    .line 1224
    .end local v4    # "_result":Z
    :sswitch_74
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiVerName()Ljava/lang/String;

    move-result-object v4

    .line 1226
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1228
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
