.class public abstract Landroid/content/pm/IPersonaPolicyManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaPolicyManager.java"

# interfaces
.implements Landroid/content/pm/IPersonaPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaPolicyManager"

.field static final TRANSACTION_addLockOnImage:I = 0x2b

.field static final TRANSACTION_getAirCommandEnabled:I = 0x22

.field static final TRANSACTION_getAllowAllShare:I = 0x1c

.field static final TRANSACTION_getAllowContainerReset:I = 0x12

.field static final TRANSACTION_getAllowCustomBadgeIcon:I = 0xa

.field static final TRANSACTION_getAllowCustomColorIdentification:I = 0x10

.field static final TRANSACTION_getAllowCustomPersonaIcon:I = 0xe

.field static final TRANSACTION_getAllowDLNADataTransfer:I = 0x16

.field static final TRANSACTION_getAllowExportAndDeleteFiles:I = 0x2a

.field static final TRANSACTION_getAllowExportFiles:I = 0x28

.field static final TRANSACTION_getAllowImportFiles:I = 0x26

.field static final TRANSACTION_getAllowPrint:I = 0x18

.field static final TRANSACTION_getAllowShortCutCreation:I = 0x14

.field static final TRANSACTION_getAllowUniversalCallerId:I = 0x24

.field static final TRANSACTION_getCameraModeChangeEnabled:I = 0x8

.field static final TRANSACTION_getDisableSwitchWidgetOnLockScreen:I = 0xc

.field static final TRANSACTION_getEncryptionStatus:I = 0x4

.field static final TRANSACTION_getGearSupportEnabled:I = 0x1e

.field static final TRANSACTION_getModifyLockScreenTimeout:I = 0x1a

.field static final TRANSACTION_getPasswordLockPolicy:I = 0x2

.field static final TRANSACTION_getPenWindowEnabled:I = 0x20

.field static final TRANSACTION_getRCPDataPolicy:I = 0x30

.field static final TRANSACTION_getRCPDataPolicyForUser:I = 0x31

.field static final TRANSACTION_getRCPNotificationPolicy:I = 0x33

.field static final TRANSACTION_getSecureKeystoreEnabled:I = 0x6

.field static final TRANSACTION_getSwitchNotifEnabled:I = 0x35

.field static final TRANSACTION_isBadgeRequired:I = 0x2c

.field static final TRANSACTION_isBadgeRequiredFromOwner:I = 0x2d

.field static final TRANSACTION_isMoveFilesToContainerAllowed:I = 0x37

.field static final TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x38

.field static final TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x36

.field static final TRANSACTION_registerReceivers:I = 0x2e

.field static final TRANSACTION_setAirCommandEnabled:I = 0x21

.field static final TRANSACTION_setAllowAllShare:I = 0x1b

.field static final TRANSACTION_setAllowContainerReset:I = 0x11

.field static final TRANSACTION_setAllowCustomBadgeIcon:I = 0x9

.field static final TRANSACTION_setAllowCustomColorIdentification:I = 0xf

.field static final TRANSACTION_setAllowCustomPersonaIcon:I = 0xd

.field static final TRANSACTION_setAllowDLNADataTransfer:I = 0x15

.field static final TRANSACTION_setAllowExportAndDeleteFiles:I = 0x29

.field static final TRANSACTION_setAllowExportFiles:I = 0x27

.field static final TRANSACTION_setAllowImportFiles:I = 0x25

.field static final TRANSACTION_setAllowPrint:I = 0x17

.field static final TRANSACTION_setAllowShortCutCreation:I = 0x13

.field static final TRANSACTION_setAllowUniversalCallerId:I = 0x23

.field static final TRANSACTION_setCameraModeChangeEnabled:I = 0x7

.field static final TRANSACTION_setDisableSwitchWidgetOnLockScreen:I = 0xb

.field static final TRANSACTION_setEncryptionStatus:I = 0x3

.field static final TRANSACTION_setGearSupportEnabled:I = 0x1d

.field static final TRANSACTION_setModifyLockScreenTimeout:I = 0x19

.field static final TRANSACTION_setPasswordLockPolicy:I = 0x1

.field static final TRANSACTION_setPenWindowEnabled:I = 0x1f

.field static final TRANSACTION_setRCPDataPolicy:I = 0x2f

.field static final TRANSACTION_setRCPNotificationPolicy:I = 0x32

.field static final TRANSACTION_setSecureKeystoreEnabled:I = 0x5

.field static final TRANSACTION_setSwitchNotifEnabled:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;
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
    const-string v1, "android.content.pm.IPersonaPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaPolicyManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 675
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 55
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPasswordLockPolicy(IZ)Z

    move-result v3

    .line 56
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1
    move v1, v5

    .line 54
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPasswordLockPolicy(I)Z

    move-result v3

    .line 66
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 77
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setEncryptionStatus(IZ)Z

    move-result v3

    .line 78
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_4
    move v1, v5

    .line 76
    goto :goto_2

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getEncryptionStatus(I)Z

    move-result v3

    .line 88
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v1, v4

    .line 99
    .restart local v1    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSecureKeystoreEnabled(IZ)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_7
    move v1, v5

    .line 98
    goto :goto_3

    .line 106
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureKeystoreEnabled(I)Z

    move-result v3

    .line 110
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v1, v4

    .line 121
    .restart local v1    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setCameraModeChangeEnabled(IZ)Z

    move-result v3

    .line 122
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_a
    move v1, v5

    .line 120
    goto :goto_4

    .line 128
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getCameraModeChangeEnabled(I)Z

    move-result v3

    .line 132
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_b

    move v5, v4

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v1, v4

    .line 143
    .restart local v1    # "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomBadgeIcon(IZ)Z

    move-result v3

    .line 144
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v3, :cond_c

    move v5, v4

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_d
    move v1, v5

    .line 142
    goto :goto_5

    .line 150
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomBadgeIcon(I)Z

    move-result v3

    .line 154
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_e

    move v5, v4

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    move v1, v4

    .line 165
    .restart local v1    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setDisableSwitchWidgetOnLockScreen(IZ)Z

    move-result v3

    .line 166
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_f

    move v5, v4

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_10
    move v1, v5

    .line 164
    goto :goto_6

    .line 172
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getDisableSwitchWidgetOnLockScreen(I)Z

    move-result v3

    .line 176
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_11

    move v5, v4

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    move v1, v4

    .line 187
    .restart local v1    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomPersonaIcon(IZ)Z

    move-result v3

    .line 188
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v3, :cond_12

    move v5, v4

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_13
    move v1, v5

    .line 186
    goto :goto_7

    .line 194
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomPersonaIcon(I)Z

    move-result v3

    .line 198
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_14

    move v5, v4

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    move v1, v4

    .line 209
    .restart local v1    # "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomColorIdentification(IZ)Z

    move-result v3

    .line 210
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v3, :cond_15

    move v5, v4

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_16
    move v1, v5

    .line 208
    goto :goto_8

    .line 216
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomColorIdentification(I)Z

    move-result v3

    .line 220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v3, :cond_17

    move v5, v4

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_11
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    move v1, v4

    .line 231
    .restart local v1    # "_arg1":Z
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowContainerReset(IZ)Z

    move-result v3

    .line 232
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v3, :cond_18

    move v5, v4

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_19
    move v1, v5

    .line 230
    goto :goto_9

    .line 238
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowContainerReset(I)Z

    move-result v3

    .line 242
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v3, :cond_1a

    move v5, v4

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_13
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    move v1, v4

    .line 253
    .restart local v1    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowShortCutCreation(IZ)Z

    move-result v3

    .line 254
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v3, :cond_1b

    move v5, v4

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1c
    move v1, v5

    .line 252
    goto :goto_a

    .line 260
    .end local v0    # "_arg0":I
    :sswitch_14
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowShortCutCreation(I)Z

    move-result v3

    .line 264
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v3, :cond_1d

    move v5, v4

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_15
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    move v1, v4

    .line 275
    .restart local v1    # "_arg1":Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowDLNADataTransfer(IZ)Z

    move-result v3

    .line 276
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v3, :cond_1e

    move v5, v4

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1f
    move v1, v5

    .line 274
    goto :goto_b

    .line 282
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowDLNADataTransfer(I)Z

    move-result v3

    .line 286
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v3, :cond_20

    move v5, v4

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_17
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    move v1, v4

    .line 297
    .restart local v1    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowPrint(IZ)Z

    move-result v3

    .line 298
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v3, :cond_21

    move v5, v4

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_22
    move v1, v5

    .line 296
    goto :goto_c

    .line 304
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowPrint(I)Z

    move-result v3

    .line 308
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v3, :cond_23

    move v5, v4

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 314
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_19
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    move v1, v4

    .line 319
    .restart local v1    # "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setModifyLockScreenTimeout(IZ)Z

    move-result v3

    .line 320
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v3, :cond_24

    move v5, v4

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_25
    move v1, v5

    .line 318
    goto :goto_d

    .line 326
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getModifyLockScreenTimeout(I)Z

    move-result v3

    .line 330
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v3, :cond_26

    move v5, v4

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    move v1, v4

    .line 341
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowAllShare(IZ)Z

    move-result v3

    .line 342
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v3, :cond_27

    move v5, v4

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_28
    move v1, v5

    .line 340
    goto :goto_e

    .line 348
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowAllShare(I)Z

    move-result v3

    .line 352
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v3, :cond_29

    move v5, v4

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    move v1, v4

    .line 363
    .restart local v1    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setGearSupportEnabled(IZ)Z

    move-result v3

    .line 364
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v3, :cond_2a

    move v5, v4

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2b
    move v1, v5

    .line 362
    goto :goto_f

    .line 370
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getGearSupportEnabled(I)Z

    move-result v3

    .line 374
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v3, :cond_2c

    move v5, v4

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    move v1, v4

    .line 385
    .restart local v1    # "_arg1":Z
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPenWindowEnabled(IZ)Z

    move-result v3

    .line 386
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v3, :cond_2d

    move v5, v4

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2e
    move v1, v5

    .line 384
    goto :goto_10

    .line 392
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPenWindowEnabled(I)Z

    move-result v3

    .line 396
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v3, :cond_2f

    move v5, v4

    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_21
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    move v1, v4

    .line 407
    .restart local v1    # "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAirCommandEnabled(IZ)Z

    move-result v3

    .line 408
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v3, :cond_30

    move v5, v4

    :cond_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_31
    move v1, v5

    .line 406
    goto :goto_11

    .line 414
    .end local v0    # "_arg0":I
    :sswitch_22
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAirCommandEnabled(I)Z

    move-result v3

    .line 418
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v3, :cond_32

    move v5, v4

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 424
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_23
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    move v1, v4

    .line 429
    .restart local v1    # "_arg1":Z
    :goto_12
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowUniversalCallerId(IZ)Z

    move-result v3

    .line 430
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v3, :cond_33

    move v5, v4

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_34
    move v1, v5

    .line 428
    goto :goto_12

    .line 436
    .end local v0    # "_arg0":I
    :sswitch_24
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowUniversalCallerId(I)Z

    move-result v3

    .line 440
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v3, :cond_35

    move v5, v4

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 446
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_25
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    move v1, v4

    .line 451
    .restart local v1    # "_arg1":Z
    :goto_13
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowImportFiles(IZ)Z

    move-result v3

    .line 452
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v3, :cond_36

    move v5, v4

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_37
    move v1, v5

    .line 450
    goto :goto_13

    .line 458
    .end local v0    # "_arg0":I
    :sswitch_26
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowImportFiles(I)Z

    move-result v3

    .line 462
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v3, :cond_38

    move v5, v4

    :cond_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 468
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_27
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    move v1, v4

    .line 473
    .restart local v1    # "_arg1":Z
    :goto_14
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportFiles(IZ)Z

    move-result v3

    .line 474
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v3, :cond_39

    move v5, v4

    :cond_39
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3a
    move v1, v5

    .line 472
    goto :goto_14

    .line 480
    .end local v0    # "_arg0":I
    :sswitch_28
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportFiles(I)Z

    move-result v3

    .line 484
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v3, :cond_3b

    move v5, v4

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 490
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_29
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    move v1, v4

    .line 495
    .restart local v1    # "_arg1":Z
    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportAndDeleteFiles(IZ)Z

    move-result v3

    .line 496
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v3, :cond_3c

    move v5, v4

    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3d
    move v1, v5

    .line 494
    goto :goto_15

    .line 502
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportAndDeleteFiles(I)Z

    move-result v3

    .line 506
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v3, :cond_3e

    move v5, v4

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 515
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 520
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    :goto_16
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 521
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v3, :cond_40

    .line 523
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 518
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_3f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_16

    .line 527
    .restart local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_40
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_2c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequired()Z

    move-result v3

    .line 535
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v3, :cond_41

    move v5, v4

    :cond_41
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 541
    .end local v3    # "_result":Z
    :sswitch_2d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v3

    .line 545
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v3, :cond_42

    move v5, v4

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 551
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_2e
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->registerReceivers()V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 558
    :sswitch_2f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 566
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v3, :cond_43

    move v5, v4

    :cond_43
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 572
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_30
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 606
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v3, :cond_44

    move v5, v4

    :cond_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_33
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    move v1, v4

    .line 629
    .local v1, "_arg1":Z
    :goto_17
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSwitchNotifEnabled(IZ)Z

    move-result v3

    .line 630
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v3, :cond_45

    move v5, v4

    :cond_45
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_46
    move v1, v5

    .line 628
    goto :goto_17

    .line 636
    .end local v0    # "_arg0":I
    :sswitch_35
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSwitchNotifEnabled(I)Z

    move-result v3

    .line 640
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v3, :cond_47

    move v5, v4

    :cond_47
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 646
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_36
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 649
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v3

    .line 650
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v3, :cond_48

    move v5, v4

    :cond_48
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 656
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_37
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result v3

    .line 660
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v3, :cond_49

    move v5, v4

    :cond_49
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 666
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_38
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 669
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v3

    .line 670
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v3, :cond_4a

    move v5, v4

    :cond_4a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
