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
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_0

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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isPackageFrozen(Ljava/lang/String;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isThemeChanged(Ljava/lang/String;)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageUidEtc(Ljava/lang/String;II)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v30

    .local v30, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":[I
    :sswitch_8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageGidsEtc(Ljava/lang/String;II)[I

    move-result-object v30

    .restart local v30    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":[I
    :sswitch_9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v37

    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v36

    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_10
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_11
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getDisplayChooserResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_12
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .local v6, "_arg1":Landroid/content/Intent;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_c

    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v30    # "_result":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_13
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_14
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_10

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_15
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_16
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_17
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_18
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermissionByUID(ILjava/lang/String;)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_19
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_getSEInfo(ILjava/lang/String;)[B

    move-result-object v30

    .local v30, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":[B
    :sswitch_1a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSignatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v5, 0x1

    .local v5, "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->AASA_blockByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .restart local v5    # "_arg0":Z
    :cond_14
    const/4 v6, 0x0

    goto :goto_15

    .end local v5    # "_arg0":Z
    :sswitch_1c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v5, 0x1

    .restart local v5    # "_arg0":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v6, 0x1

    .restart local v6    # "_arg1":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->AASA_allowByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .restart local v5    # "_arg0":Z
    :cond_16
    const/4 v6, 0x0

    goto :goto_17

    .end local v5    # "_arg0":Z
    :sswitch_1d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->AASA_updatePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":[Ljava/lang/String;
    :sswitch_1e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_removePackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->AASA_readPackagesByType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASA_readDataByPackages(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASADebug()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_22
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_RegisterPackage(Ljava/lang/String;I)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_23
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_UnRegisterPackage(Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_24
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_readUids()[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_SetCMtoAppOps()Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->SKA_checkDevice(I)[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->AASA_AddPackageToDataByService(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->SKA_setMode(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->ASKS_isBlockedAutoRunPackage(Ljava/lang/String;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_2a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_2b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_1b

    .restart local v30    # "_result":Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :sswitch_2c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_2e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_2f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_30
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":I
    :sswitch_31
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :sswitch_32
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_33
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_34
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_35
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_36
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_37
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_38
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_3a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_3b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_3c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .end local v5    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_3d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_3e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .local v5, "_arg0":Landroid/content/Intent;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_20

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_21
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_3f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_22

    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :sswitch_40
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_24

    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_41
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_25
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Intent;

    .local v6, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .local v8, "_arg3":Landroid/content/Intent;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

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

    .restart local v6    # "_arg1":[Landroid/content/Intent;
    .restart local v7    # "_arg2":[Ljava/lang/String;
    :cond_25
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/Intent;
    goto :goto_26

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Landroid/content/Intent;
    .end local v7    # "_arg2":[Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/Intent;
    :sswitch_42
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .local v5, "_arg0":Landroid/content/Intent;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_27

    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_43
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_28

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_28

    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_44
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_29
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_2a

    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_45
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v38

    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_2b

    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_46
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_47
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .restart local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2c

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2d
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_48
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .restart local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2d

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2e
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_49
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v32

    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_4a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2f
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_4b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .local v13, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_4c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_30
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_31

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_32
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .restart local v6    # "_arg1":I
    .restart local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_4e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v33

    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_4f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .local v9, "_arg4":Landroid/content/pm/VerificationParams;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_32
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_33

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_50
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .restart local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg6":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    :cond_33
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_34

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_51
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    :sswitch_52
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_53
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v6

    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_54
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_55
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_56
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_58
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v35

    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_59
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    :sswitch_5a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferencesDataPreinstalledApps(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    :sswitch_5b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .local v5, "_arg0":Landroid/content/Intent;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_35

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_36
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_34
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_35

    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentFilter;

    .local v8, "_arg3":Landroid/content/IntentFilter;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .local v10, "_arg5":Landroid/content/ComponentName;
    :goto_39
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

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

    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    :cond_37
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/IntentFilter;
    goto :goto_38

    .restart local v9    # "_arg4":I
    :cond_38
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/ComponentName;
    goto :goto_39

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .local v7, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .local v8, "_arg3":Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_39
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3a

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_3a
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3b

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_3b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3c

    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_3c
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3d

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_60
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v24    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v30    # "_result":I
    :sswitch_61
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    :cond_3d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3e

    :cond_3e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3f

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_62
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_63
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_3f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_40

    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_64
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_65
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v30

    .local v30, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_66
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_67
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v30

    .restart local v30    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_68
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_69
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v30

    .restart local v30    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":[B
    :sswitch_6a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":I
    :sswitch_6b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v30

    .local v30, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_40

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_41
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_40
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .end local v21    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "_result":Landroid/content/ComponentName;
    :sswitch_6c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_41
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :cond_42
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_6f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_70
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_43
    const/4 v6, 0x0

    goto :goto_44

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_71
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .local v7, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v22    # "_arg1":J
    :sswitch_72
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .local v7, "_arg2":Landroid/content/IntentSender;
    :goto_45
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg2":Landroid/content/IntentSender;
    :cond_44
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/IntentSender;
    goto :goto_45

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/content/IntentSender;
    .end local v22    # "_arg1":J
    :sswitch_73
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .local v6, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_74
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .restart local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v7    # "_arg2":I
    :sswitch_75
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .local v7, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_76
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_77
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v30

    .local v30, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_78
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_45

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_45
    const/4 v4, 0x0

    goto :goto_46

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_79
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_7a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_7b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_46

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_46
    const/4 v4, 0x0

    goto :goto_47

    .end local v30    # "_result":Z
    :sswitch_7c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_7d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_47

    const/4 v4, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_47
    const/4 v4, 0x0

    goto :goto_48

    .end local v30    # "_result":Z
    :sswitch_7e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_48

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_48
    const/4 v4, 0x0

    goto :goto_49

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_7f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_49

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_49
    const/4 v4, 0x0

    goto :goto_4a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v30    # "_result":Z
    :sswitch_80
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_81
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_4a

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4a
    const/4 v4, 0x0

    goto :goto_4b

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_82
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_83
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v5, 0x1

    .local v5, "_arg0":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .restart local v5    # "_arg0":Z
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4d

    .end local v5    # "_arg0":Z
    :sswitch_84
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    sget-object v4, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageCleanItem;

    .local v5, "_arg0":Landroid/content/pm/PackageCleanItem;
    :goto_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_4e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4f
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_4d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_4e

    .restart local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_4e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v30    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_85
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_86
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v5

    .local v5, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_87
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v5

    .restart local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_88
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_89
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_8a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_50

    const/4 v4, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :cond_4f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_50

    .restart local v30    # "_result":Z
    :cond_50
    const/4 v4, 0x0

    goto :goto_51

    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v30    # "_result":Z
    :sswitch_8b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_51

    const/4 v4, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_51
    const/4 v4, 0x0

    goto :goto_52

    .end local v5    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_8c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":I
    :sswitch_8d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_8e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_8f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .local v28, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v28    # "_arg2":J
    :sswitch_90
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v27

    .local v27, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v27    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_91
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_92
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_52

    const/4 v4, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_52
    const/4 v4, 0x0

    goto :goto_53

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_93
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v34

    .local v34, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :sswitch_94
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :sswitch_95
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_53

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_53
    const/4 v4, 0x0

    goto :goto_54

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_96
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_54

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_55
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .end local v30    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_98
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_55

    const/4 v4, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_55
    const/4 v4, 0x0

    goto :goto_56

    .end local v30    # "_result":Z
    :sswitch_99
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_56

    const/4 v4, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_56
    const/4 v4, 0x0

    goto :goto_57

    .end local v30    # "_result":Z
    :sswitch_9a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_57

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_57
    const/4 v4, 0x0

    goto :goto_58

    .end local v30    # "_result":Z
    :sswitch_9b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_58

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Z
    :cond_58
    const/4 v6, 0x0

    goto :goto_59

    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_59

    const/4 v4, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_59
    const/4 v4, 0x0

    goto :goto_5a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Z
    :sswitch_9d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    sget-object v4, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "_arg0":Landroid/content/pm/ResolveInfo;
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .local v26, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/IPackageManager$Stub;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "_result":I
    :cond_5a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    goto :goto_5b

    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    :sswitch_9e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->setLicensePermissions(Ljava/lang/String;)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":I
    :sswitch_9f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v7, 0x1

    .local v7, "_arg2":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7}, Landroid/content/pm/IPackageManager$Stub;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v39

    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg2":Z
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5b
    const/4 v7, 0x0

    goto :goto_5c

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v7, 0x1

    .restart local v7    # "_arg2":Z
    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7}, Landroid/content/pm/IPackageManager$Stub;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v39

    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg2":Z
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5c
    const/4 v7, 0x0

    goto :goto_5d

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/VerificationParams;

    .local v10, "_arg5":Landroid/content/pm/VerificationParams;
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/IPackageManager$Stub;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_5d
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    goto :goto_5e

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v30

    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":I
    :sswitch_a4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_5e

    const/4 v4, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5e
    const/4 v4, 0x0

    goto :goto_5f

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "_result":Z
    :sswitch_a5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForAllApplications(II)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_5f

    const/4 v4, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5f
    const/4 v4, 0x0

    goto :goto_60

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_a6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_a7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionGroups()Ljava/util/List;

    move-result-object v39

    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .restart local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_aa
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_ab
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_60

    const/4 v4, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_60
    const/4 v4, 0x0

    goto :goto_61

    .end local v30    # "_result":Z
    :sswitch_ac
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_62

    const/4 v4, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_62

    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Z
    :cond_62
    const/4 v4, 0x0

    goto :goto_63

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_ad
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_63

    const/4 v4, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_63
    const/4 v4, 0x0

    goto :goto_64

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_ae
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_64

    invoke-interface/range {v30 .. v30}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_64
    const/4 v4, 0x0

    goto :goto_65

    .end local v30    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_af
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    const/4 v6, 0x1

    .local v6, "_arg1":Z
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_66

    const/4 v4, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :cond_65
    const/4 v6, 0x0

    goto :goto_66

    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v30    # "_result":Z
    :cond_66
    const/4 v4, 0x0

    goto :goto_67

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_b0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_67

    const/4 v4, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_67
    const/4 v4, 0x0

    goto :goto_68

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Z
    :sswitch_b1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v30

    .local v30, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_68

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_69
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_68
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v30

    .restart local v30    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_69

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_69
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .local v6, "_arg1":Landroid/content/pm/KeySet;
    :goto_6b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_6b

    const/4 v4, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :cond_6a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6b

    .restart local v30    # "_result":Z
    :cond_6b
    const/4 v4, 0x0

    goto :goto_6c

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :sswitch_b4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    :goto_6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_6d

    const/4 v4, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :cond_6c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6d

    .restart local v30    # "_result":Z
    :cond_6d
    const/4 v4, 0x0

    goto :goto_6e

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v30    # "_result":Z
    :sswitch_b5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v5

    .local v5, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_b6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v5

    .restart local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_b7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_b8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_6e

    const/4 v4, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6e
    const/4 v4, 0x0

    goto :goto_6f

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_b9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .restart local v30    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_6f

    const/4 v4, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6f
    const/4 v4, 0x0

    goto :goto_70

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v30    # "_result":Z
    :sswitch_ba
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v30

    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_bb
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .restart local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    const/4 v9, 0x1

    .local v9, "_arg4":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

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

    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_70
    const/4 v8, 0x0

    goto :goto_71

    .restart local v8    # "_arg3":Z
    :cond_71
    const/4 v9, 0x0

    goto :goto_72

    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bc
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getProgressionOfPackageChanged()I

    move-result v30

    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v30    # "_result":I
    :sswitch_bd
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .restart local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOverlayCallback;

    move-result-object v7

    .local v7, "_arg2":Landroid/content/pm/IOverlayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    const/4 v8, 0x1

    .restart local v8    # "_arg3":Z
    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->applyOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/pm/IOverlayCallback;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg3":Z
    :cond_72
    const/4 v8, 0x0

    goto :goto_73

    .end local v7    # "_arg2":Landroid/content/pm/IOverlayCallback;
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_be
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->cancelEMPHandlerSendPendingBroadcast()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_bf
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->isPackageComponentAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v30

    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_73

    const/4 v4, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_73
    const/4 v4, 0x0

    goto :goto_74

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
