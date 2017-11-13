.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x5a

.field static final TRANSACTION_checkIfLocalProxyPortExists:I = 0x59

.field static final TRANSACTION_checkMobileProvisioning:I = 0x38

.field static final TRANSACTION_createEnterpriseVpn:I = 0x4a

.field static final TRANSACTION_disconnect:I = 0x4c

.field static final TRANSACTION_disconnectPerAppVpn:I = 0x53

.field static final TRANSACTION_disconnectSystemVpn:I = 0x50

.field static final TRANSACTION_enforceVzw800ApnPermission:I = 0x60

.field static final TRANSACTION_establishEnterpriseVpn:I = 0x4f

.field static final TRANSACTION_establishVpn:I = 0x32

.field static final TRANSACTION_factoryReset:I = 0x5d

.field static final TRANSACTION_getActiveEnterpriseNetworkType:I = 0x1f

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x3

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x12

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkInfoEx:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x11

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x36

.field static final TRANSACTION_getChainingEnabledForProfile:I = 0x56

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getDhcpServerConfiguration:I = 0x3c

.field static final TRANSACTION_getGlobalProxy:I = 0x2d

.field static final TRANSACTION_getInterfaceName:I = 0x4b

.field static final TRANSACTION_getKdiLinkQualityInfo:I = 0x62

.field static final TRANSACTION_getKdiSignalStrength:I = 0x61

.field static final TRANSACTION_getLastTetherError:I = 0x1a

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x35

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x39

.field static final TRANSACTION_getNetIdForInterface:I = 0x55

.field static final TRANSACTION_getNetIdForNetworkInfo:I = 0x54

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x5

.field static final TRANSACTION_getProxyForNetwork:I = 0x2f

.field static final TRANSACTION_getProxyInfoForUid:I = 0x58

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x49

.field static final TRANSACTION_getRoamingReduction:I = 0x64

.field static final TRANSACTION_getRoutingInfo:I = 0x57

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x28

.field static final TRANSACTION_getTetherableIfaces:I = 0x22

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x26

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x27

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x25

.field static final TRANSACTION_getTetheredIfaces:I = 0x23

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x24

.field static final TRANSACTION_getUidsForApnType:I = 0x1e

.field static final TRANSACTION_getUsersForEnterpriseNetwork:I = 0x20

.field static final TRANSACTION_getVpnConfig:I = 0x33

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x13

.field static final TRANSACTION_isEntApnEnabled:I = 0x1d

.field static final TRANSACTION_isEnterpriseApn:I = 0x21

.field static final TRANSACTION_isMobilePolicyDataEnable:I = 0x17

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isSplitBillingEnabled:I = 0x1c

.field static final TRANSACTION_isTetheringSupported:I = 0x1b

.field static final TRANSACTION_knoxVpnProfileType:I = 0x52

.field static final TRANSACTION_listenForNetwork:I = 0x45

.field static final TRANSACTION_pendingListenForNetwork:I = 0x46

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x43

.field static final TRANSACTION_prepareEnterpriseVpn:I = 0x4d

.field static final TRANSACTION_prepareEnterpriseVpnExt:I = 0x4e

.field static final TRANSACTION_prepareVpn:I = 0x30

.field static final TRANSACTION_registerNetworkAgent:I = 0x41

.field static final TRANSACTION_registerNetworkFactory:I = 0x3e

.field static final TRANSACTION_releaseNetworkRequest:I = 0x47

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x44

.field static final TRANSACTION_removeRouteToHostAddress:I = 0x15

.field static final TRANSACTION_removeVpnAddress:I = 0x5b

.field static final TRANSACTION_reportInetCondition:I = 0x2b

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x2c

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x3f

.field static final TRANSACTION_requestNetwork:I = 0x42

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x14

.field static final TRANSACTION_saveDhcpServerConfiguration:I = 0x3d

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x48

.field static final TRANSACTION_setAirplaneMode:I = 0x3b

.field static final TRANSACTION_setGlobalProxy:I = 0x2e

.field static final TRANSACTION_setNcmTethering:I = 0x2a

.field static final TRANSACTION_setPolicyDataEnable:I = 0x16

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x3a

.field static final TRANSACTION_setRoamingReduction:I = 0x63

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x5c

.field static final TRANSACTION_setUsbTethering:I = 0x29

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x31

.field static final TRANSACTION_startLegacyVpn:I = 0x34

.field static final TRANSACTION_startNattKeepalive:I = 0x5e

.field static final TRANSACTION_stopKeepalive:I = 0x5f

.field static final TRANSACTION_tagSocket:I = 0x10

.field static final TRANSACTION_tether:I = 0x18

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x40

.field static final TRANSACTION_untether:I = 0x19

.field static final TRANSACTION_updateEnterpriseVpn:I = 0x51

.field static final TRANSACTION_updateLockdownVpn:I = 0x37


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v8

    .line 54
    .local v8, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v8, :cond_0

    .line 56
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v8, p3, v9}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v8    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 68
    .local v8, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v8, :cond_1

    .line 70
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 84
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 100
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v8, :cond_3

    .line 102
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 112
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 120
    .local v1, "_arg0":Landroid/net/Network;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 121
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v8, :cond_5

    .line 123
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_1

    .line 127
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v8

    .line 135
    .local v8, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 141
    .end local v8    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v8

    .line 143
    .restart local v8    # "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 149
    .end local v8    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v8

    .line 153
    .local v8, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v8, :cond_6

    .line 155
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v8, p3, v9}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/Network;
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v8

    .line 167
    .local v8, "_result":[Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 173
    .end local v8    # "_result":[Landroid/net/Network;
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 177
    .local v8, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v8

    .line 187
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v8, :cond_7

    move v0, v9

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v10

    goto :goto_2

    .line 193
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 195
    .local v8, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v8, :cond_8

    .line 197
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v8, p3, v9}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 201
    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v8

    .line 211
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v8, :cond_9

    .line 213
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v8, p3, v9}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 217
    :cond_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 226
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 231
    .local v1, "_arg0":Landroid/net/Network;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 232
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v8, :cond_b

    .line 234
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    invoke-virtual {v8, p3, v9}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_3

    .line 238
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    :cond_b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 252
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 253
    .local v8, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v8, :cond_d

    .line 255
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 250
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_4

    .line 259
    .restart local v8    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 268
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 274
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->tagSocket(Landroid/os/ParcelFileDescriptor;II)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 271
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 283
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v8

    .line 285
    .local v8, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 291
    .end local v8    # "_result":[Landroid/net/NetworkState;
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v8

    .line 293
    .local v8, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v8, :cond_f

    .line 295
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 299
    :cond_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v8    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v8

    .line 307
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v8, :cond_10

    move v10, v9

    :cond_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v8    # "_result":Z
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 318
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v8

    .line 319
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v8, :cond_11

    move v10, v9

    :cond_11
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Z
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeRouteToHostAddress(I[B)Z

    move-result v8

    .line 331
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v8, :cond_12

    move v10, v9

    :cond_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Z
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v2, v9

    .line 342
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_13
    move v2, v10

    .line 341
    goto :goto_6

    .line 348
    .end local v1    # "_arg0":I
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isMobilePolicyDataEnable()Z

    move-result v8

    .line 350
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v8, :cond_14

    move v10, v9

    :cond_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v8

    .line 360
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v8

    .line 370
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    .line 380
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v8

    .line 388
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v8, :cond_15

    move v10, v9

    :cond_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v8    # "_result":Z
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isSplitBillingEnabled()Z

    move-result v8

    .line 396
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v8, :cond_16

    move v10, v9

    :cond_16
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isEntApnEnabled(I)Z

    move-result v8

    .line 406
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v8, :cond_17

    move v10, v9

    :cond_17
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getUidsForApnType(Ljava/lang/String;)[I

    move-result-object v8

    .line 416
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 422
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":[I
    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveEnterpriseNetworkType(Ljava/lang/String;)I

    move-result v8

    .line 426
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getUsersForEnterpriseNetwork(I)[I

    move-result-object v8

    .line 436
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 442
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[I
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->isEnterpriseApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 450
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v8, :cond_18

    move v10, v9

    :cond_18
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 456
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_22
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 466
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 474
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v8

    .line 482
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 490
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 498
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_28
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 506
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_29
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v1, v9

    .line 515
    .local v1, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v8

    .line 516
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":I
    :cond_19
    move v1, v10

    .line 514
    goto :goto_7

    .line 522
    :sswitch_2a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v9

    .line 525
    .restart local v1    # "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNcmTethering(Z)I

    move-result v8

    .line 526
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":I
    :cond_1a
    move v1, v10

    .line 524
    goto :goto_8

    .line 532
    :sswitch_2b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 537
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 543
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 546
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 552
    .local v1, "_arg0":Landroid/net/Network;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v2, v9

    .line 553
    .local v2, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 549
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_9

    :cond_1c
    move v2, v10

    .line 552
    goto :goto_a

    .line 559
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_2d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    .line 561
    .local v8, "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v8, :cond_1d

    .line 563
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v8, p3, v9}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 567
    :cond_1d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 573
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :sswitch_2e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 576
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .line 581
    .local v1, "_arg0":Landroid/net/ProxyInfo;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 579
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/ProxyInfo;
    goto :goto_b

    .line 587
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_2f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 590
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 595
    .local v1, "_arg0":Landroid/net/Network;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v8

    .line 596
    .restart local v8    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v8, :cond_20

    .line 598
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-virtual {v8, p3, v9}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 593
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_c

    .line 602
    .restart local v8    # "_result":Landroid/net/ProxyInfo;
    :cond_20
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 608
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :sswitch_30
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 616
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v8, :cond_21

    move v10, v9

    :cond_21
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 622
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_31
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v3, v9

    .line 629
    .local v3, "_arg2":Z
    :goto_d
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    :cond_22
    move v3, v10

    .line 628
    goto :goto_d

    .line 635
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_32
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 638
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 643
    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 644
    .local v8, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v8, :cond_24

    .line 646
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    invoke-virtual {v8, p3, v9}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 641
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_e

    .line 650
    .restart local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 656
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_33
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    .line 660
    .local v8, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v8, :cond_25

    .line 662
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    invoke-virtual {v8, p3, v9}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 666
    :cond_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 672
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_34
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 675
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 680
    .local v1, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 678
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_f

    .line 686
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_35
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v8

    .line 690
    .local v8, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v8, :cond_27

    .line 692
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    invoke-virtual {v8, p3, v9}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 696
    :cond_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 702
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_36
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v8

    .line 704
    .local v8, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 710
    .end local v8    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_37
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v8

    .line 712
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v8, :cond_28

    move v10, v9

    :cond_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 718
    .end local v8    # "_result":Z
    :sswitch_38
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v8

    .line 722
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 728
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_39
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    move v1, v9

    .line 740
    .local v1, "_arg0":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 742
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_29
    move v1, v10

    .line 738
    goto :goto_10

    .line 749
    :sswitch_3b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v1, v9

    .line 752
    .restart local v1    # "_arg0":Z
    :goto_11
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_2a
    move v1, v10

    .line 751
    goto :goto_11

    .line 758
    :sswitch_3c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v8

    .line 760
    .local v8, "_result":Landroid/net/DhcpServerConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v8, :cond_2b

    .line 762
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    invoke-virtual {v8, p3, v9}, Landroid/net/DhcpServerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 766
    :cond_2b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 772
    .end local v8    # "_result":Landroid/net/DhcpServerConfiguration;
    :sswitch_3d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 775
    sget-object v0, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DhcpServerConfiguration;

    .line 780
    .local v1, "_arg0":Landroid/net/DhcpServerConfiguration;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-result v8

    .line 781
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    if-eqz v8, :cond_2c

    move v10, v9

    :cond_2c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 778
    .end local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    .end local v8    # "_result":Z
    :cond_2d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    goto :goto_12

    .line 787
    .end local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    :sswitch_3e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 790
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 796
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 793
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_13

    .line 803
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_3f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    .line 806
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 811
    .local v1, "_arg0":Landroid/net/Network;
    :goto_14
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v8

    .line 812
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    if-eqz v8, :cond_2f

    move v10, v9

    :cond_2f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 809
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Z
    :cond_30
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_14

    .line 818
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_40
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 821
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 826
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_15
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 824
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_31
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_15

    .line 832
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_41
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 835
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 841
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 842
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 848
    .local v2, "_arg1":Landroid/net/NetworkInfo;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    .line 849
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 855
    .local v3, "_arg2":Landroid/net/LinkProperties;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 856
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 862
    .local v4, "_arg3":Landroid/net/NetworkCapabilities;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 864
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 865
    sget-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkMisc;

    .local v6, "_arg5":Landroid/net/NetworkMisc;
    :goto_1a
    move-object v0, p0

    .line 870
    invoke-virtual/range {v0 .. v6}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v8

    .line 871
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 838
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    .end local v8    # "_result":I
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_16

    .line 845
    :cond_33
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_17

    .line 852
    :cond_34
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/net/LinkProperties;
    goto :goto_18

    .line 859
    :cond_35
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_19

    .line 868
    .restart local v5    # "_arg4":I
    :cond_36
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/NetworkMisc;
    goto :goto_1a

    .line 877
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_42
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 880
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 886
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 887
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 893
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 895
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 897
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 898
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 899
    .local v8, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    if-eqz v8, :cond_39

    .line 901
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 883
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_1b

    .line 890
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_1c

    .line 905
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":Landroid/os/IBinder;
    .restart local v5    # "_arg4":I
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_39
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 911
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_43
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 914
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 920
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 921
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 926
    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_1e
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 927
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    if-eqz v8, :cond_3c

    .line 929
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 917
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_1d

    .line 924
    :cond_3b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_1e

    .line 933
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_3c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 939
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_44
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 942
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 947
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 945
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :cond_3d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1f

    .line 953
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_45
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 956
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 962
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 963
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 969
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 970
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 971
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    if-eqz v8, :cond_40

    .line 973
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v8, p3, v9}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 959
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_20

    .line 966
    :cond_3f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_21

    .line 977
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_40
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 983
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_46
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 986
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 992
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    .line 993
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 998
    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_23
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 999
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 989
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_22

    .line 996
    :cond_42
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_23

    .line 1004
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_47
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 1007
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 1012
    .local v1, "_arg0":Landroid/net/NetworkRequest;
    :goto_24
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1010
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_24

    .line 1018
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_48
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    .line 1021
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1027
    .local v1, "_arg0":Landroid/net/Network;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    move v2, v9

    .line 1029
    .local v2, "_arg1":Z
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    move v3, v9

    .line 1030
    .local v3, "_arg2":Z
    :goto_27
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1024
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_44
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_25

    :cond_45
    move v2, v10

    .line 1027
    goto :goto_26

    .restart local v2    # "_arg1":Z
    :cond_46
    move v3, v10

    .line 1029
    goto :goto_27

    .line 1036
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :sswitch_49
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1039
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v8

    .line 1040
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1046
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_4a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1052
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    if-eqz v8, :cond_47

    move v10, v9

    :cond_47
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1058
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1062
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1072
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    move v2, v9

    .line 1073
    .local v2, "_arg1":Z
    :goto_28
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->disconnect(Ljava/lang/String;Z)Z

    move-result v8

    .line 1074
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v8, :cond_48

    move v10, v9

    :cond_48
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_49
    move v2, v10

    .line 1072
    goto :goto_28

    .line 1080
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    move v4, v9

    .line 1090
    .local v4, "_arg3":Z
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    move v5, v9

    .local v5, "_arg4":Z
    :goto_2a
    move-object v0, p0

    .line 1091
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v8

    .line 1092
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    if-eqz v8, :cond_4a

    move v10, v9

    :cond_4a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v8    # "_result":Z
    :cond_4b
    move v4, v10

    .line 1088
    goto :goto_29

    .restart local v4    # "_arg3":Z
    :cond_4c
    move v5, v10

    .line 1090
    goto :goto_2a

    .line 1098
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    :sswitch_4e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1104
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    move v3, v9

    .line 1106
    .local v3, "_arg2":Z
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4f

    move v4, v9

    .line 1107
    .restart local v4    # "_arg3":Z
    :goto_2c
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v8

    .line 1108
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    if-eqz v8, :cond_4d

    move v10, v9

    :cond_4d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v8    # "_result":Z
    :cond_4e
    move v3, v10

    .line 1104
    goto :goto_2b

    .restart local v3    # "_arg2":Z
    :cond_4f
    move v4, v10

    .line 1106
    goto :goto_2c

    .line 1114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :sswitch_4f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    .line 1117
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 1123
    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 1125
    .local v8, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    if-eqz v8, :cond_51

    .line 1127
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    invoke-virtual {v8, p3, v9}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1120
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_2d

    .line 1131
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_51
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1137
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_50
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1140
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->disconnectSystemVpn(I)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1146
    .end local v1    # "_arg0":I
    :sswitch_51
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1152
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    move v3, v9

    .line 1153
    .restart local v3    # "_arg2":Z
    :goto_2e
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->updateEnterpriseVpn(Ljava/lang/String;IZ)V

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    :cond_52
    move v3, v10

    .line 1152
    goto :goto_2e

    .line 1159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_52
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v8

    .line 1163
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_53
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1174
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->disconnectPerAppVpn(Ljava/lang/String;I)Z

    move-result v8

    .line 1175
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    if-eqz v8, :cond_53

    move v10, v9

    :cond_53
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_54
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_54

    .line 1184
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1189
    .local v1, "_arg0":Landroid/net/NetworkInfo;
    :goto_2f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetIdForNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v8

    .line 1190
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1187
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    .end local v8    # "_result":I
    :cond_54
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_2f

    .line 1196
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_55
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v8

    .line 1200
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_56
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getChainingEnabledForProfile(I)Z

    move-result v8

    .line 1210
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    if-eqz v8, :cond_55

    move v10, v9

    :cond_55
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1216
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_57
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1220
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1223
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getRoutingInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1224
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1230
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1233
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyInfoForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1240
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_59
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1243
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->checkIfLocalProxyPortExists(I)Z

    move-result v8

    .line 1244
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    if-eqz v8, :cond_56

    move v10, v9

    :cond_56
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1250
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_5a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1255
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v8

    .line 1256
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    if-eqz v8, :cond_57

    move v10, v9

    :cond_57
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1262
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_5b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1266
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1267
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v8

    .line 1268
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    if-eqz v8, :cond_58

    move v10, v9

    :cond_58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1274
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_5c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    .line 1277
    .local v1, "_arg0":[Landroid/net/Network;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v8

    .line 1278
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    if-eqz v8, :cond_59

    move v10, v9

    :cond_59
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1284
    .end local v1    # "_arg0":[Landroid/net/Network;
    .end local v8    # "_result":Z
    :sswitch_5d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1291
    :sswitch_5e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 1294
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1300
    .local v1, "_arg0":Landroid/net/Network;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1302
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 1303
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 1309
    .local v3, "_arg2":Landroid/os/Messenger;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1311
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1313
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1315
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 1316
    invoke-virtual/range {v0 .. v7}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1297
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Messenger;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    :cond_5a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_30

    .line 1306
    .restart local v2    # "_arg1":I
    :cond_5b
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Messenger;
    goto :goto_31

    .line 1322
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Messenger;
    :sswitch_5f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 1325
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 1331
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1332
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 1333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1328
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_32

    .line 1338
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_60
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1341
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->enforceVzw800ApnPermission(I)V

    .line 1342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1347
    .end local v1    # "_arg0":I
    :sswitch_61
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getKdiSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v8

    .line 1349
    .local v8, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    if-eqz v8, :cond_5d

    .line 1351
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    invoke-virtual {v8, p3, v9}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1355
    :cond_5d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1361
    .end local v8    # "_result":Landroid/telephony/SignalStrength;
    :sswitch_62
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getKdiLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v8

    .line 1363
    .local v8, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    if-eqz v8, :cond_5e

    .line 1365
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    invoke-virtual {v8, p3, v9}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1369
    :cond_5e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1375
    .end local v8    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_63
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1379
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1380
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRoamingReduction(II)V

    .line 1381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1386
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_64
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1389
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getRoamingReduction(I)I

    move-result v8

    .line 1390
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
