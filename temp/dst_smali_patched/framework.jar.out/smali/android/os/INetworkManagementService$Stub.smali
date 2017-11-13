.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addChain:I = 0x8e

.field static final TRANSACTION_addEnterpriseUidRanges:I = 0x7d

.field static final TRANSACTION_addIdleTimer:I = 0x46

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x76

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x68

.field static final TRANSACTION_addIpAcceptRule:I = 0x9a

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x6a

.field static final TRANSACTION_addMptcpLink:I = 0x8c

.field static final TRANSACTION_addRoute:I = 0x10

.field static final TRANSACTION_addRouteWithMetric:I = 0x79

.field static final TRANSACTION_addSocksRule:I = 0x90

.field static final TRANSACTION_addSocksSkipRule:I = 0x94

.field static final TRANSACTION_addSocksSkipRuleProto:I = 0x96

.field static final TRANSACTION_addSourcePortAcceptRule:I = 0xa1

.field static final TRANSACTION_addSourceRoute:I = 0x9f

.field static final TRANSACTION_addUidSocksRule:I = 0x92

.field static final TRANSACTION_addUidToChain:I = 0x98

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x27

.field static final TRANSACTION_addVpnUidRanges:I = 0x5d

.field static final TRANSACTION_allowProtect:I = 0x74

.field static final TRANSACTION_appendInterfaceToLocalNetwork:I = 0x78

.field static final TRANSACTION_attachPppd:I = 0x2a

.field static final TRANSACTION_blockEnterpriseUidRanges:I = 0x7f

.field static final TRANSACTION_buildFirewall:I = 0x56

.field static final TRANSACTION_clearAllFirewallPolicy:I = 0x58

.field static final TRANSACTION_clearDefaultNetId:I = 0x70

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x73

.field static final TRANSACTION_controlPrivatePacket:I = 0x7c

.field static final TRANSACTION_createNetworkGuardChain:I = 0x84

.field static final TRANSACTION_createPhysicalNetwork:I = 0x65

.field static final TRANSACTION_createVirtualNetwork:I = 0x66

.field static final TRANSACTION_delIpAcceptRule:I = 0x9b

.field static final TRANSACTION_delSourcePortAcceptRule:I = 0xa2

.field static final TRANSACTION_delSourceRoute:I = 0xa0

.field static final TRANSACTION_delSrcRoute:I = 0x7b

.field static final TRANSACTION_deleteNetworkGuardChain:I = 0x85

.field static final TRANSACTION_deleteNetworkGuardWhiteListRule:I = 0x88

.field static final TRANSACTION_denyProtect:I = 0x75

.field static final TRANSACTION_detachPppd:I = 0x2b

.field static final TRANSACTION_disableEpdg:I = 0x82

.field static final TRANSACTION_disableIpv6:I = 0xb

.field static final TRANSACTION_disableMptcp:I = 0x9e

.field static final TRANSACTION_disableNat:I = 0x26

.field static final TRANSACTION_disableNetworkGuard:I = 0x87

.field static final TRANSACTION_enableEpdg:I = 0x81

.field static final TRANSACTION_enableIpv6:I = 0xd

.field static final TRANSACTION_enableMptcp:I = 0x9d

.field static final TRANSACTION_enableNat:I = 0x25

.field static final TRANSACTION_enableNetworkGuard:I = 0x86

.field static final TRANSACTION_flushNetworkDnsCache:I = 0x4b

.field static final TRANSACTION_getAccessPointNumConnectedSta:I = 0x2c

.field static final TRANSACTION_getAccessPointStaList:I = 0x2d

.field static final TRANSACTION_getDnsForwarders:I = 0x1f

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x15

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x38

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x36

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x37

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x3a

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x39

.field static final TRANSACTION_getNetworkStatsVideoCall:I = 0x45

.field static final TRANSACTION_getRoutes:I = 0xf

.field static final TRANSACTION_getV6DnsForwarders:I = 0x22

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x42

.field static final TRANSACTION_isClatdStarted:I = 0x61

.field static final TRANSACTION_isFirewallEnabled:I = 0x4f

.field static final TRANSACTION_isNetworkActive:I = 0x64

.field static final TRANSACTION_isTetheringStarted:I = 0x19

.field static final TRANSACTION_joinMulticastGroup:I = 0x24

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1c

.field static final TRANSACTION_listTtys:I = 0x29

.field static final TRANSACTION_readWhiteList:I = 0x2f

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x62

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeChain:I = 0x8f

.field static final TRANSACTION_removeEnterpriseUidRanges:I = 0x7e

.field static final TRANSACTION_removeIdleTimer:I = 0x47

.field static final TRANSACTION_removeInterfaceAlert:I = 0x3e

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x77

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x69

.field static final TRANSACTION_removeInterfaceQuota:I = 0x3c

.field static final TRANSACTION_removeLegacyRouteForNetId:I = 0x6b

.field static final TRANSACTION_removeMptcpLink:I = 0x8d

.field static final TRANSACTION_removeNetwork:I = 0x67

.field static final TRANSACTION_removeRoute:I = 0x11

.field static final TRANSACTION_removeSocksRule:I = 0x91

.field static final TRANSACTION_removeSocksSkipRule:I = 0x95

.field static final TRANSACTION_removeSocksSkipRuleProto:I = 0x97

.field static final TRANSACTION_removeUidFromChain:I = 0x99

.field static final TRANSACTION_removeUidSocksRule:I = 0x93

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x28

.field static final TRANSACTION_removeVpnUidRanges:I = 0x5e

.field static final TRANSACTION_replaceDefaultRoute:I = 0x14

.field static final TRANSACTION_replaceSrcRoute:I = 0x7a

.field static final TRANSACTION_setAccessPoint:I = 0x35

.field static final TRANSACTION_setAccessPointDisassocSta:I = 0x2e

.field static final TRANSACTION_setApprovedIpOnBlockAllPacket:I = 0x4d

.field static final TRANSACTION_setBlockAllPackets:I = 0x4c

.field static final TRANSACTION_setDefaultInterfaceForDns:I = 0x49

.field static final TRANSACTION_setDefaultNetId:I = 0x6f

.field static final TRANSACTION_setDestinationBasedMarkRule:I = 0xa5

.field static final TRANSACTION_setDnsForwarders:I = 0x1d

.field static final TRANSACTION_setDnsServersForInterface:I = 0x4a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x48

.field static final TRANSACTION_setEpdgInterfaceDropRule:I = 0x83

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x55

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x52

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x51

.field static final TRANSACTION_setFirewallEnabled:I = 0x4e

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x50

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x59

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x5a

.field static final TRANSACTION_setFirewallUidRule:I = 0x53

.field static final TRANSACTION_setFirewallUidRuleMobileData:I = 0x5b

.field static final TRANSACTION_setFirewallUidRuleWifi:I = 0x5c

.field static final TRANSACTION_setFirewallUidRules:I = 0x54

.field static final TRANSACTION_setGlobalAlert:I = 0x3f

.field static final TRANSACTION_setInterfaceAlert:I = 0x3d

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xe

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x3b

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x16

.field static final TRANSACTION_setMaxClient:I = 0x30

.field static final TRANSACTION_setMtu:I = 0x12

.field static final TRANSACTION_setNetworkGuardProtocolAcceptRule:I = 0x8b

.field static final TRANSACTION_setNetworkGuardUidRangeAcceptRule:I = 0x89

.field static final TRANSACTION_setNetworkGuardUidRule:I = 0x8a

.field static final TRANSACTION_setNetworkPermission:I = 0x71

.field static final TRANSACTION_setPermission:I = 0x72

.field static final TRANSACTION_setPrivateIpRoute:I = 0xa4

.field static final TRANSACTION_setRoamingReductionRules:I = 0x6e

.field static final TRANSACTION_setTcpBufferSize:I = 0x9c

.field static final TRANSACTION_setTxPower:I = 0x31

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x41

.field static final TRANSACTION_setUidNetworkRules:I = 0x40

.field static final TRANSACTION_setWhiteListUidNetworkRules:I = 0x6c

.field static final TRANSACTION_setWhiteListUrlNetworkRules:I = 0x6d

.field static final TRANSACTION_setv6DnsForwarders:I = 0x1e

.field static final TRANSACTION_shutdown:I = 0x13

.field static final TRANSACTION_startAccessPoint:I = 0x33

.field static final TRANSACTION_startClatd:I = 0x5f

.field static final TRANSACTION_startInterfaceForwarding:I = 0x20

.field static final TRANSACTION_startNetworkStatsOnPorts:I = 0x43

.field static final TRANSACTION_startTethering:I = 0x17

.field static final TRANSACTION_stopAccessPoint:I = 0x34

.field static final TRANSACTION_stopClatd:I = 0x60

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x21

.field static final TRANSACTION_stopNetworkStatsOnPorts:I = 0x44

.field static final TRANSACTION_stopTethering:I = 0x18

.field static final TRANSACTION_tagSocketNMS:I = 0xa

.field static final TRANSACTION_tearDownFirewall:I = 0x57

.field static final TRANSACTION_tetherInterface:I = 0x1a

.field static final TRANSACTION_unblockEnterpriseUidRanges:I = 0x80

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x63

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x1b

.field static final TRANSACTION_updateRa:I = 0x23

.field static final TRANSACTION_updateSourceRule:I = 0xa3

.field static final TRANSACTION_wifiFirmwareReload:I = 0x32

.field static final TRANSACTION_wps_ap_method:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v3

    .local v3, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v3

    .restart local v3    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v14

    .local v14, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v14

    .local v14, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/InterfaceConfiguration;

    .local v4, "_arg1":Landroid/net/InterfaceConfiguration;
    :goto_2
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/net/InterfaceConfiguration;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->tagSocketNMS(Landroid/os/ParcelFileDescriptor;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v14

    .local v14, "_result":[Landroid/net/RouteInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[Landroid/net/RouteInfo;
    :sswitch_10
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .local v4, "_arg1":Landroid/net/RouteInfo;
    :goto_6
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_6

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_11
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    :goto_7
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_7

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_12
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_13
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, "_arg1":[B
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->replaceDefaultRoute(Ljava/lang/String;[B)Z

    move-result v14

    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v14    # "_result":Z
    :sswitch_15
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .end local v14    # "_result":Z
    :sswitch_16
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :sswitch_17
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Ljava/lang/String;
    :sswitch_18
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .end local v14    # "_result":Z
    :sswitch_1a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v14

    .local v14, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .local v3, "_arg0":Landroid/net/Network;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/net/Network;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/Network;
    goto :goto_c

    .end local v3    # "_arg0":Landroid/net/Network;
    :sswitch_1e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setv6DnsForwarders([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Ljava/lang/String;
    :sswitch_1f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_22
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getV6DnsForwarders()[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_24
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_25
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_26
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_27
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->addUpstreamV6Interface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeUpstreamV6Interface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_2a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_2b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointNumConnectedSta()I

    move-result v14

    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":I
    :sswitch_2d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointStaList()Ljava/lang/String;

    move-result-object v14

    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setAccessPointDisassocSta(Ljava/lang/String;)I

    move-result v14

    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":I
    :sswitch_2f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->readWhiteList()I

    move-result v14

    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_result":I
    :sswitch_30
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setMaxClient(I)I

    move-result v14

    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_31
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setTxPower(I)I

    move-result v14

    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_32
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_33
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .local v3, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_d

    .end local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_34
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .local v3, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_e

    .end local v3    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_36
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v14

    .local v14, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_37
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_38
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_39
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .end local v3    # "_arg0":I
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_3a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_3b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, "_arg1":J
    invoke-virtual {p0, v3, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    :sswitch_3c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .restart local v12    # "_arg1":J
    invoke-virtual {p0, v3, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    :sswitch_3e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg0":J
    invoke-virtual {p0, v10, v11}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg0":J
    :sswitch_40
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_14
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .end local v3    # "_arg0":I
    :sswitch_41
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_42
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v14

    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .end local v14    # "_result":Z
    :sswitch_43
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_44
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_45
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v14

    .local v14, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_15

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_46
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_47
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_49
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_4b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->flushNetworkDnsCache(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_4c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setBlockAllPackets(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    :sswitch_4d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setApprovedIpOnBlockAllPacket(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_18
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    :sswitch_4f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v14

    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .end local v14    # "_result":Z
    :sswitch_50
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_1a
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_51
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_1b
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_52
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_1c
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Z
    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_53
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_54
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .local v4, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, "_arg2":[I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":[I
    :sswitch_55
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_1d
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .end local v3    # "_arg0":I
    :sswitch_56
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->buildFirewall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_57
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->tearDownFirewall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_58
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->clearAllFirewallPolicy()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_59
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleMobileData(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .end local v3    # "_arg0":I
    :sswitch_5a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleWifi(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .end local v3    # "_arg0":I
    :sswitch_5b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_20
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRuleMobileData(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_1f
    const/4 v4, 0x0

    goto :goto_20

    .end local v3    # "_arg0":I
    :sswitch_5c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_21
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRuleWifi(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_21

    .end local v3    # "_arg0":I
    :sswitch_5d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    .local v4, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[Landroid/net/UidRange;
    :sswitch_5e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    .restart local v4    # "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[Landroid/net/UidRange;
    :sswitch_5f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_60
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_61
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_62
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v3

    .local v3, "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_63
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v3

    .restart local v3    # "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_64
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .end local v14    # "_result":Z
    :sswitch_65
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_66
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_25
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    :cond_23
    const/4 v4, 0x0

    goto :goto_24

    .restart local v4    # "_arg1":Z
    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    :sswitch_67
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_68
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_69
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_6a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .local v4, "_arg1":Landroid/net/RouteInfo;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    .end local v5    # "_arg2":I
    :cond_25
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_26

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_6b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->removeLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    .end local v5    # "_arg2":I
    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_27

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_6c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_28
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setWhiteListUidNetworkRules(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .end local v3    # "_arg0":I
    :sswitch_6d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v6, 0x1

    .local v6, "_arg3":Z
    :goto_29
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/os/INetworkManagementService$Stub;->setWhiteListUrlNetworkRules(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg3":Z
    :cond_28
    const/4 v6, 0x0

    goto :goto_29

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_6e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_2a
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setRoamingReductionRules(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    :cond_29
    const/4 v3, 0x0

    goto :goto_2a

    :sswitch_6f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_70
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_71
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_72
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .local v4, "_arg1":[I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[I
    :sswitch_73
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, "_arg0":[I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[I
    :sswitch_74
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_75
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_76
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0, v3, v9}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_77
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_78
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .restart local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0, v3, v9}, Landroid/os/INetworkManagementService$Stub;->appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_79
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .local v5, "_arg2":Landroid/net/RouteInfo;
    :goto_2b
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Landroid/net/RouteInfo;
    .end local v14    # "_result":Z
    :cond_2a
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_2b

    .restart local v14    # "_result":Z
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/net/RouteInfo;
    .end local v14    # "_result":Z
    :sswitch_7a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/os/INetworkManagementService$Stub;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_2c

    const/4 v2, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v14    # "_result":Z
    :sswitch_7b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->delSrcRoute([BI)Z

    move-result v14

    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_2d

    const/4 v2, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2e

    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_7c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_7d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    .local v3, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Landroid/net/UidRange;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_7e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    .restart local v3    # "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->removeEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Landroid/net/UidRange;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_7f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    .restart local v3    # "_arg0":[Landroid/net/UidRange;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->blockEnterpriseUidRanges([Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Landroid/net/UidRange;
    :sswitch_80
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    .restart local v3    # "_arg0":[Landroid/net/UidRange;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->unblockEnterpriseUidRanges([Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":[Landroid/net/UidRange;
    :sswitch_81
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_82
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_83
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_2f
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_84
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->createNetworkGuardChain()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_85
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardChain()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_86
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_30
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->enableNetworkGuard(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    :cond_2f
    const/4 v3, 0x0

    goto :goto_30

    :sswitch_87
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->disableNetworkGuard()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_88
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardWhiteListRule()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_89
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRangeAcceptRule(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_8a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_32
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRule(IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_31

    .restart local v4    # "_arg1":Z
    :cond_31
    const/4 v5, 0x0

    goto :goto_32

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    :sswitch_8b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardProtocolAcceptRule(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_8c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->addMptcpLink(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/INetworkManagementService$Stub;->removeMptcpLink(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->addChain(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_8f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->removeChain(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_90
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/os/INetworkManagementService$Stub;->addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :sswitch_91
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/os/INetworkManagementService$Stub;->removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :sswitch_92
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/os/INetworkManagementService$Stub;->addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    :sswitch_93
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg5":Ljava/lang/String;
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/os/INetworkManagementService$Stub;->removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    :sswitch_94
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_95
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_96
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_97
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg4":Ljava/lang/String;
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_98
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_99
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_9a
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_9b
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_9c
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_9d
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->enableMptcp(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_9e
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->disableMptcp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_9f
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->addSourceRoute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_a0
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/os/INetworkManagementService$Stub;->delSourceRoute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_a1
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_a2
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_a3
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :cond_32
    const/4 v3, 0x0

    goto :goto_33

    :sswitch_a4
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    .restart local v3    # "_arg0":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/INetworkManagementService$Stub;->setPrivateIpRoute(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :cond_33
    const/4 v3, 0x0

    goto :goto_34

    :sswitch_a5
    const-string v2, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    const/4 v3, 0x1

    .restart local v3    # "_arg0":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/os/INetworkManagementService$Stub;->setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :cond_34
    const/4 v3, 0x0

    goto :goto_35

    nop

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
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
