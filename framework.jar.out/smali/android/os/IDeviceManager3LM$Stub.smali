.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_addApn:I = 0x3b

.field static final TRANSACTION_addEmailAccount:I = 0x61

.field static final TRANSACTION_addOrUpdateApn:I = 0x50

.field static final TRANSACTION_addOrUpdateApnResult:I = 0x53

.field static final TRANSACTION_addVpnProfile:I = 0x5e

.field static final TRANSACTION_blockAdb:I = 0x26

.field static final TRANSACTION_blockScreenshot:I = 0x39

.field static final TRANSACTION_blockTethering:I = 0x38

.field static final TRANSACTION_blockUsb:I = 0x2c

.field static final TRANSACTION_changePackageState:I = 0x5d

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x12

.field static final TRANSACTION_checkPackageGroup:I = 0x69

.field static final TRANSACTION_checkPackagePermission:I = 0x8

.field static final TRANSACTION_checkSignature:I = 0x2a

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApn:I = 0x3c

.field static final TRANSACTION_clearApplicationUserData:I = 0x25

.field static final TRANSACTION_clearPackagePermissions:I = 0x33

.field static final TRANSACTION_completePackageScan:I = 0x37

.field static final TRANSACTION_deleteApn:I = 0x4d

.field static final TRANSACTION_deleteApnResult:I = 0x54

.field static final TRANSACTION_deletePackage:I = 0x14

.field static final TRANSACTION_disablePackage:I = 0xa

.field static final TRANSACTION_enablePackage:I = 0xb

.field static final TRANSACTION_getActivationState:I = 0x46

.field static final TRANSACTION_getApn:I = 0x51

.field static final TRANSACTION_getApnByMccMnc:I = 0x52

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getDeviceAdminLock:I = 0x63

.field static final TRANSACTION_getExternalSDEncryptionState:I = 0x34

.field static final TRANSACTION_getMultiUserEnabled:I = 0x3f

.field static final TRANSACTION_getNfcState:I = 0x22

.field static final TRANSACTION_getNotificationText:I = 0x40

.field static final TRANSACTION_getOwnerInfo:I = 0x49

.field static final TRANSACTION_getOwnerInfoEnabled:I = 0x48

.field static final TRANSACTION_getPackageScanner:I = 0x36

.field static final TRANSACTION_getPreferredApn:I = 0x4f

.field static final TRANSACTION_getSecureOSVendorName:I = 0x41

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_getWifiState:I = 0x65

.field static final TRANSACTION_installPackage:I = 0x13

.field static final TRANSACTION_isAdminLocked:I = 0x2f

.field static final TRANSACTION_isApnSelectable:I = 0x4b

.field static final TRANSACTION_isPackage3LM:I = 0x64

.field static final TRANSACTION_isPackageDisabled:I = 0xd

.field static final TRANSACTION_isPackageWhitelisted:I = 0x43

.field static final TRANSACTION_isReadExternalStorageBlocked:I = 0x44

.field static final TRANSACTION_isSdEncrypted:I = 0x1f

.field static final TRANSACTION_isSdEncryptionRequired:I = 0x20

.field static final TRANSACTION_isSsidAllowed:I = 0x28

.field static final TRANSACTION_isSsidLocked:I = 0x29

.field static final TRANSACTION_isUsbBlocked:I = 0x2d

.field static final TRANSACTION_keyStoreChangePassword:I = 0x1c

.field static final TRANSACTION_keyStoreContains:I = 0x1a

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x17

.field static final TRANSACTION_keyStoreGetKey:I = 0x16

.field static final TRANSACTION_keyStorePutKey:I = 0x15

.field static final TRANSACTION_keyStoreReset:I = 0x1b

.field static final TRANSACTION_keyStoreSetPassword:I = 0x18

.field static final TRANSACTION_keyStoreUnlock:I = 0x19

.field static final TRANSACTION_lockAdmin:I = 0x2e

.field static final TRANSACTION_lockApn:I = 0x3a

.field static final TRANSACTION_notification:I = 0x2b

.field static final TRANSACTION_putSettingsSecureInt:I = 0x1e

.field static final TRANSACTION_putSettingsSecureString:I = 0x1d

.field static final TRANSACTION_reboot:I = 0x60

.field static final TRANSACTION_restoreDefaultApns:I = 0x3d

.field static final TRANSACTION_setActivationState:I = 0x45

.field static final TRANSACTION_setActiveAdmin:I = 0x5b

.field static final TRANSACTION_setAllowedPackages:I = 0xc

.field static final TRANSACTION_setApnList:I = 0x4c

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0xf

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0xe

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x10

.field static final TRANSACTION_setAppNotification:I = 0x67

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x11

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setDeviceAdminLock:I = 0x62

.field static final TRANSACTION_setDowntime:I = 0x68

.field static final TRANSACTION_setExternalStorageEnabled:I = 0x4a

.field static final TRANSACTION_setLocationMode:I = 0x6a

.field static final TRANSACTION_setLocationProviderEnabled:I = 0x31

.field static final TRANSACTION_setMultiUserEnabled:I = 0x3e

.field static final TRANSACTION_setNfcState:I = 0x23

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setNotificationsWhenLocked:I = 0x66

.field static final TRANSACTION_setOtaDelay:I = 0x30

.field static final TRANSACTION_setOwnerInfo:I = 0x59

.field static final TRANSACTION_setOwnerInfoEnable:I = 0x58

.field static final TRANSACTION_setPackagePermission:I = 0x9

.field static final TRANSACTION_setPackageScanner:I = 0x35

.field static final TRANSACTION_setPackageWhitelist:I = 0x42

.field static final TRANSACTION_setPreferredActivity:I = 0x57

.field static final TRANSACTION_setPreferredApn:I = 0x4e

.field static final TRANSACTION_setPreferredApnResult:I = 0x55

.field static final TRANSACTION_setProvisionedSsids:I = 0x47

.field static final TRANSACTION_setRestrictBackgroundData:I = 0x5c

.field static final TRANSACTION_setScreenLock:I = 0x5f

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x21

.field static final TRANSACTION_setSsidFilter:I = 0x27

.field static final TRANSACTION_setWifiState:I = 0x24

.field static final TRANSACTION_setisSimulatorPermitted:I = 0x32

.field static final TRANSACTION_unlock:I = 0x4

.field static final TRANSACTION_updateLocale:I = 0x5a

.field static final TRANSACTION_updateSdNotification:I = 0x56


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 1117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v8

    .line 57
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v8    # "_result":I
    :sswitch_3
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 66
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    :sswitch_4
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 82
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 88
    :sswitch_6
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v8

    .line 90
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 96
    .end local v8    # "_result":Z
    :sswitch_7
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 105
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 111
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_9
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 124
    .local v3, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 125
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 126
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 152
    .local v9, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v8

    .line 154
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 160
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v8

    .line 164
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 170
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 173
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v8

    .line 175
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 181
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 184
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 185
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v8

    .line 186
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 192
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_10
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 195
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 196
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v8

    .line 197
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v8, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 198
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 203
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_11
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 206
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 207
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v8

    .line 208
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 209
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 214
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_12
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v8

    .line 218
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v8, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 219
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_13
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 238
    .local v2, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg1":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 250
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 251
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 256
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v8

    .line 270
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 271
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 276
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 285
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v8

    .line 289
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 290
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_1a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v8

    .line 299
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 300
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 305
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_1b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v8

    .line 307
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v8, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 313
    .end local v8    # "_result":Z
    :sswitch_1c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 319
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 325
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 331
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 332
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_1e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v8

    .line 343
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 344
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 349
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_1f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v8

    .line 351
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 357
    .end local v8    # "_result":Z
    :sswitch_20
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncryptionRequired()Z

    move-result v8

    .line 359
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 360
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 365
    .end local v8    # "_result":Z
    :sswitch_21
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    .line 368
    .local v1, "_arg0":Z
    :goto_19
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 367
    .end local v1    # "_arg0":Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 374
    :sswitch_22
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNfcState()I

    move-result v8

    .line 376
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 382
    .end local v8    # "_result":I
    :sswitch_23
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 391
    .end local v1    # "_arg0":I
    :sswitch_24
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 400
    .end local v1    # "_arg0":I
    :sswitch_25
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v8

    .line 404
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 410
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_26
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 413
    .local v1, "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 412
    .end local v1    # "_arg0":Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 419
    :sswitch_27
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 422
    .local v7, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 428
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_28
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v8

    .line 432
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 433
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 438
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_29
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isSsidLocked(Ljava/lang/String;)Z

    move-result v8

    .line 442
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 448
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v8

    .line 452
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 453
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 458
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_2b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 471
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_2c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 474
    .local v1, "_arg0":Z
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockUsb(Z)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 473
    .end local v1    # "_arg0":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 480
    :sswitch_2d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isUsbBlocked()Z

    move-result v8

    .line 482
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v8, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 483
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 488
    .end local v8    # "_result":Z
    :sswitch_2e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    .line 491
    .restart local v1    # "_arg0":Z
    :goto_21
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->lockAdmin(Z)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 497
    :sswitch_2f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdminLocked()Z

    move-result v8

    .line 499
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 505
    .end local v8    # "_result":Z
    :sswitch_30
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOtaDelay(I)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 514
    .end local v1    # "_arg0":I
    :sswitch_31
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    .line 519
    .local v2, "_arg1":Z
    :goto_23
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setLocationProviderEnabled(Ljava/lang/String;Z)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 518
    .end local v2    # "_arg1":Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 525
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    .line 528
    .local v1, "_arg0":Z
    :goto_24
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setisSimulatorPermitted(Z)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1    # "_arg0":Z
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 534
    :sswitch_33
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearPackagePermissions()V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 541
    :sswitch_34
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getExternalSDEncryptionState()I

    move-result v8

    .line 543
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 549
    .end local v8    # "_result":I
    :sswitch_35
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    .line 555
    .restart local v2    # "_arg1":Z
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackageScanner(Ljava/lang/String;ZI)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 553
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 562
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_36
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageScanner()[Ljava/lang/String;

    move-result-object v8

    .line 564
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 570
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_37
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->completePackageScan(II)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 581
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_38
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    .line 584
    .local v1, "_arg0":Z
    :goto_26
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockTethering(Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 583
    .end local v1    # "_arg0":Z
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 590
    :sswitch_39
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    .line 593
    .restart local v1    # "_arg0":Z
    :goto_27
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockScreenshot(Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 592
    .end local v1    # "_arg0":Z
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 599
    :sswitch_3a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    .line 602
    .restart local v1    # "_arg0":Z
    :goto_28
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->lockApn(Z)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 601
    .end local v1    # "_arg0":Z
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 608
    :sswitch_3b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 611
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 612
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addApn(Ljava/util/Map;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 618
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_3c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearApn()V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 625
    :sswitch_3d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->restoreDefaultApns()V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 632
    :sswitch_3e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    .line 635
    .local v1, "_arg0":Z
    :goto_29
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setMultiUserEnabled(Z)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 634
    .end local v1    # "_arg0":Z
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 641
    :sswitch_3f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getMultiUserEnabled()Z

    move-result v8

    .line 643
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 644
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 649
    .end local v8    # "_result":Z
    :sswitch_40
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNotificationText()Ljava/lang/String;

    move-result-object v8

    .line 651
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 657
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getSecureOSVendorName()Ljava/lang/String;

    move-result-object v8

    .line 659
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 665
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_42
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 668
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Landroid/os/IDeviceManager3LM$Stub;->setPackageWhitelist(Ljava/util/List;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 674
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_43
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v8

    .line 678
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 679
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 684
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_44
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isReadExternalStorageBlocked()Z

    move-result v8

    .line 686
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v8, :cond_2b

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 687
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2c

    .line 692
    .end local v8    # "_result":Z
    :sswitch_45
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    .line 695
    .local v1, "_arg0":Z
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setActivationState(Z)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 694
    .end local v1    # "_arg0":Z
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 701
    :sswitch_46
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getActivationState()Z

    move-result v8

    .line 703
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v8, :cond_2d

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 704
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2e

    .line 709
    .end local v8    # "_result":Z
    :sswitch_47
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 712
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Landroid/os/IDeviceManager3LM$Stub;->setProvisionedSsids(Ljava/util/List;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 718
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_48
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfoEnabled()I

    move-result v8

    .line 720
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 726
    .end local v8    # "_result":I
    :sswitch_49
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfo()Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 734
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    .line 737
    .restart local v1    # "_arg0":Z
    :goto_2f
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setExternalStorageEnabled(Z)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 736
    .end local v1    # "_arg0":Z
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2f

    .line 743
    :sswitch_4b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isApnSelectable(Ljava/lang/String;)Z

    move-result v8

    .line 747
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v8, :cond_2f

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 748
    :cond_2f
    const/4 v0, 0x0

    goto :goto_30

    .line 753
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 756
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Landroid/os/IDeviceManager3LM$Stub;->setApnList(Ljava/util/List;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 762
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 765
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->deleteApn(I)Z

    move-result v8

    .line 766
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v8, :cond_30

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 767
    :cond_30
    const/4 v0, 0x0

    goto :goto_31

    .line 772
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_4e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApn(I)Z

    move-result v8

    .line 776
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v8, :cond_31

    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 777
    :cond_31
    const/4 v0, 0x0

    goto :goto_32

    .line 782
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_4f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPreferredApn()I

    move-result v8

    .line 784
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 790
    .end local v8    # "_result":I
    :sswitch_50
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 793
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 795
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 796
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApn(Ljava/util/Map;I)Z

    move-result v8

    .line 797
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    if-eqz v8, :cond_32

    const/4 v0, 0x1

    :goto_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 798
    :cond_32
    const/4 v0, 0x0

    goto :goto_33

    .line 803
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_51
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->getApn(I)Ljava/util/Map;

    move-result-object v8

    .line 807
    .local v8, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 809
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 813
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/util/Map;
    :sswitch_52
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->getApnByMccMnc(II)Ljava/util/List;

    move-result-object v8

    .line 819
    .local v8, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 821
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 825
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Ljava/util/List;
    :sswitch_53
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 828
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 830
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v8

    .line 832
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 838
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_54
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->deleteApnResult(I)I

    move-result v8

    .line 842
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 848
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_55
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApnResult(I)I

    move-result v8

    .line 852
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 858
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_56
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    .line 862
    .local v1, "_arg0":Z
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->updateSdNotification(ZLjava/lang/String;)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 860
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_33
    const/4 v1, 0x0

    goto :goto_34

    .line 869
    :sswitch_57
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    .line 872
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 878
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 879
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 885
    .local v2, "_arg1":Landroid/content/IntentFilter;
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 887
    .restart local v3    # "_arg2":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ComponentName;

    .line 889
    .local v4, "_arg3":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 890
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg4":Landroid/content/ComponentName;
    :goto_37
    move-object v0, p0

    .line 895
    invoke-virtual/range {v0 .. v5}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredActivity(Landroid/content/Intent;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 875
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/IntentFilter;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/content/ComponentName;
    :cond_34
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_35

    .line 882
    :cond_35
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_36

    .line 893
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":[Landroid/content/ComponentName;
    :cond_36
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/content/ComponentName;
    goto :goto_37

    .line 901
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/IntentFilter;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/content/ComponentName;
    :sswitch_58
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    .line 904
    .local v1, "_arg0":Z
    :goto_38
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOwnerInfoEnable(Z)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 903
    .end local v1    # "_arg0":Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_38

    .line 910
    :sswitch_59
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOwnerInfo(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 919
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->updateLocale(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 925
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    if-eqz v8, :cond_38

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 926
    :cond_38
    const/4 v0, 0x0

    goto :goto_39

    .line 931
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_5b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 935
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    .line 936
    .local v2, "_arg1":Z
    :goto_3a
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setActiveAdmin(Ljava/lang/String;Z)Z

    move-result v8

    .line 937
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v8, :cond_3a

    const/4 v0, 0x1

    :goto_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 935
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_3a

    .line 938
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_3a
    const/4 v0, 0x0

    goto :goto_3b

    .line 943
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_5c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 947
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    .line 948
    .restart local v2    # "_arg1":Z
    :goto_3c
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setRestrictBackgroundData(Ljava/lang/String;Z)Z

    move-result v8

    .line 949
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v8, :cond_3c

    const/4 v0, 0x1

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 947
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3c

    .line 950
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3d

    .line 955
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_5d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 959
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 960
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->changePackageState(Ljava/lang/String;I)V

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 966
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 969
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 970
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addVpnProfile(Ljava/util/Map;)Z

    move-result v8

    .line 971
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    if-eqz v8, :cond_3d

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 972
    :cond_3d
    const/4 v0, 0x0

    goto :goto_3e

    .line 977
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_5f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setScreenLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 985
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v8, :cond_3e

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 986
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3f

    .line 991
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_60
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 994
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->reboot(Ljava/lang/String;)Z

    move-result v8

    .line 995
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    if-eqz v8, :cond_3f

    const/4 v0, 0x1

    :goto_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 996
    :cond_3f
    const/4 v0, 0x0

    goto :goto_40

    .line 1001
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_61
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 1004
    .restart local v9    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 1005
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addEmailAccount(Ljava/util/Map;)Z

    move-result v8

    .line 1006
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    if-eqz v8, :cond_40

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_40
    const/4 v0, 0x0

    goto :goto_41

    .line 1012
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "_result":Z
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    :sswitch_62
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v2, 0x1

    .line 1017
    .local v2, "_arg1":Z
    :goto_42
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setDeviceAdminLock(Ljava/lang/String;Z)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1016
    .end local v2    # "_arg1":Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_42

    .line 1023
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_63
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->getDeviceAdminLock(Ljava/lang/String;)Z

    move-result v8

    .line 1027
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    if-eqz v8, :cond_42

    const/4 v0, 0x1

    :goto_43
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1028
    :cond_42
    const/4 v0, 0x0

    goto :goto_43

    .line 1033
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_64
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackage3LM(Ljava/lang/String;)Z

    move-result v8

    .line 1037
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v8, :cond_43

    const/4 v0, 0x1

    :goto_44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1038
    :cond_43
    const/4 v0, 0x0

    goto :goto_44

    .line 1043
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_65
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getWifiState()I

    move-result v8

    .line 1045
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v8    # "_result":I
    :sswitch_66
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1054
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationsWhenLocked(I)Z

    move-result v8

    .line 1055
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    if-eqz v8, :cond_44

    const/4 v0, 0x1

    :goto_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1056
    :cond_44
    const/4 v0, 0x0

    goto :goto_45

    .line 1061
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_67
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    const/4 v2, 0x1

    .line 1067
    .restart local v2    # "_arg1":Z
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    const/4 v3, 0x1

    .line 1069
    .local v3, "_arg2":Z
    :goto_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    const/4 v4, 0x1

    .line 1070
    .local v4, "_arg3":Z
    :goto_48
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IDeviceManager3LM$Stub;->setAppNotification(Ljava/lang/String;ZZZ)Z

    move-result v8

    .line 1071
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    if-eqz v8, :cond_48

    const/4 v0, 0x1

    :goto_49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v8    # "_result":Z
    :cond_45
    const/4 v2, 0x0

    goto :goto_46

    .line 1067
    .restart local v2    # "_arg1":Z
    :cond_46
    const/4 v3, 0x0

    goto :goto_47

    .line 1069
    .restart local v3    # "_arg2":Z
    :cond_47
    const/4 v4, 0x0

    goto :goto_48

    .line 1072
    .restart local v4    # "_arg3":Z
    .restart local v8    # "_result":Z
    :cond_48
    const/4 v0, 0x0

    goto :goto_49

    .line 1077
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v8    # "_result":Z
    :sswitch_68
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1085
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1087
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1089
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    .local v6, "_arg5":Z
    :goto_4a
    move-object v0, p0

    .line 1090
    invoke-virtual/range {v0 .. v6}, Landroid/os/IDeviceManager3LM$Stub;->setDowntime(Ljava/lang/String;IIIIZ)Z

    move-result v8

    .line 1091
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    if-eqz v8, :cond_4a

    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1089
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :cond_49
    const/4 v6, 0x0

    goto :goto_4a

    .line 1092
    .restart local v6    # "_arg5":Z
    .restart local v8    # "_result":Z
    :cond_4a
    const/4 v0, 0x0

    goto :goto_4b

    .line 1097
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :sswitch_69
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackageGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1103
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    if-eqz v8, :cond_4b

    const/4 v0, 0x1

    :goto_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1104
    :cond_4b
    const/4 v0, 0x0

    goto :goto_4c

    .line 1109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_6a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1112
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setLocationMode(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
