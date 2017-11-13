.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_AASADebug:I = 0x21

.field static final TRANSACTION_AASAToken_RegisterPackage:I = 0x22

.field static final TRANSACTION_AASAToken_UnRegisterPackage:I = 0x23

.field static final TRANSACTION_AASA_AddPackageToDataByService:I = 0x27

.field static final TRANSACTION_AASA_SetCMtoAppOps:I = 0x25

.field static final TRANSACTION_AASA_allowByPackage:I = 0x1c

.field static final TRANSACTION_AASA_blockByPackage:I = 0x1b

.field static final TRANSACTION_AASA_getSEInfo:I = 0x19

.field static final TRANSACTION_AASA_managedPermission:I = 0x17

.field static final TRANSACTION_AASA_managedPermissionByUID:I = 0x18

.field static final TRANSACTION_AASA_readDataByPackages:I = 0x20

.field static final TRANSACTION_AASA_readPackagesByType:I = 0x1f

.field static final TRANSACTION_AASA_readUids:I = 0x24

.field static final TRANSACTION_AASA_removePackage:I = 0x1e

.field static final TRANSACTION_AASA_updatePackage:I = 0x1d

.field static final TRANSACTION_ASKS_isBlockedAutoRunPackage:I = 0x29

.field static final TRANSACTION_SKA_checkDevice:I = 0x26

.field static final TRANSACTION_SKA_setMode:I = 0x28

.field static final TRANSACTION_activitySupportsIntent:I = 0x12

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x63

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0xb5

.field static final TRANSACTION_addPackageToPreferred:I = 0x56

.field static final TRANSACTION_addPermission:I = 0x2b

.field static final TRANSACTION_addPermissionAsync:I = 0x8a

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x61

.field static final TRANSACTION_addPreferredActivity:I = 0x5d

.field static final TRANSACTION_applyOverlays:I = 0xbd

.field static final TRANSACTION_applyRuntimePermissions:I = 0xa4

.field static final TRANSACTION_applyRuntimePermissionsForAllApplications:I = 0xa5

.field static final TRANSACTION_canForwardTo:I = 0x3f

.field static final TRANSACTION_cancelEMPHandlerSendPendingBroadcast:I = 0xbe

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0xa

.field static final TRANSACTION_checkPermission:I = 0x16

.field static final TRANSACTION_checkSignatures:I = 0x35

.field static final TRANSACTION_checkUidPermission:I = 0x2a

.field static final TRANSACTION_checkUidSignatures:I = 0x36

.field static final TRANSACTION_clearApplicationUserData:I = 0x74

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x64

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x62

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x5f

.field static final TRANSACTION_clearPackagePreferredActivitiesAsUser:I = 0xaa

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x9

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x73

.field static final TRANSACTION_deletePackage:I = 0x54

.field static final TRANSACTION_deletePackageAsUser:I = 0x53

.field static final TRANSACTION_enterSafeMode:I = 0x7a

.field static final TRANSACTION_extendVerificationTimeout:I = 0x8f

.field static final TRANSACTION_finishPackageInstall:I = 0x51

.field static final TRANSACTION_forceDexOpt:I = 0x82

.field static final TRANSACTION_freeStorage:I = 0x72

.field static final TRANSACTION_freeStorageAndNotify:I = 0x71

.field static final TRANSACTION_getActivityInfo:I = 0x10

.field static final TRANSACTION_getAllIntentFilters:I = 0x94

.field static final TRANSACTION_getAllPermissionGroups:I = 0xe

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x3d

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x6f

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0xad

.field static final TRANSACTION_getApplicationInfo:I = 0xf

.field static final TRANSACTION_getBlockUninstallForUser:I = 0xb0

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x6d

.field static final TRANSACTION_getComponentMetadataForIconTray:I = 0x7f

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x67

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x96

.field static final TRANSACTION_getDisplayChooserResolveInfo:I = 0x11

.field static final TRANSACTION_getFlagsForUid:I = 0x3a

.field static final TRANSACTION_getGrantedPermissions:I = 0xa1

.field static final TRANSACTION_getHomeActivities:I = 0x6b

.field static final TRANSACTION_getInstallLocation:I = 0x8c

.field static final TRANSACTION_getInstalledApplications:I = 0x48

.field static final TRANSACTION_getInstalledPackages:I = 0x46

.field static final TRANSACTION_getInstallerPackageName:I = 0x55

.field static final TRANSACTION_getInstrumentationInfo:I = 0x4d

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x69

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x93

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x91

.field static final TRANSACTION_getKeySetByAlias:I = 0xb1

.field static final TRANSACTION_getLastChosenActivity:I = 0x5b

.field static final TRANSACTION_getMetadataForIconTray:I = 0x7e

.field static final TRANSACTION_getMoveStatus:I = 0x85

.field static final TRANSACTION_getNameForUid:I = 0x38

.field static final TRANSACTION_getPackageGids:I = 0x7

.field static final TRANSACTION_getPackageGidsEtc:I = 0x8

.field static final TRANSACTION_getPackageInfo:I = 0x4

.field static final TRANSACTION_getPackageInstaller:I = 0xae

.field static final TRANSACTION_getPackageSizeInfo:I = 0x75

.field static final TRANSACTION_getPackageUid:I = 0x5

.field static final TRANSACTION_getPackageUidEtc:I = 0x6

.field static final TRANSACTION_getPackagesForUid:I = 0x37

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x47

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0xba

.field static final TRANSACTION_getPermissionFlags:I = 0x30

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xd

.field static final TRANSACTION_getPermissionInfo:I = 0xb

.field static final TRANSACTION_getPersistentApplications:I = 0x49

.field static final TRANSACTION_getPreferredActivities:I = 0x60

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x65

.field static final TRANSACTION_getPreferredPackages:I = 0x58

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x3b

.field static final TRANSACTION_getProgressionOfPackageChanged:I = 0xbc

.field static final TRANSACTION_getProviderInfo:I = 0x15

.field static final TRANSACTION_getReceiverInfo:I = 0x13

.field static final TRANSACTION_getRequestedRuntimePermissions:I = 0xa9

.field static final TRANSACTION_getRuntimePermissionGroups:I = 0xa8

.field static final TRANSACTION_getServiceInfo:I = 0x14

.field static final TRANSACTION_getSignatureInfo:I = 0x1a

.field static final TRANSACTION_getSigningKeySet:I = 0xb2

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x77

.field static final TRANSACTION_getSystemFeatureLevel:I = 0x79

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x76

.field static final TRANSACTION_getUidForSharedUser:I = 0x39

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x97

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0xb7

.field static final TRANSACTION_grantRuntimePermission:I = 0x2d

.field static final TRANSACTION_hasSystemFeature:I = 0x78

.field static final TRANSACTION_hasSystemUidErrors:I = 0x7d

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x8d

.field static final TRANSACTION_installExistingPackageAsUserForMDM:I = 0xa3

.field static final TRANSACTION_installPackage:I = 0x4f

.field static final TRANSACTION_installPackageAsUser:I = 0x50

.field static final TRANSACTION_installPackageForMDM:I = 0xa2

.field static final TRANSACTION_isFirstBoot:I = 0x98

.field static final TRANSACTION_isOnlyCoreApps:I = 0x99

.field static final TRANSACTION_isPackageAvailable:I = 0x3

.field static final TRANSACTION_isPackageComponentAvailable:I = 0xbf

.field static final TRANSACTION_isPackageFrozen:I = 0x1

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0xb3

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0xb4

.field static final TRANSACTION_isPermissionEnforced:I = 0x9c

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0xb8

.field static final TRANSACTION_isPermissionRevokedByUserFixed:I = 0xb9

.field static final TRANSACTION_isProtectedBroadcast:I = 0x34

.field static final TRANSACTION_isSafeMode:I = 0x7b

.field static final TRANSACTION_isStorageLow:I = 0xab

.field static final TRANSACTION_isThemeChanged:I = 0x2

.field static final TRANSACTION_isUidPrivileged:I = 0x3c

.field static final TRANSACTION_isUpgrade:I = 0x9a

.field static final TRANSACTION_movePackage:I = 0x88

.field static final TRANSACTION_movePrimaryStorage:I = 0x89

.field static final TRANSACTION_nextPackageToClean:I = 0x84

.field static final TRANSACTION_performBootDexOpt:I = 0x80

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x81

.field static final TRANSACTION_queryContentProviders:I = 0x4c

.field static final TRANSACTION_queryInstrumentation:I = 0x4e

.field static final TRANSACTION_queryIntentActivities:I = 0x40

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x41

.field static final TRANSACTION_queryIntentContentProviders:I = 0x45

.field static final TRANSACTION_queryIntentReceivers:I = 0x42

.field static final TRANSACTION_queryIntentServices:I = 0x44

.field static final TRANSACTION_queryPermissionsByGroup:I = 0xc

.field static final TRANSACTION_queryRuntimePermissionGroupByPermission:I = 0xa6

.field static final TRANSACTION_queryRuntimePermissionsByPermissionGroup:I = 0xa7

.field static final TRANSACTION_querySyncProviders:I = 0x4b

.field static final TRANSACTION_registerMoveCallback:I = 0x86

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0xb6

.field static final TRANSACTION_removePackageFromPreferred:I = 0x57

.field static final TRANSACTION_removePermission:I = 0x2c

.field static final TRANSACTION_replacePreferredActivity:I = 0x5e

.field static final TRANSACTION_resetApplicationPreferences:I = 0x59

.field static final TRANSACTION_resetApplicationPreferencesDataPreinstalledApps:I = 0x5a

.field static final TRANSACTION_resetRuntimePermissions:I = 0x2f

.field static final TRANSACTION_resolveContentProvider:I = 0x4a

.field static final TRANSACTION_resolveIntent:I = 0x3e

.field static final TRANSACTION_resolveService:I = 0x43

.field static final TRANSACTION_restoreDefaultApps:I = 0x68

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x6a

.field static final TRANSACTION_restorePreferredActivities:I = 0x66

.field static final TRANSACTION_revokeExternalPermissions:I = 0x9d

.field static final TRANSACTION_revokePermissionEDM:I = 0x9f

.field static final TRANSACTION_revokeRuntimePermission:I = 0x2e

.field static final TRANSACTION_rollbackPermission:I = 0xa0

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x6e

.field static final TRANSACTION_setApplicationEnabledSettingWithList:I = 0xbb

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0xac

.field static final TRANSACTION_setBlockUninstallForUser:I = 0xaf

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x6c

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x95

.field static final TRANSACTION_setInstallLocation:I = 0x8b

.field static final TRANSACTION_setInstallerPackageName:I = 0x52

.field static final TRANSACTION_setLastChosenActivity:I = 0x5c

.field static final TRANSACTION_setLicensePermissions:I = 0x9e

.field static final TRANSACTION_setPackageStoppedState:I = 0x70

.field static final TRANSACTION_setPermissionEnforced:I = 0x9b

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x33

.field static final TRANSACTION_systemReady:I = 0x7c

.field static final TRANSACTION_unregisterMoveCallback:I = 0x87

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x83

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x92

.field static final TRANSACTION_updatePermissionFlags:I = 0x31

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x32

.field static final TRANSACTION_verifyIntentFilter:I = 0x90

.field static final TRANSACTION_verifyPendingInstall:I = 0x8e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 2646
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isPackageFrozen(Ljava/lang/String;)Z

    move-result v30

    .line 57
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v30, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v4, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 63
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isThemeChanged(Ljava/lang/String;)Z

    move-result v30

    .line 67
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v30, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v4, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 73
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 78
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v30

    .line 79
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v30, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v4, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 85
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 92
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v30

    .line 93
    .local v30, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v30, :cond_3

    .line 95
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 99
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v30

    .line 111
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 117
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 121
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 123
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageUidEtc(Ljava/lang/String;II)I

    move-result v30

    .line 125
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 131
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v30

    .line 137
    .local v30, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 143
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":[I
    :sswitch_8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 149
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 150
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageGidsEtc(Ljava/lang/String;II)[I

    move-result-object v30

    .line 151
    .restart local v30    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 157
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":[I
    :sswitch_9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 161
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 163
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 167
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 171
    .restart local v30    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 173
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 177
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 182
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v30

    .line 183
    .local v30, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v30, :cond_4

    .line 185
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 189
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 195
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 200
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v37

    .line 201
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 207
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v30

    .line 213
    .local v30, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v30, :cond_5

    .line 215
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 219
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 225
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v36

    .line 229
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 231
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 235
    .end local v5    # "_arg0":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 242
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v30

    .line 243
    .local v30, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v30, :cond_6

    .line 245
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 249
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 255
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_10
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 258
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 264
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 266
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 267
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v30

    .line 268
    .local v30, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v30, :cond_8

    .line 270
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 274
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 280
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_11
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getDisplayChooserResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 282
    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v30, :cond_9

    .line 284
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 288
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 294
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_12
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 297
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 303
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 304
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 310
    .local v6, "_arg1":Landroid/content/Intent;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v30

    .line 312
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v30, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 300
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 307
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_c

    .line 313
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v30    # "_result":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 318
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_13
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 321
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 327
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 329
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 330
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v30

    .line 331
    .local v30, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v30, :cond_e

    .line 333
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 324
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 337
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 343
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_14
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 346
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 352
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 354
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 355
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v30

    .line 356
    .local v30, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v30, :cond_10

    .line 358
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 364
    :goto_11
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 349
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 362
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 368
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_15
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 371
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 377
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 379
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 380
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v30

    .line 381
    .local v30, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v30, :cond_12

    .line 383
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 389
    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 374
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 387
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 393
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_16
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 400
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .line 401
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 407
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_17
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 412
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 413
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 419
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_18
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 423
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 424
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermissionByUID(ILjava/lang/String;)I

    move-result v30

    .line 425
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 431
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_19
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 435
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 436
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_getSEInfo(ILjava/lang/String;)[B

    move-result-object v30

    .line 437
    .local v30, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 439
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 443
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":[B
    :sswitch_1a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSignatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 447
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 453
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v5, 0x1

    .line 457
    .local v5, "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/4 v6, 0x1

    .line 459
    .local v6, "_arg1":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 461
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 464
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->AASA_blockByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 455
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .line 457
    .restart local v5    # "_arg0":Z
    :cond_14
    const/4 v6, 0x0

    goto :goto_15

    .line 470
    .end local v5    # "_arg0":Z
    :sswitch_1c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v5, 0x1

    .line 474
    .restart local v5    # "_arg0":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v6, 0x1

    .line 476
    .restart local v6    # "_arg1":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 478
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 480
    .restart local v8    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 481
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->AASA_allowByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 472
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .line 474
    .restart local v5    # "_arg0":Z
    :cond_16
    const/4 v6, 0x0

    goto :goto_17

    .line 487
    .end local v5    # "_arg0":Z
    :sswitch_1d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->AASA_updatePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 500
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":[Ljava/lang/String;
    :sswitch_1e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 504
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 505
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_removePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 511
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 514
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->AASA_readPackagesByType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 515
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 517
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 521
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 525
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 526
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_readDataByPackages(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 527
    .restart local v30    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 529
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 533
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASADebug()V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 540
    :sswitch_22
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 544
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 545
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_RegisterPackage(Ljava/lang/String;I)Z

    move-result v30

    .line 546
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v30, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 547
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 552
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_23
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 556
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 557
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_UnRegisterPackage(Ljava/lang/String;I)Z

    move-result v30

    .line 558
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v30, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 559
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 564
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_24
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_readUids()[Ljava/lang/String;

    move-result-object v30

    .line 566
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 568
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 572
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_SetCMtoAppOps()Ljava/lang/String;

    move-result-object v30

    .line 574
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 580
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 583
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->SKA_checkDevice(I)[Ljava/lang/String;

    move-result-object v30

    .line 584
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 586
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 590
    .end local v5    # "_arg0":I
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->AASA_AddPackageToDataByService(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 599
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 602
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->SKA_setMode(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 608
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 611
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->ASKS_isBlockedAutoRunPackage(Ljava/lang/String;)Z

    move-result v30

    .line 612
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v30, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 613
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 618
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_2a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 622
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 623
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v30

    .line 624
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 630
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_2b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 633
    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 638
    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v30

    .line 639
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v30, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 636
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_1b

    .line 640
    .restart local v30    # "_result":Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 645
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :sswitch_2c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 654
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 661
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 667
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_2e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 671
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 673
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 674
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 680
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_2f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 687
    :sswitch_30
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 691
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 693
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 694
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .line 695
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 701
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_31
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 705
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 707
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 709
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 711
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 712
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 718
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :sswitch_32
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 722
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 724
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 725
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 731
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_33
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 737
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 738
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 739
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v30, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 740
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 745
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_34
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 748
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v30

    .line 749
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v30, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 750
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 755
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_35
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 759
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 760
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 761
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 767
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_36
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 771
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 772
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v30

    .line 773
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 779
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_37
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 782
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .line 783
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 785
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 789
    .end local v5    # "_arg0":I
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_38
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 792
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v30

    .line 793
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 799
    .end local v5    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v30

    .line 803
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 809
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_3a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 812
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v30

    .line 813
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 819
    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_3b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 822
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v30

    .line 823
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 829
    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_3c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 832
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v30

    .line 833
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v30, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 834
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 839
    .end local v5    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_3d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 843
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 845
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 849
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_3e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 852
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 858
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 860
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 862
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 863
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 864
    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    if-eqz v30, :cond_20

    .line 866
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 872
    :goto_21
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 855
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    .line 870
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 876
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_3f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 879
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 885
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 887
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 889
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 890
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v30

    .line 891
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    if-eqz v30, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 882
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_22

    .line 892
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .line 897
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :sswitch_40
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 900
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 906
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 908
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 910
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 911
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .line 912
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 914
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 903
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_24

    .line 918
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_41
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 921
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 927
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_25
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Intent;

    .line 929
    .local v6, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 931
    .local v7, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 932
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 938
    .local v8, "_arg3":Landroid/content/Intent;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 940
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 942
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    .line 943
    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .line 944
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 946
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 924
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Landroid/content/Intent;
    .end local v7    # "_arg2":[Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/Intent;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_24
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_25

    .line 935
    .restart local v6    # "_arg1":[Landroid/content/Intent;
    .restart local v7    # "_arg2":[Ljava/lang/String;
    :cond_25
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/Intent;
    goto :goto_26

    .line 950
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Landroid/content/Intent;
    .end local v7    # "_arg2":[Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/Intent;
    :sswitch_42
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 953
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 959
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 963
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 964
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .line 965
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 967
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 956
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_27

    .line 971
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_43
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 974
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 980
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 982
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 984
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 985
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 986
    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    if-eqz v30, :cond_28

    .line 988
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 994
    :goto_29
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 977
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_28

    .line 992
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 998
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_44
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 1001
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1007
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1009
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1011
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1012
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .line 1013
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1015
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_29
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_2a

    .line 1019
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_45
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 1022
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1028
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1030
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1032
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1033
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .line 1034
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1036
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_2b

    .line 1040
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_46
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1044
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1045
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .line 1046
    .local v30, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v30, :cond_2b

    .line 1048
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1054
    :goto_2c
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1052
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 1058
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_47
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1062
    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1064
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1065
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .line 1066
    .restart local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    if-eqz v30, :cond_2c

    .line 1068
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1074
    :goto_2d
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1072
    :cond_2c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1078
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_48
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1082
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1083
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .line 1084
    .restart local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v30, :cond_2d

    .line 1086
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1092
    :goto_2e
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1090
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 1096
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_49
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1099
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v32

    .line 1100
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1106
    .end local v5    # "_arg0":I
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_4a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1112
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1113
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v30

    .line 1114
    .local v30, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    if-eqz v30, :cond_2e

    .line 1116
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1122
    :goto_2f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1120
    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 1126
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_4b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1130
    .local v13, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1131
    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1134
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1135
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1139
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_4c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1143
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1145
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1146
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .line 1147
    .local v30, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    if-eqz v30, :cond_2f

    .line 1149
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1155
    :goto_30
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1153
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1159
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 1162
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1168
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1169
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v30

    .line 1170
    .local v30, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    if-eqz v30, :cond_31

    .line 1172
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1178
    :goto_32
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1165
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 1176
    .restart local v6    # "_arg1":I
    .restart local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1182
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_4e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1186
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1187
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v33

    .line 1188
    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1190
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_4f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1198
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 1200
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1202
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1204
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 1205
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .line 1211
    .local v9, "_arg4":Landroid/content/pm/VerificationParams;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 1212
    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_32
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_33

    .line 1218
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_50
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1222
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 1224
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1226
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1228
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 1229
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .line 1235
    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1237
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg6":I
    move-object/from16 v4, p0

    .line 1238
    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    :cond_33
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_34

    .line 1244
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_51
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1247
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v5    # "_arg0":I
    :sswitch_52
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1257
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1258
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_53
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1268
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v6

    .line 1270
    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1272
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1273
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1279
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_54
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1283
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    .line 1285
    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1287
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1288
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_55
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1297
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1298
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1304
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_56
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1307
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1313
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1316
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1322
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_58
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1325
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v35

    .line 1326
    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1328
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v5    # "_arg0":I
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_59
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1335
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1341
    .end local v5    # "_arg0":I
    :sswitch_5a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1344
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferencesDataPreinstalledApps(I)V

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v5    # "_arg0":I
    :sswitch_5b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 1353
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1359
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1361
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1362
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 1363
    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    if-eqz v30, :cond_35

    .line 1365
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1371
    :goto_36
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1356
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_34
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_35

    .line 1369
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 1375
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 1378
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1384
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1386
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1388
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 1389
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentFilter;

    .line 1395
    .local v8, "_arg3":Landroid/content/IntentFilter;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1397
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 1398
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .local v10, "_arg5":Landroid/content/ComponentName;
    :goto_39
    move-object/from16 v4, p0

    .line 1403
    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/content/IntentFilter;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/content/ComponentName;
    :cond_36
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_37

    .line 1392
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    :cond_37
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/IntentFilter;
    goto :goto_38

    .line 1401
    .restart local v9    # "_arg4":I
    :cond_38
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/ComponentName;
    goto :goto_39

    .line 1409
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/content/IntentFilter;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/content/ComponentName;
    :sswitch_5d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 1412
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1418
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1420
    .local v6, "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .line 1422
    .local v7, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1423
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1429
    .local v8, "_arg3":Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 1430
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1415
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_39
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3a

    .line 1426
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_3a
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1436
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 1439
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1445
    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1447
    .restart local v6    # "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .line 1449
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 1450
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1456
    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 1457
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1442
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_3b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3c

    .line 1453
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_3c
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3d

    .line 1463
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1466
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1472
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_60
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v20, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    .local v24, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1479
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v30

    .line 1480
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1483
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1484
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v24    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v30    # "_result":I
    :sswitch_61
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 1491
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1497
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 1498
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1504
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1505
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1494
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    :cond_3d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3e

    .line 1501
    :cond_3e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3f

    .line 1511
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_62
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1515
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1516
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_63
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 1525
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1531
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1533
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1535
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1537
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 1538
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1528
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_3f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_40

    .line 1544
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_64
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1548
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1549
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1555
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_65
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1558
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v30

    .line 1559
    .local v30, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1561
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1565
    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_66
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1569
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1570
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1576
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_67
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1579
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v30

    .line 1580
    .restart local v30    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1586
    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_68
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1590
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1591
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_69
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1600
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v30

    .line 1601
    .restart local v30    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1603
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_6a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1611
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1612
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1618
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_6b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v21, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v30

    .line 1622
    .local v30, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    if-eqz v30, :cond_40

    .line 1624
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1630
    :goto_41
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1631
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1628
    :cond_40
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1635
    .end local v21    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "_result":Landroid/content/ComponentName;
    :sswitch_6c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1638
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1644
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1646
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1648
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1649
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1641
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_41
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1655
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 1658
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1664
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1665
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v30

    .line 1666
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1661
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :cond_42
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .line 1672
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1676
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1678
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1680
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1682
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 1683
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_6f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1693
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1694
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v30

    .line 1695
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1701
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_70
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1705
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    const/4 v6, 0x1

    .line 1707
    .local v6, "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1708
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1705
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_43
    const/4 v6, 0x0

    goto :goto_44

    .line 1714
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_71
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1718
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1720
    .local v22, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 1721
    .local v7, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1727
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v22    # "_arg1":J
    :sswitch_72
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1731
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1733
    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 1734
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 1739
    .local v7, "_arg2":Landroid/content/IntentSender;
    :goto_45
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1737
    .end local v7    # "_arg2":Landroid/content/IntentSender;
    :cond_44
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/IntentSender;
    goto :goto_45

    .line 1745
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/content/IntentSender;
    .end local v22    # "_arg1":J
    :sswitch_73
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1749
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .line 1750
    .local v6, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1756
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_74
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1760
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .line 1762
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1763
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1769
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v7    # "_arg2":I
    :sswitch_75
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1773
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1775
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 1776
    .local v7, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1782
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_76
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v30

    .line 1784
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1786
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1790
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_77
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v30

    .line 1792
    .local v30, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1794
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v30    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_78
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1801
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v30

    .line 1802
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    if-eqz v30, :cond_45

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1803
    :cond_45
    const/4 v4, 0x0

    goto :goto_46

    .line 1808
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_79
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1811
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v30

    .line 1812
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1818
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_7a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1825
    :sswitch_7b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v30

    .line 1827
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    if-eqz v30, :cond_46

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1828
    :cond_46
    const/4 v4, 0x0

    goto :goto_47

    .line 1833
    .end local v30    # "_result":Z
    :sswitch_7c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1840
    :sswitch_7d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v30

    .line 1842
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    if-eqz v30, :cond_47

    const/4 v4, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1843
    :cond_47
    const/4 v4, 0x0

    goto :goto_48

    .line 1848
    .end local v30    # "_result":Z
    :sswitch_7e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1852
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1854
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1855
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 1856
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    if-eqz v30, :cond_48

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1857
    :cond_48
    const/4 v4, 0x0

    goto :goto_49

    .line 1862
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_7f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1866
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1868
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1870
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1871
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 1872
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    if-eqz v30, :cond_49

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1873
    :cond_49
    const/4 v4, 0x0

    goto :goto_4a

    .line 1878
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :sswitch_80
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1885
    :sswitch_81
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1889
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1890
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 1891
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    if-eqz v30, :cond_4a

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1892
    :cond_4a
    const/4 v4, 0x0

    goto :goto_4b

    .line 1897
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_82
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1900
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1906
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_83
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v5, 0x1

    .line 1910
    .local v5, "_arg0":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v6, 0x1

    .line 1911
    .local v6, "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1908
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .line 1910
    .restart local v5    # "_arg0":Z
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4d

    .line 1917
    .end local v5    # "_arg0":Z
    :sswitch_84
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 1920
    sget-object v4, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageCleanItem;

    .line 1925
    .local v5, "_arg0":Landroid/content/pm/PackageCleanItem;
    :goto_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v30

    .line 1926
    .local v30, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    if-eqz v30, :cond_4e

    .line 1928
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1934
    :goto_4f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1923
    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_4d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_4e

    .line 1932
    .restart local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_4e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .line 1938
    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_85
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1941
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v30

    .line 1942
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1948
    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_86
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v5

    .line 1951
    .local v5, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1957
    .end local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_87
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v5

    .line 1960
    .restart local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1966
    .end local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_88
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1970
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1971
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 1972
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1978
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_89
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1981
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v30

    .line 1982
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1984
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1988
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_8a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    .line 1991
    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 1996
    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v30

    .line 1997
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    if-eqz v30, :cond_50

    const/4 v4, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1994
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :cond_4f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_50

    .line 1998
    .restart local v30    # "_result":Z
    :cond_50
    const/4 v4, 0x0

    goto :goto_51

    .line 2003
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :sswitch_8b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2006
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v30

    .line 2007
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    if-eqz v30, :cond_51

    const/4 v4, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2008
    :cond_51
    const/4 v4, 0x0

    goto :goto_52

    .line 2013
    .end local v5    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_8c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2014
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v30

    .line 2015
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2021
    .end local v30    # "_result":I
    :sswitch_8d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2025
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2026
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v30

    .line 2027
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2033
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_8e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2037
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2038
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2044
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_8f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2048
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2050
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 2051
    .local v28, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2057
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v28    # "_arg2":J
    :sswitch_90
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2061
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2063
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v27

    .line 2064
    .local v27, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2066
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2070
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v27    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_91
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2074
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2075
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v30

    .line 2076
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2077
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2082
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_92
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2086
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2088
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2089
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v30

    .line 2090
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2091
    if-eqz v30, :cond_52

    const/4 v4, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2091
    :cond_52
    const/4 v4, 0x0

    goto :goto_53

    .line 2096
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_93
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2099
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v34

    .line 2100
    .local v34, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2106
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :sswitch_94
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2109
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 2110
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2112
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2116
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :sswitch_95
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2120
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2121
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v30

    .line 2122
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    if-eqz v30, :cond_53

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2123
    :cond_53
    const/4 v4, 0x0

    goto :goto_54

    .line 2128
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_96
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2131
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v30

    .line 2132
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2134
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2138
    .end local v5    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2139
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v30

    .line 2140
    .local v30, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    if-eqz v30, :cond_54

    .line 2142
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2148
    :goto_55
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2146
    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 2152
    .end local v30    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_98
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v30

    .line 2154
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2155
    if-eqz v30, :cond_55

    const/4 v4, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2155
    :cond_55
    const/4 v4, 0x0

    goto :goto_56

    .line 2160
    .end local v30    # "_result":Z
    :sswitch_99
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v30

    .line 2162
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    if-eqz v30, :cond_56

    const/4 v4, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2163
    :cond_56
    const/4 v4, 0x0

    goto :goto_57

    .line 2168
    .end local v30    # "_result":Z
    :sswitch_9a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v30

    .line 2170
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    if-eqz v30, :cond_57

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2171
    :cond_57
    const/4 v4, 0x0

    goto :goto_58

    .line 2176
    .end local v30    # "_result":Z
    :sswitch_9b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2180
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_58

    const/4 v6, 0x1

    .line 2181
    .local v6, "_arg1":Z
    :goto_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2180
    .end local v6    # "_arg1":Z
    :cond_58
    const/4 v6, 0x0

    goto :goto_59

    .line 2187
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2190
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v30

    .line 2191
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    if-eqz v30, :cond_59

    const/4 v4, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2192
    :cond_59
    const/4 v4, 0x0

    goto :goto_5a

    .line 2197
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_9d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    .line 2200
    sget-object v4, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2206
    .local v5, "_arg0":Landroid/content/pm/ResolveInfo;
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2207
    .local v26, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/IPackageManager$Stub;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v30

    .line 2208
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2203
    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "_result":I
    :cond_5a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    goto :goto_5b

    .line 2214
    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    :sswitch_9e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2217
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->setLicensePermissions(Ljava/lang/String;)I

    move-result v30

    .line 2218
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2224
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_9f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2228
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2230
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v7, 0x1

    .line 2231
    .local v7, "_arg2":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7}, Landroid/content/pm/IPackageManager$Stub;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v39

    .line 2232
    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2233
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2234
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2230
    .end local v7    # "_arg2":Z
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5b
    const/4 v7, 0x0

    goto :goto_5c

    .line 2238
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2242
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2244
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v7, 0x1

    .line 2245
    .restart local v7    # "_arg2":Z
    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7}, Landroid/content/pm/IPackageManager$Stub;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v39

    .line 2246
    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2248
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2244
    .end local v7    # "_arg2":Z
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5c
    const/4 v7, 0x0

    goto :goto_5d

    .line 2252
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2255
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 2256
    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2257
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2258
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2262
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2266
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 2268
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2270
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2272
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2274
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 2275
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/VerificationParams;

    .line 2281
    .local v10, "_arg5":Landroid/content/pm/VerificationParams;
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 2282
    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 2283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2278
    .end local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_5d
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    goto :goto_5e

    .line 2288
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    :sswitch_a3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2292
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2293
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v30

    .line 2294
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2300
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_a4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2304
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2306
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2308
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2309
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v30

    .line 2310
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    if-eqz v30, :cond_5e

    const/4 v4, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2312
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2311
    :cond_5e
    const/4 v4, 0x0

    goto :goto_5f

    .line 2316
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "_result":Z
    :sswitch_a5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2320
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2321
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForAllApplications(II)Z

    move-result v30

    .line 2322
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2323
    if-eqz v30, :cond_5f

    const/4 v4, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2323
    :cond_5f
    const/4 v4, 0x0

    goto :goto_60

    .line 2328
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_a6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2332
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2333
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 2334
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2340
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_a7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2343
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 2344
    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2346
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2350
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2351
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionGroups()Ljava/util/List;

    move-result-object v39

    .line 2352
    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2353
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2354
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2358
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2361
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 2362
    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2363
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2364
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2368
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_aa
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2372
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2373
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2379
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_ab
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v30

    .line 2381
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    if-eqz v30, :cond_60

    const/4 v4, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2383
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2382
    :cond_60
    const/4 v4, 0x0

    goto :goto_61

    .line 2387
    .end local v30    # "_result":Z
    :sswitch_ac
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2391
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    const/4 v6, 0x1

    .line 2393
    .local v6, "_arg1":Z
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2394
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v30

    .line 2395
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    if-eqz v30, :cond_62

    const/4 v4, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2391
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_62

    .line 2396
    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Z
    :cond_62
    const/4 v4, 0x0

    goto :goto_63

    .line 2401
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_ad
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2405
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2406
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v30

    .line 2407
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    if-eqz v30, :cond_63

    const/4 v4, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2408
    :cond_63
    const/4 v4, 0x0

    goto :goto_64

    .line 2413
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_ae
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2414
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v30

    .line 2415
    .local v30, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    if-eqz v30, :cond_64

    invoke-interface/range {v30 .. v30}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2417
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2416
    :cond_64
    const/4 v4, 0x0

    goto :goto_65

    .line 2421
    .end local v30    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_af
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2425
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    const/4 v6, 0x1

    .line 2427
    .local v6, "_arg1":Z
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2428
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v30

    .line 2429
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2430
    if-eqz v30, :cond_66

    const/4 v4, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2425
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :cond_65
    const/4 v6, 0x0

    goto :goto_66

    .line 2430
    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Z
    :cond_66
    const/4 v4, 0x0

    goto :goto_67

    .line 2435
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_b0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2439
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2440
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v30

    .line 2441
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    if-eqz v30, :cond_67

    const/4 v4, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2442
    :cond_67
    const/4 v4, 0x0

    goto :goto_68

    .line 2447
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_b1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2451
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2452
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v30

    .line 2453
    .local v30, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    if-eqz v30, :cond_68

    .line 2455
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2461
    :goto_69
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2459
    :cond_68
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    .line 2465
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2468
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v30

    .line 2469
    .restart local v30    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    if-eqz v30, :cond_69

    .line 2471
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2472
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2477
    :goto_6a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2475
    :cond_69
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    .line 2481
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2485
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 2486
    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .line 2491
    .local v6, "_arg1":Landroid/content/pm/KeySet;
    :goto_6b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v30

    .line 2492
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2493
    if-eqz v30, :cond_6b

    const/4 v4, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2489
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :cond_6a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6b

    .line 2493
    .restart local v30    # "_result":Z
    :cond_6b
    const/4 v4, 0x0

    goto :goto_6c

    .line 2498
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :sswitch_b4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2502
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 2503
    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .line 2508
    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    :goto_6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v30

    .line 2509
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    if-eqz v30, :cond_6d

    const/4 v4, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2511
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2506
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :cond_6c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6d

    .line 2510
    .restart local v30    # "_result":Z
    :cond_6d
    const/4 v4, 0x0

    goto :goto_6e

    .line 2515
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :sswitch_b5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v5

    .line 2518
    .local v5, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2520
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2524
    .end local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_b6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v5

    .line 2527
    .restart local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2529
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2533
    .end local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_b7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 2537
    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2538
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2544
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_b8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2548
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2550
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2551
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 2552
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2553
    if-eqz v30, :cond_6e

    const/4 v4, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2554
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2553
    :cond_6e
    const/4 v4, 0x0

    goto :goto_6f

    .line 2558
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_b9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2562
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2564
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2565
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 2566
    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    if-eqz v30, :cond_6f

    const/4 v4, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2568
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2567
    :cond_6f
    const/4 v4, 0x0

    goto :goto_70

    .line 2572
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_ba
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2573
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v30

    .line 2574
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2576
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2580
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_bb
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 2584
    .restart local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2586
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2588
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    const/4 v8, 0x1

    .line 2590
    .local v8, "_arg3":Z
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    const/4 v9, 0x1

    .line 2592
    .local v9, "_arg4":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2594
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    .line 2595
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2588
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_70
    const/4 v8, 0x0

    goto :goto_71

    .line 2590
    .restart local v8    # "_arg3":Z
    :cond_71
    const/4 v9, 0x0

    goto :goto_72

    .line 2601
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bc
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getProgressionOfPackageChanged()I

    move-result v30

    .line 2603
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2604
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2609
    .end local v30    # "_result":I
    :sswitch_bd
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 2613
    .restart local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2615
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOverlayCallback;

    move-result-object v7

    .line 2617
    .local v7, "_arg2":Landroid/content/pm/IOverlayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    const/4 v8, 0x1

    .line 2618
    .restart local v8    # "_arg3":Z
    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->applyOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/pm/IOverlayCallback;Z)V

    .line 2619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2617
    .end local v8    # "_arg3":Z
    :cond_72
    const/4 v8, 0x0

    goto :goto_73

    .line 2624
    .end local v7    # "_arg2":Landroid/content/pm/IOverlayCallback;
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_be
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2625
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->cancelEMPHandlerSendPendingBroadcast()V

    .line 2626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2627
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2631
    :sswitch_bf
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2635
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2637
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2639
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2640
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->isPackageComponentAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .line 2641
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    if-eqz v30, :cond_73

    const/4 v4, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2642
    :cond_73
    const/4 v4, 0x0

    goto :goto_74

    .line 44
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
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
