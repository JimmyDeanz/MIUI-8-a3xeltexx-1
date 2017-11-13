.class public abstract Landroid/os/IPersonaManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaManager.java"

# interfaces
.implements Landroid/os/IPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPersonaManager"

.field static final TRANSACTION_addAppForPersona:I = 0x32

.field static final TRANSACTION_addLockOnImage:I = 0x1f

.field static final TRANSACTION_addPackageToInstallWhiteList:I = 0x38

.field static final TRANSACTION_addPackageToNonSecureAppList:I = 0x84

.field static final TRANSACTION_adminLockPersona:I = 0x2e

.field static final TRANSACTION_adminUnLockPersona:I = 0x2f

.field static final TRANSACTION_canAccess:I = 0x69

.field static final TRANSACTION_clearAppListForPersona:I = 0x35

.field static final TRANSACTION_clearNonSecureAppList:I = 0x86

.field static final TRANSACTION_convertContainerType:I = 0x52

.field static final TRANSACTION_createPersona:I = 0x8

.field static final TRANSACTION_disablePersonaKeyGuard:I = 0x42

.field static final TRANSACTION_doWhenUnlock:I = 0x4e

.field static final TRANSACTION_enablePersonaKeyGuard:I = 0x43

.field static final TRANSACTION_exists:I = 0x10

.field static final TRANSACTION_fireEvent:I = 0x4

.field static final TRANSACTION_getAdminUidForPersona:I = 0x25

.field static final TRANSACTION_getAppListForPersona:I = 0x34

.field static final TRANSACTION_getContainerHideUsageStatsApps:I = 0x83

.field static final TRANSACTION_getCustomBadgedResourceIdIconifRequired:I = 0x80

.field static final TRANSACTION_getDefaultQuickSettings:I = 0x81

.field static final TRANSACTION_getDisabledHomeLaunchers:I = 0x41

.field static final TRANSACTION_getFingerCount:I = 0x63

.field static final TRANSACTION_getFingerprintHash:I = 0x7c

.field static final TRANSACTION_getFingerprintIndex:I = 0x7b

.field static final TRANSACTION_getFocusedUser:I = 0x6d

.field static final TRANSACTION_getForegroundUser:I = 0x6c

.field static final TRANSACTION_getIsAdminLockedJustBefore:I = 0x5f

.field static final TRANSACTION_getIsFingerAsSupplement:I = 0x53

.field static final TRANSACTION_getIsFingerIdentifyFailed:I = 0x61

.field static final TRANSACTION_getIsFingerReset:I = 0x5d

.field static final TRANSACTION_getIsFingerTimeout:I = 0x5b

.field static final TRANSACTION_getIsQuickAccessUIEnabled:I = 0x59

.field static final TRANSACTION_getIsUnlockedAfterTurnOn:I = 0x57

.field static final TRANSACTION_getKeyguardShowState:I = 0x4f

.field static final TRANSACTION_getKnoxIconChanged:I = 0x75

.field static final TRANSACTION_getKnoxIconChangedAsUser:I = 0x77

.field static final TRANSACTION_getKnoxNameChanged:I = 0x74

.field static final TRANSACTION_getKnoxNameChangedAsUser:I = 0x76

.field static final TRANSACTION_getKnoxSecurityTimeout:I = 0x6a

.field static final TRANSACTION_getLastKeyguardUnlockTime:I = 0x55

.field static final TRANSACTION_getMoveToKnoxStatus:I = 0x18

.field static final TRANSACTION_getNonSecureAppList:I = 0x85

.field static final TRANSACTION_getNormalizedState:I = 0x1c

.field static final TRANSACTION_getPackageInfo:I = 0x82

.field static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x3b

.field static final TRANSACTION_getParentId:I = 0x16

.field static final TRANSACTION_getParentUserForCurrentPersona:I = 0x13

.field static final TRANSACTION_getPasswordHint:I = 0x45

.field static final TRANSACTION_getPersonaBackgroundTime:I = 0x20

.field static final TRANSACTION_getPersonaIcon:I = 0x15

.field static final TRANSACTION_getPersonaIdentification:I = 0x24

.field static final TRANSACTION_getPersonaIds:I = 0x30

.field static final TRANSACTION_getPersonaInfo:I = 0xf

.field static final TRANSACTION_getPersonaSamsungAccount:I = 0x28

.field static final TRANSACTION_getPersonaType:I = 0x1a

.field static final TRANSACTION_getPersonas:I = 0xe

.field static final TRANSACTION_getPersonasForCreator:I = 0x12

.field static final TRANSACTION_getPersonasForUser:I = 0x11

.field static final TRANSACTION_getPreviousState:I = 0x2

.field static final TRANSACTION_getScreenOffTime:I = 0x3d

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getUserManagedPersonas:I = 0x2a

.field static final TRANSACTION_handleHomeShow:I = 0x2c

.field static final TRANSACTION_hideScrim:I = 0x51

.field static final TRANSACTION_inState:I = 0x3

.field static final TRANSACTION_installApplications:I = 0x1d

.field static final TRANSACTION_isAttribute:I = 0x6

.field static final TRANSACTION_isEnabledFingerprintIndex:I = 0x7a

.field static final TRANSACTION_isFOTAUpgrade:I = 0xc

.field static final TRANSACTION_isFingerLockscreenActivated:I = 0x66

.field static final TRANSACTION_isFingerSupplementActivated:I = 0x65

.field static final TRANSACTION_isFotaUpgradeVersionChanged:I = 0x87

.field static final TRANSACTION_isKioskContainerExistOnDevice:I = 0x47

.field static final TRANSACTION_isKioskModeEnabled:I = 0x46

.field static final TRANSACTION_isKnoxKeyguardShown:I = 0x50

.field static final TRANSACTION_isNFCAllowed:I = 0x78

.field static final TRANSACTION_isPackageInInstallWhiteList:I = 0x3a

.field static final TRANSACTION_isResetPersonaOnRebootEnabled:I = 0x4b

.field static final TRANSACTION_isSessionExpired:I = 0x2d

.field static final TRANSACTION_launchPersonaHome:I = 0xa

.field static final TRANSACTION_lockPersona:I = 0x2b

.field static final TRANSACTION_markForRemoval:I = 0x26

.field static final TRANSACTION_mountOldContainer:I = 0x70

.field static final TRANSACTION_needToSkipResetOnReboot:I = 0xd

.field static final TRANSACTION_notifyKeyguardShow:I = 0x4d

.field static final TRANSACTION_onKeyguardBackPressed:I = 0x6f

.field static final TRANSACTION_onWakeLockChange:I = 0x40

.field static final TRANSACTION_refreshTimer:I = 0x3e

.field static final TRANSACTION_registerKnoxModeChangeObserver:I = 0x21

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x22

.field static final TRANSACTION_registerUser:I = 0x7

.field static final TRANSACTION_removeAppForPersona:I = 0x33

.field static final TRANSACTION_removeKnoxAppsinFota:I = 0x88

.field static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x39

.field static final TRANSACTION_removePersona:I = 0xb

.field static final TRANSACTION_resetPassword:I = 0x37

.field static final TRANSACTION_resetPersona:I = 0x23

.field static final TRANSACTION_resetPersonaOnReboot:I = 0x49

.field static final TRANSACTION_resetPersonaPassword:I = 0x7e

.field static final TRANSACTION_savePasswordInTima:I = 0x36

.field static final TRANSACTION_setAccessPermission:I = 0x68

.field static final TRANSACTION_setAttribute:I = 0x5

.field static final TRANSACTION_setBackPressed:I = 0x48

.field static final TRANSACTION_setFingerCount:I = 0x64

.field static final TRANSACTION_setFingerprintHash:I = 0x7d

.field static final TRANSACTION_setFingerprintIndex:I = 0x79

.field static final TRANSACTION_setFocusedUser:I = 0x6e

.field static final TRANSACTION_setFsMountState:I = 0x44

.field static final TRANSACTION_setIsAdminLockedJustBefore:I = 0x60

.field static final TRANSACTION_setIsFingerAsSupplement:I = 0x54

.field static final TRANSACTION_setIsFingerIdentifyFailed:I = 0x62

.field static final TRANSACTION_setIsFingerReset:I = 0x5e

.field static final TRANSACTION_setIsFingerTimeout:I = 0x5c

.field static final TRANSACTION_setIsQuickAccessUIEnabled:I = 0x5a

.field static final TRANSACTION_setIsUnlockedAfterTurnOn:I = 0x58

.field static final TRANSACTION_setKnoxBackupPin:I = 0x73

.field static final TRANSACTION_setKnoxSecurityTimeout:I = 0x6b

.field static final TRANSACTION_setLastKeyguardUnlockTime:I = 0x56

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x3c

.field static final TRANSACTION_setMoveToKnoxStatus:I = 0x17

.field static final TRANSACTION_setPersonaIcon:I = 0x14

.field static final TRANSACTION_setPersonaName:I = 0x19

.field static final TRANSACTION_setPersonaSamsungAccount:I = 0x29

.field static final TRANSACTION_setPersonaType:I = 0x1b

.field static final TRANSACTION_setShownHelp:I = 0x67

.field static final TRANSACTION_settingSyncAllowed:I = 0x31

.field static final TRANSACTION_setupComplete:I = 0x7f

.field static final TRANSACTION_showKeyguard:I = 0x4c

.field static final TRANSACTION_switchPersonaAndLaunch:I = 0x9

.field static final TRANSACTION_unInstallSystemApplications:I = 0x1e

.field static final TRANSACTION_unmarkForRemoval:I = 0x27

.field static final TRANSACTION_unmountOldContainer:I = 0x71

.field static final TRANSACTION_updatePersonaInfo:I = 0x4a

.field static final TRANSACTION_userActivity:I = 0x3f

.field static final TRANSACTION_verifyKnoxBackupPin:I = 0x72


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.IPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IPersonaManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/IPersonaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
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

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_0

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_2
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPreviousState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_3
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaState;

    .local v6, "_arg0":Landroid/content/pm/PersonaState;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaState;
    goto :goto_3

    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_4
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaNewEvent;

    .local v6, "_arg0":Landroid/content/pm/PersonaNewEvent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    goto :goto_5

    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_5
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .local v6, "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_8

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .restart local v7    # "_arg1":Z
    .restart local v8    # "_arg2":I
    .restart local v26    # "_result":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :sswitch_6
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_a

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_a

    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_7
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v6

    .local v6, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .end local v6    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v26    # "_result":Z
    :sswitch_8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .local v12, "_arg5":Landroid/net/Uri;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/os/IPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v12    # "_arg5":Landroid/net/Uri;
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v26    # "_result":I
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/net/Uri;
    goto :goto_d

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/net/Uri;
    :sswitch_9
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .local v7, "_arg1":Landroid/content/Intent;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/Intent;
    goto :goto_e

    .restart local v26    # "_result":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :sswitch_a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->launchPersonaHome(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->removePersona(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .end local v26    # "_result":Z
    :sswitch_d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->needToSkipResetOnReboot()Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .end local v26    # "_result":Z
    :sswitch_e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v6, 0x1

    .local v6, "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v21

    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_12
    const/4 v6, 0x0

    goto :goto_13

    :sswitch_f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v26

    .local v26, "_result":Landroid/content/pm/PersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_13

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaInfo;
    :sswitch_10
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->exists(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_11
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v21

    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_15
    const/4 v7, 0x0

    goto :goto_16

    .end local v6    # "_arg0":I
    :sswitch_12
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v21

    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_16
    const/4 v7, 0x0

    goto :goto_17

    .end local v6    # "_arg0":I
    :sswitch_13
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":I
    :sswitch_14
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .local v7, "_arg1":Landroid/graphics/Bitmap;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :cond_17
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_18

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_15
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v26

    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_18

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_19
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_16
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getParentId(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_17
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/4 v6, 0x1

    .local v6, "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setMoveToKnoxStatus(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Z
    :cond_19
    const/4 v6, 0x0

    goto :goto_1a

    :sswitch_18
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getMoveToKnoxStatus()Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .end local v26    # "_result":Z
    :sswitch_19
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getNormalizedState(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_1d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1b

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_1e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_1f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .local v6, "_arg0":Landroid/graphics/Bitmap;
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v26

    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1d

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1d

    .restart local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v26

    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_21
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IKnoxModeChangeObserver;

    move-result-object v6

    .local v6, "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1e

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1f

    .end local v6    # "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    .end local v26    # "_result":Z
    :sswitch_22
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v6

    .local v6, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1f

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .end local v6    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v26    # "_result":Z
    :sswitch_23
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPersona(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_24
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_26
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .local v7, "_arg1":Landroid/content/ComponentName;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :cond_20
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/ComponentName;
    goto :goto_21

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :sswitch_27
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmarkForRemoval(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_28
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/4 v6, 0x1

    .local v6, "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v21

    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_21
    const/4 v6, 0x0

    goto :goto_22

    :sswitch_2b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->lockPersona(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_2c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->handleHomeShow()Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_22

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    .end local v26    # "_result":Z
    :sswitch_2d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_23

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v5, 0x0

    goto :goto_24

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_2e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_24

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_2f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_25

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_25
    const/4 v5, 0x0

    goto :goto_26

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_30
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v26

    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":[I
    :sswitch_31
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_26

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v5, 0x0

    goto :goto_27

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_32
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_33
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_34
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v28

    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_35
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->clearAppListForPersona(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_36
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_27

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v5, 0x0

    goto :goto_28

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_37
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_28

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_28
    const/4 v5, 0x0

    goto :goto_29

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_38
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_39
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_3a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_29

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_3b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/IPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":I
    .end local v22    # "_arg0":J
    :sswitch_3d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v26

    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_3e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->refreshTimer(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_3f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->userActivity(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_40
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v6, 0x1

    .local v6, "_arg0":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg4":Ljava/lang/String;
    move-object/from16 v15, p0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2b

    :sswitch_41
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/4 v7, 0x0

    goto :goto_2c

    .end local v6    # "_arg0":I
    :sswitch_42
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_2c

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v5, 0x0

    goto :goto_2d

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_43
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_2d

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2e

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_44
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFsMountState(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_2e
    const/4 v7, 0x0

    goto :goto_2f

    .end local v6    # "_arg0":I
    :sswitch_45
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPasswordHint()Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isKioskModeEnabled(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_2f

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v5, 0x0

    goto :goto_30

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_47
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isKioskContainerExistOnDevice()Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_30

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_30
    const/4 v5, 0x0

    goto :goto_31

    .end local v26    # "_result":Z
    :sswitch_48
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setBackPressed(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_31
    const/4 v7, 0x0

    goto :goto_32

    .end local v6    # "_arg0":I
    :sswitch_49
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->resetPersonaOnReboot(IZ)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_33

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :cond_32
    const/4 v7, 0x0

    goto :goto_33

    .restart local v7    # "_arg1":Z
    .restart local v26    # "_result":Z
    :cond_33
    const/4 v5, 0x0

    goto :goto_34

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :sswitch_4a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/os/IPersonaManager$Stub;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_34

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_34
    const/4 v5, 0x0

    goto :goto_35

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v26    # "_result":Z
    :sswitch_4b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isResetPersonaOnRebootEnabled(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_35

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_35
    const/4 v5, 0x0

    goto :goto_36

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_4c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->showKeyguard(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_4d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->notifyKeyguardShow(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_36
    const/4 v7, 0x0

    goto :goto_37

    .end local v6    # "_arg0":I
    :sswitch_4e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IKnoxUnlockAction$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IKnoxUnlockAction;

    move-result-object v7

    .local v7, "_arg1":Landroid/content/pm/IKnoxUnlockAction;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/pm/IKnoxUnlockAction;
    :sswitch_4f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKeyguardShowState(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_37

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_37
    const/4 v5, 0x0

    goto :goto_38

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_50
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isKnoxKeyguardShown(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_38

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_38
    const/4 v5, 0x0

    goto :goto_39

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_51
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->hideScrim()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_52
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->convertContainerType(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_53
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerAsSupplement(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_39

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_39
    const/4 v5, 0x0

    goto :goto_3a

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_54
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerAsSupplement(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_3a
    const/4 v7, 0x0

    goto :goto_3b

    .end local v6    # "_arg0":I
    :sswitch_55
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getLastKeyguardUnlockTime(I)J

    move-result-wide v26

    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_56
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .local v24, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/IPersonaManager$Stub;->setLastKeyguardUnlockTime(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_57
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsUnlockedAfterTurnOn(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_3b

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3b
    const/4 v5, 0x0

    goto :goto_3c

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_58
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsUnlockedAfterTurnOn(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_3c
    const/4 v7, 0x0

    goto :goto_3d

    .end local v6    # "_arg0":I
    :sswitch_59
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsQuickAccessUIEnabled(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_3d

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3e

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsQuickAccessUIEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_3e
    const/4 v7, 0x0

    goto :goto_3f

    .end local v6    # "_arg0":I
    :sswitch_5b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerTimeout(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_3f

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3f
    const/4 v5, 0x0

    goto :goto_40

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerTimeout(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_40
    const/4 v7, 0x0

    goto :goto_41

    .end local v6    # "_arg0":I
    :sswitch_5d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerReset(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_41

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_41
    const/4 v5, 0x0

    goto :goto_42

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerReset(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_42
    const/4 v7, 0x0

    goto :goto_43

    .end local v6    # "_arg0":I
    :sswitch_5f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsAdminLockedJustBefore(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_43

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_43
    const/4 v5, 0x0

    goto :goto_44

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_60
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsAdminLockedJustBefore(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_44
    const/4 v7, 0x0

    goto :goto_45

    .end local v6    # "_arg0":I
    :sswitch_61
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerIdentifyFailed(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_45

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_45
    const/4 v5, 0x0

    goto :goto_46

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_62
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerIdentifyFailed(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    :cond_46
    const/4 v7, 0x0

    goto :goto_47

    .end local v6    # "_arg0":I
    :sswitch_63
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerCount(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_64
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFingerCount(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_65
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isFingerSupplementActivated(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_47

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_47
    const/4 v5, 0x0

    goto :goto_48

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_66
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isFingerLockscreenActivated(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_48

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_48
    const/4 v5, 0x0

    goto :goto_49

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_67
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/4 v8, 0x1

    .local v8, "_arg2":Z
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setShownHelp(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg2":Z
    :cond_49
    const/4 v8, 0x0

    goto :goto_4a

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_68
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    .restart local v8    # "_arg2":Z
    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAccessPermission(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg2":Z
    :cond_4a
    const/4 v8, 0x0

    goto :goto_4b

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_69
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->canAccess(Ljava/lang/String;I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_4b

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_6a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxSecurityTimeout(I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_6b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxSecurityTimeout(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_6c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getForegroundUser()I

    move-result v26

    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":I
    :sswitch_6d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getFocusedUser()I

    move-result v26

    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":I
    :sswitch_6e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setFocusedUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_6f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->onKeyguardBackPressed(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_70
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v15, p0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_4c

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4c
    const/4 v5, 0x0

    goto :goto_4d

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v26    # "_result":Z
    :sswitch_71
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_4d

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4d
    const/4 v5, 0x0

    goto :goto_4e

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_72
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->verifyKnoxBackupPin(ILjava/lang/String;)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_4e

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4e
    const/4 v5, 0x0

    goto :goto_4f

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_73
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxBackupPin(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_74
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_4f

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_50
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_76
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_77
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;

    move-result-object v26

    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_50

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_51
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_50
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_78
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isNFCAllowed(I)Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_51

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_51
    const/4 v5, 0x0

    goto :goto_52

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_79
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .local v8, "_arg2":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setFingerprintIndex(IZ[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":[I
    :cond_52
    const/4 v7, 0x0

    goto :goto_53

    .end local v6    # "_arg0":I
    :sswitch_7a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isEnabledFingerprintIndex(I)Z

    move-result v26

    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_53

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_53
    const/4 v5, 0x0

    goto :goto_54

    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_7b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerprintIndex(I)[I

    move-result-object v26

    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v26    # "_result":[I
    :sswitch_7c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerprintHash(I)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->setFingerprintHash(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    :sswitch_7e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->resetPersonaPassword(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_7f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setupComplete(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    :sswitch_80
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I

    move-result v26

    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":I
    :sswitch_81
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getDefaultQuickSettings()Ljava/lang/String;

    move-result-object v26

    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .local v26, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_54

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_55
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_54
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_83
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getContainerHideUsageStatsApps()Ljava/util/List;

    move-result-object v28

    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_84
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->addPackageToNonSecureAppList(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_85
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getNonSecureAppList()Ljava/util/List;

    move-result-object v28

    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_86
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->clearNonSecureAppList()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_87
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v26

    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_55

    const/4 v5, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_55
    const/4 v5, 0x0

    goto :goto_56

    .end local v26    # "_result":Z
    :sswitch_88
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->removeKnoxAppsinFota(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
