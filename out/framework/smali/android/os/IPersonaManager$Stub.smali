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
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.IPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IPersonaManager;

    goto :goto_0

    .line 33
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
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1590
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 53
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 54
    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v26, :cond_0

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 66
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_2
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 69
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPreviousState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 70
    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v26, :cond_1

    .line 72
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 82
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_3
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v5, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaState;

    .line 91
    .local v6, "_arg0":Landroid/content/pm/PersonaState;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 92
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v26

    .line 93
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v26, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 88
    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaState;
    goto :goto_3

    .line 94
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 99
    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_4
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    sget-object v5, Landroid/content/pm/PersonaNewEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaNewEvent;

    .line 108
    .local v6, "_arg0":Landroid/content/pm/PersonaNewEvent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 109
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 110
    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v26, :cond_5

    .line 112
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 105
    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    goto :goto_5

    .line 116
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 122
    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_5
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 125
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .line 131
    .local v6, "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    .line 133
    .local v7, "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 134
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v26

    .line 135
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v26, :cond_8

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 128
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_7

    .line 131
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 136
    .restart local v7    # "_arg1":Z
    .restart local v8    # "_arg2":I
    .restart local v26    # "_result":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 141
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :sswitch_6
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .line 150
    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 151
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v26

    .line 152
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v26, :cond_a

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 147
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_a

    .line 153
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 158
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_7
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v6

    .line 161
    .local v6, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v26

    .line 162
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v26, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 163
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 168
    .end local v6    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v26    # "_result":Z
    :sswitch_8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 181
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 187
    .local v12, "_arg5":Landroid/net/Uri;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v5, p0

    .line 190
    invoke-virtual/range {v5 .. v14}, Landroid/os/IPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v26

    .line 191
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 184
    .end local v12    # "_arg5":Landroid/net/Uri;
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v26    # "_result":I
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/net/Uri;
    goto :goto_d

    .line 197
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

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 201
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 202
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 207
    .local v7, "_arg1":Landroid/content/Intent;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v26

    .line 208
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v26, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 205
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/Intent;
    goto :goto_e

    .line 209
    .restart local v26    # "_result":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 214
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :sswitch_a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->launchPersonaHome(I)Z

    move-result v26

    .line 218
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v26, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .line 224
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->removePersona(I)I

    move-result v26

    .line 228
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 234
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v26

    .line 236
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v26, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 237
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 242
    .end local v26    # "_result":Z
    :sswitch_d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->needToSkipResetOnReboot()Z

    move-result v26

    .line 244
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v26, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 245
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 250
    .end local v26    # "_result":Z
    :sswitch_e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v6, 0x1

    .line 253
    .local v6, "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v21

    .line 254
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 256
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 252
    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_12
    const/4 v6, 0x0

    goto :goto_13

    .line 260
    :sswitch_f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 263
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v26

    .line 264
    .local v26, "_result":Landroid/content/pm/PersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v26, :cond_13

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_14
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 270
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 276
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaInfo;
    :sswitch_10
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 279
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->exists(I)Z

    move-result v26

    .line 280
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v26, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 281
    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .line 286
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_11
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 290
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v7, 0x1

    .line 291
    .local v7, "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v21

    .line 292
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 290
    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_15
    const/4 v7, 0x0

    goto :goto_16

    .line 298
    .end local v6    # "_arg0":I
    :sswitch_12
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/4 v7, 0x1

    .line 303
    .restart local v7    # "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v21

    .line 304
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 306
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 302
    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_16
    const/4 v7, 0x0

    goto :goto_17

    .line 310
    .end local v6    # "_arg0":I
    :sswitch_13
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v26

    .line 312
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 318
    .end local v26    # "_result":I
    :sswitch_14
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 322
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 323
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 328
    .local v7, "_arg1":Landroid/graphics/Bitmap;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :cond_17
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_18

    .line 334
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_15
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 337
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 338
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v26, :cond_18

    .line 340
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_19
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 344
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 350
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_16
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 353
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getParentId(I)I

    move-result v26

    .line 354
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 360
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_17
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/4 v6, 0x1

    .line 363
    .local v6, "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setMoveToKnoxStatus(Z)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 362
    .end local v6    # "_arg0":Z
    :cond_19
    const/4 v6, 0x0

    goto :goto_1a

    .line 369
    :sswitch_18
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getMoveToKnoxStatus()Z

    move-result v26

    .line 371
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v26, :cond_1a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 372
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .line 377
    .end local v26    # "_result":Z
    :sswitch_19
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 381
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 388
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 391
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v26

    .line 392
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 398
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 409
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 412
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getNormalizedState(I)I

    move-result v26

    .line 413
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 419
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_1d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 423
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 424
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v26

    .line 425
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v26, :cond_1b

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 426
    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

    .line 431
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_1e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 435
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 436
    .restart local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v26

    .line 437
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 443
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_1f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 446
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 451
    .local v6, "_arg0":Landroid/graphics/Bitmap;
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 452
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v26, :cond_1d

    .line 454
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 449
    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1d

    .line 458
    .restart local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 464
    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 467
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v26

    .line 468
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 474
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_21
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IKnoxModeChangeObserver;

    move-result-object v6

    .line 477
    .local v6, "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z

    move-result v26

    .line 478
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v26, :cond_1e

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 479
    :cond_1e
    const/4 v5, 0x0

    goto :goto_1f

    .line 484
    .end local v6    # "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    .end local v26    # "_result":Z
    :sswitch_22
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v6

    .line 487
    .local v6, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v26

    .line 488
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v26, :cond_1f

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 489
    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .line 494
    .end local v6    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v26    # "_result":Z
    :sswitch_23
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPersona(I)I

    move-result v26

    .line 498
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 504
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_24
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 507
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v26

    .line 508
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 514
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 517
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v26

    .line 518
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_26
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 529
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 534
    .local v7, "_arg1":Landroid/content/ComponentName;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 532
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :cond_20
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/ComponentName;
    goto :goto_21

    .line 540
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :sswitch_27
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 543
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmarkForRemoval(I)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 549
    .end local v6    # "_arg0":I
    :sswitch_28
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 552
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v26

    .line 553
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 563
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 570
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/4 v6, 0x1

    .line 573
    .local v6, "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v21

    .line 574
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 576
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 572
    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_21
    const/4 v6, 0x0

    goto :goto_22

    .line 580
    :sswitch_2b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 583
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->lockPersona(I)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 589
    .end local v6    # "_arg0":I
    :sswitch_2c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->handleHomeShow()Z

    move-result v26

    .line 591
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v26, :cond_22

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 592
    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    .line 597
    .end local v26    # "_result":Z
    :sswitch_2d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 600
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v26

    .line 601
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v26, :cond_23

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 602
    :cond_23
    const/4 v5, 0x0

    goto :goto_24

    .line 607
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_2e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 612
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v26

    .line 613
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v26, :cond_24

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 614
    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    .line 619
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_2f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 622
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v26

    .line 623
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v26, :cond_25

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 624
    :cond_25
    const/4 v5, 0x0

    goto :goto_26

    .line 629
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_30
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v26

    .line 631
    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 633
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 637
    .end local v26    # "_result":[I
    :sswitch_31
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 640
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v26

    .line 641
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v26, :cond_26

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 642
    :cond_26
    const/4 v5, 0x0

    goto :goto_27

    .line 647
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_32
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 653
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 654
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 660
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_33
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 664
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 666
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 667
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 673
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_34
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 677
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 678
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v28

    .line 679
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 681
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 685
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_35
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 689
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 690
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 696
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_36
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 700
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 701
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v26

    .line 702
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v26, :cond_27

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 703
    :cond_27
    const/4 v5, 0x0

    goto :goto_28

    .line 708
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_37
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v26

    .line 712
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v26, :cond_28

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 713
    :cond_28
    const/4 v5, 0x0

    goto :goto_29

    .line 718
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_38
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 722
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 723
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 729
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_39
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 733
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 734
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 740
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_3a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 744
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 745
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v26

    .line 746
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    if-eqz v26, :cond_29

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 747
    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    .line 752
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_3b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 755
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v28

    .line 756
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 758
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 762
    .end local v6    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 766
    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 767
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/IPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 773
    .end local v7    # "_arg1":I
    .end local v22    # "_arg0":J
    :sswitch_3d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 776
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v26

    .line 777
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 779
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 783
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_3e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 786
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->refreshTimer(I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 792
    .end local v6    # "_arg0":I
    :sswitch_3f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 795
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->userActivity(I)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 801
    .end local v6    # "_arg0":I
    :sswitch_40
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v6, 0x1

    .line 805
    .local v6, "_arg0":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 807
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 809
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 811
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

    .line 812
    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 803
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2b

    .line 818
    :sswitch_41
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 822
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v7, 0x1

    .line 823
    .local v7, "_arg1":Z
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v28

    .line 824
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 826
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 822
    .end local v7    # "_arg1":Z
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/4 v7, 0x0

    goto :goto_2c

    .line 830
    .end local v6    # "_arg0":I
    :sswitch_42
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 833
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v26

    .line 834
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v26, :cond_2c

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 835
    :cond_2c
    const/4 v5, 0x0

    goto :goto_2d

    .line 840
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_43
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 843
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v26

    .line 844
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v26, :cond_2d

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 845
    :cond_2d
    const/4 v5, 0x0

    goto :goto_2e

    .line 850
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_44
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 854
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v7, 0x1

    .line 855
    .restart local v7    # "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFsMountState(IZ)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 854
    .end local v7    # "_arg1":Z
    :cond_2e
    const/4 v7, 0x0

    goto :goto_2f

    .line 861
    .end local v6    # "_arg0":I
    :sswitch_45
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPasswordHint()Ljava/lang/String;

    move-result-object v26

    .line 863
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 869
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 872
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isKioskModeEnabled(I)Z

    move-result v26

    .line 873
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v26, :cond_2f

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 874
    :cond_2f
    const/4 v5, 0x0

    goto :goto_30

    .line 879
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_47
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isKioskContainerExistOnDevice()Z

    move-result v26

    .line 881
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    if-eqz v26, :cond_30

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 882
    :cond_30
    const/4 v5, 0x0

    goto :goto_31

    .line 887
    .end local v26    # "_result":Z
    :sswitch_48
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 891
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/4 v7, 0x1

    .line 892
    .restart local v7    # "_arg1":Z
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setBackPressed(IZ)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 891
    .end local v7    # "_arg1":Z
    :cond_31
    const/4 v7, 0x0

    goto :goto_32

    .line 898
    .end local v6    # "_arg0":I
    :sswitch_49
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 902
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/4 v7, 0x1

    .line 903
    .restart local v7    # "_arg1":Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->resetPersonaOnReboot(IZ)Z

    move-result v26

    .line 904
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v26, :cond_33

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 902
    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :cond_32
    const/4 v7, 0x0

    goto :goto_33

    .line 905
    .restart local v7    # "_arg1":Z
    .restart local v26    # "_result":Z
    :cond_33
    const/4 v5, 0x0

    goto :goto_34

    .line 910
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :sswitch_4a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 914
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 916
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 918
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 919
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/os/IPersonaManager$Stub;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v26

    .line 920
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    if-eqz v26, :cond_34

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 921
    :cond_34
    const/4 v5, 0x0

    goto :goto_35

    .line 926
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v26    # "_result":Z
    :sswitch_4b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 929
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isResetPersonaOnRebootEnabled(I)Z

    move-result v26

    .line 930
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    if-eqz v26, :cond_35

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 931
    :cond_35
    const/4 v5, 0x0

    goto :goto_36

    .line 936
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_4c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 940
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 941
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->showKeyguard(II)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 947
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_4d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 951
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/4 v7, 0x1

    .line 952
    .local v7, "_arg1":Z
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->notifyKeyguardShow(IZ)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 951
    .end local v7    # "_arg1":Z
    :cond_36
    const/4 v7, 0x0

    goto :goto_37

    .line 958
    .end local v6    # "_arg0":I
    :sswitch_4e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 962
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IKnoxUnlockAction$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IKnoxUnlockAction;

    move-result-object v7

    .line 963
    .local v7, "_arg1":Landroid/content/pm/IKnoxUnlockAction;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 969
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/pm/IKnoxUnlockAction;
    :sswitch_4f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 972
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKeyguardShowState(I)Z

    move-result v26

    .line 973
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v26, :cond_37

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 974
    :cond_37
    const/4 v5, 0x0

    goto :goto_38

    .line 979
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_50
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 982
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isKnoxKeyguardShown(I)Z

    move-result v26

    .line 983
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v26, :cond_38

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 984
    :cond_38
    const/4 v5, 0x0

    goto :goto_39

    .line 989
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_51
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->hideScrim()V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 996
    :sswitch_52
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1000
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1001
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->convertContainerType(II)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1007
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_53
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1010
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerAsSupplement(I)Z

    move-result v26

    .line 1011
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    if-eqz v26, :cond_39

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1012
    :cond_39
    const/4 v5, 0x0

    goto :goto_3a

    .line 1017
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_54
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1021
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v7, 0x1

    .line 1022
    .local v7, "_arg1":Z
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerAsSupplement(IZ)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v7    # "_arg1":Z
    :cond_3a
    const/4 v7, 0x0

    goto :goto_3b

    .line 1028
    .end local v6    # "_arg0":I
    :sswitch_55
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1031
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getLastKeyguardUnlockTime(I)J

    move-result-wide v26

    .line 1032
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1034
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1038
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_56
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1042
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 1043
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/IPersonaManager$Stub;->setLastKeyguardUnlockTime(IJ)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1049
    .end local v6    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_57
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1052
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsUnlockedAfterTurnOn(I)Z

    move-result v26

    .line 1053
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    if-eqz v26, :cond_3b

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1054
    :cond_3b
    const/4 v5, 0x0

    goto :goto_3c

    .line 1059
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_58
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1063
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v7, 0x1

    .line 1064
    .restart local v7    # "_arg1":Z
    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsUnlockedAfterTurnOn(IZ)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1063
    .end local v7    # "_arg1":Z
    :cond_3c
    const/4 v7, 0x0

    goto :goto_3d

    .line 1070
    .end local v6    # "_arg0":I
    :sswitch_59
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1073
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsQuickAccessUIEnabled(I)Z

    move-result v26

    .line 1074
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v26, :cond_3d

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1075
    :cond_3d
    const/4 v5, 0x0

    goto :goto_3e

    .line 1080
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1084
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v7, 0x1

    .line 1085
    .restart local v7    # "_arg1":Z
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsQuickAccessUIEnabled(IZ)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1084
    .end local v7    # "_arg1":Z
    :cond_3e
    const/4 v7, 0x0

    goto :goto_3f

    .line 1091
    .end local v6    # "_arg0":I
    :sswitch_5b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1094
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerTimeout(I)Z

    move-result v26

    .line 1095
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    if-eqz v26, :cond_3f

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1096
    :cond_3f
    const/4 v5, 0x0

    goto :goto_40

    .line 1101
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1105
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/4 v7, 0x1

    .line 1106
    .restart local v7    # "_arg1":Z
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerTimeout(IZ)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v7    # "_arg1":Z
    :cond_40
    const/4 v7, 0x0

    goto :goto_41

    .line 1112
    .end local v6    # "_arg0":I
    :sswitch_5d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1115
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerReset(I)Z

    move-result v26

    .line 1116
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    if-eqz v26, :cond_41

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1117
    :cond_41
    const/4 v5, 0x0

    goto :goto_42

    .line 1122
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_5e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1126
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/4 v7, 0x1

    .line 1127
    .restart local v7    # "_arg1":Z
    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerReset(IZ)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v7    # "_arg1":Z
    :cond_42
    const/4 v7, 0x0

    goto :goto_43

    .line 1133
    .end local v6    # "_arg0":I
    :sswitch_5f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1136
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsAdminLockedJustBefore(I)Z

    move-result v26

    .line 1137
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    if-eqz v26, :cond_43

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1138
    :cond_43
    const/4 v5, 0x0

    goto :goto_44

    .line 1143
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_60
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1147
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v7, 0x1

    .line 1148
    .restart local v7    # "_arg1":Z
    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsAdminLockedJustBefore(IZ)V

    .line 1149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1147
    .end local v7    # "_arg1":Z
    :cond_44
    const/4 v7, 0x0

    goto :goto_45

    .line 1154
    .end local v6    # "_arg0":I
    :sswitch_61
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1157
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerIdentifyFailed(I)Z

    move-result v26

    .line 1158
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    if-eqz v26, :cond_45

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1159
    :cond_45
    const/4 v5, 0x0

    goto :goto_46

    .line 1164
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_62
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1168
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/4 v7, 0x1

    .line 1169
    .restart local v7    # "_arg1":Z
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerIdentifyFailed(IZ)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v7    # "_arg1":Z
    :cond_46
    const/4 v7, 0x0

    goto :goto_47

    .line 1175
    .end local v6    # "_arg0":I
    :sswitch_63
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1178
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerCount(I)I

    move-result v26

    .line 1179
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1185
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_64
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1189
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1190
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFingerCount(II)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_65
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1199
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isFingerSupplementActivated(I)Z

    move-result v26

    .line 1200
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v26, :cond_47

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1201
    :cond_47
    const/4 v5, 0x0

    goto :goto_48

    .line 1206
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_66
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1209
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isFingerLockscreenActivated(I)Z

    move-result v26

    .line 1210
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    if-eqz v26, :cond_48

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1211
    :cond_48
    const/4 v5, 0x0

    goto :goto_49

    .line 1216
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_67
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1220
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1222
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/4 v8, 0x1

    .line 1223
    .local v8, "_arg2":Z
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setShownHelp(IIZ)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v8    # "_arg2":Z
    :cond_49
    const/4 v8, 0x0

    goto :goto_4a

    .line 1229
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_68
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1235
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    .line 1236
    .restart local v8    # "_arg2":Z
    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAccessPermission(Ljava/lang/String;IZ)V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1235
    .end local v8    # "_arg2":Z
    :cond_4a
    const/4 v8, 0x0

    goto :goto_4b

    .line 1242
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_69
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1246
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1247
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->canAccess(Ljava/lang/String;I)Z

    move-result v26

    .line 1248
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    if-eqz v26, :cond_4b

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1249
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .line 1254
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_6a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1257
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxSecurityTimeout(I)I

    move-result v26

    .line 1258
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_6b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1268
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1269
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxSecurityTimeout(II)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_6c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getForegroundUser()I

    move-result v26

    .line 1277
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1283
    .end local v26    # "_result":I
    :sswitch_6d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getFocusedUser()I

    move-result v26

    .line 1285
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v26    # "_result":I
    :sswitch_6e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1294
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setFocusedUser(I)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1300
    .end local v6    # "_arg0":I
    :sswitch_6f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1303
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->onKeyguardBackPressed(I)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1309
    .end local v6    # "_arg0":I
    :sswitch_70
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1313
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1315
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1317
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1319
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

    .line 1320
    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v26

    .line 1321
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    if-eqz v26, :cond_4c

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1322
    :cond_4c
    const/4 v5, 0x0

    goto :goto_4d

    .line 1327
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

    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1330
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v26

    .line 1331
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    if-eqz v26, :cond_4d

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1332
    :cond_4d
    const/4 v5, 0x0

    goto :goto_4e

    .line 1337
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_72
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1341
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1342
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->verifyKnoxBackupPin(ILjava/lang/String;)Z

    move-result v26

    .line 1343
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    if-eqz v26, :cond_4e

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1344
    :cond_4e
    const/4 v5, 0x0

    goto :goto_4f

    .line 1349
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_73
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1353
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1354
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxBackupPin(ILjava/lang/String;)V

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1360
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_74
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1364
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1365
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1366
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1376
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1377
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1378
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    if-eqz v26, :cond_4f

    .line 1380
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1386
    :goto_50
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1384
    :cond_4f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .line 1390
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_76
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1393
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v26

    .line 1394
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1396
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1400
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_77
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1403
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1404
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    if-eqz v26, :cond_50

    .line 1406
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1412
    :goto_51
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1410
    :cond_50
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    .line 1416
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_78
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1419
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isNFCAllowed(I)Z

    move-result v26

    .line 1420
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    if-eqz v26, :cond_51

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1421
    :cond_51
    const/4 v5, 0x0

    goto :goto_52

    .line 1426
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_79
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1430
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    const/4 v7, 0x1

    .line 1432
    .local v7, "_arg1":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 1433
    .local v8, "_arg2":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setFingerprintIndex(IZ[I)V

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1430
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":[I
    :cond_52
    const/4 v7, 0x0

    goto :goto_53

    .line 1439
    .end local v6    # "_arg0":I
    :sswitch_7a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1442
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isEnabledFingerprintIndex(I)Z

    move-result v26

    .line 1443
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    if-eqz v26, :cond_53

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1444
    :cond_53
    const/4 v5, 0x0

    goto :goto_54

    .line 1449
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_7b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1452
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerprintIndex(I)[I

    move-result-object v26

    .line 1453
    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1455
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1459
    .end local v6    # "_arg0":I
    .end local v26    # "_result":[I
    :sswitch_7c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1462
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerprintHash(I)Ljava/util/List;

    move-result-object v28

    .line 1463
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1469
    .end local v6    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1473
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1474
    .restart local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->setFingerprintHash(ILjava/util/List;)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    :sswitch_7e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1484
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1486
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1487
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->resetPersonaPassword(ILjava/lang/String;I)V

    .line 1488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1493
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_7f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1496
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setupComplete(I)V

    .line 1497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1502
    .end local v6    # "_arg0":I
    :sswitch_80
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1506
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1507
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I

    move-result v26

    .line 1508
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1514
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":I
    :sswitch_81
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getDefaultQuickSettings()Ljava/lang/String;

    move-result-object v26

    .line 1516
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1518
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1526
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1528
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1529
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .line 1530
    .local v26, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    if-eqz v26, :cond_54

    .line 1532
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1538
    :goto_55
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1536
    :cond_54
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 1542
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_83
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getContainerHideUsageStatsApps()Ljava/util/List;

    move-result-object v28

    .line 1544
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1546
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1550
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_84
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1553
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->addPackageToNonSecureAppList(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1559
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_85
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getNonSecureAppList()Ljava/util/List;

    move-result-object v28

    .line 1561
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1567
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_86
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->clearNonSecureAppList()V

    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1574
    :sswitch_87
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v26

    .line 1576
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    if-eqz v26, :cond_55

    const/4 v5, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1577
    :cond_55
    const/4 v5, 0x0

    goto :goto_56

    .line 1582
    .end local v26    # "_result":Z
    :sswitch_88
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1585
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->removeKnoxAppsinFota(I)V

    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 41
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
