.class public abstract Lcom/sec/android/emergencymode/IEmergencyManager$Stub;
.super Landroid/os/Binder;
.source "IEmergencyManager.java"

# interfaces
.implements Lcom/sec/android/emergencymode/IEmergencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/emergencymode/IEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.emergencymode.IEmergencyManager"

.field static final TRANSACTION_addAppToLauncher:I = 0xd

.field static final TRANSACTION_checkInvalidBroadcast:I = 0x6

.field static final TRANSACTION_checkInvalidProcess:I = 0x5

.field static final TRANSACTION_checkModeType:I = 0xe

.field static final TRANSACTION_checkValidIntentAction:I = 0x4

.field static final TRANSACTION_checkValidPackage:I = 0x3

.field static final TRANSACTION_getEmergencyState:I = 0x2

.field static final TRANSACTION_getforceBlockUserPkg:I = 0xa

.field static final TRANSACTION_isEmergencyMode:I = 0x1

.field static final TRANSACTION_isModifying:I = 0xb

.field static final TRANSACTION_isScreenOn:I = 0x8

.field static final TRANSACTION_needMobileDataBlock:I = 0x7

.field static final TRANSACTION_setLocationProvider:I = 0xc

.field static final TRANSACTION_setforceBlockUserPkg:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;
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
    const-string v1, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/sec/android/emergencymode/IEmergencyManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isEmergencyMode()Z

    move-result v3

    .line 50
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v4, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->getEmergencyState()I

    move-result v3

    .line 58
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v3    # "_result":I
    :sswitch_3
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 72
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 84
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    .line 94
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 106
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->needMobileDataBlock()Z

    move-result v3

    .line 114
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isScreenOn()Z

    move-result v3

    .line 122
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v0, v5

    .line 131
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->setforceBlockUserPkg(Z)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v4

    .line 130
    goto :goto_1

    .line 137
    :sswitch_a
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->getforceBlockUserPkg()Z

    move-result v3

    .line 139
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isModifying()Z

    move-result v3

    .line 147
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v5

    .line 156
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->setLocationProvider(Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v4

    .line 155
    goto :goto_2

    .line 162
    :sswitch_d
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v5

    .line 167
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_c
    move v1, v4

    .line 166
    goto :goto_3

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkModeType(I)Z

    move-result v3

    .line 178
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
