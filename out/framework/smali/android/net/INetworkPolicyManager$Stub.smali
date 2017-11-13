.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_checkFireWallPermission:I = 0x1b

.field static final TRANSACTION_factoryReset:I = 0x1c

.field static final TRANSACTION_getFirewallRuleMobileData:I = 0x19

.field static final TRANSACTION_getFirewallRuleWifi:I = 0x1a

.field static final TRANSACTION_getMeteredIfaces:I = 0x12

.field static final TRANSACTION_getNetworkPolicies:I = 0xb

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x13

.field static final TRANSACTION_getRestrictBackground:I = 0xf

.field static final TRANSACTION_getRoamingReduction:I = 0x1e

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x14

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_onScreenStateChanged:I = 0x1f

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0x10

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x15

.field static final TRANSACTION_setFirewallRuleMobileDataMap:I = 0x17

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x16

.field static final TRANSACTION_setFirewallRuleWifiMap:I = 0x18

.field static final TRANSACTION_setLimitBackground:I = 0xe

.field static final TRANSACTION_setNetworkPolicies:I = 0xa

.field static final TRANSACTION_setRestrictBackground:I = 0xd

.field static final TRANSACTION_setRestrictBackgroundByPco:I = 0x11

.field static final TRANSACTION_setRoamingReduction:I = 0x1d

.field static final TRANSACTION_setUidAllowedForData:I = 0x6

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xc

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
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
    const-string v1, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/INetworkPolicyManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v2

    .line 89
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v2

    .line 99
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_6
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidAllowedForData(II)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 116
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_7
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    move-result v2

    .line 120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_9
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_a
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    sget-object v4, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 147
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_b
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 157
    .local v2, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_c
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 171
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_1

    .line 177
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_d
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 180
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 179
    goto :goto_2

    .line 186
    :sswitch_e
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    .line 189
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setLimitBackground(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v4

    .line 188
    goto :goto_3

    .line 195
    :sswitch_f
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v2

    .line 197
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v5

    .line 206
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v4

    .line 205
    goto :goto_4

    .line 212
    :sswitch_11
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 215
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackgroundByPco(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v4

    .line 214
    goto :goto_5

    .line 221
    :sswitch_12
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getMeteredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 232
    sget-object v6, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 237
    .local v0, "_arg0":Landroid/net/NetworkState;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v2

    .line 238
    .local v2, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v2, :cond_8

    .line 240
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v2, p3, v5}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    goto :goto_6

    .line 244
    .restart local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_14
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 253
    sget-object v6, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 258
    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    move-result v2

    .line 259
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    goto :goto_7

    .line 265
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    :sswitch_15
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v1, v5

    .line 270
    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_b
    move v1, v4

    .line 269
    goto :goto_8

    .line 276
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v5

    .line 281
    .restart local v1    # "_arg1":Z
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_c
    move v1, v4

    .line 280
    goto :goto_9

    .line 287
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 290
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 291
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :sswitch_18
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 300
    .restart local v3    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 301
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 307
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :sswitch_19
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v2

    .line 311
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v2, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_1a
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v2

    .line 321
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v2, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_1b
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    move v0, v5

    .line 331
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->checkFireWallPermission(ZLjava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_f
    move v0, v4

    .line 329
    goto :goto_a

    .line 338
    :sswitch_1c
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setRoamingReduction(II)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1e
    const-string v4, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getRoamingReduction(I)I

    move-result v2

    .line 362
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_1f
    const-string v6, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    move v0, v5

    .line 372
    .local v0, "_arg0":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->onScreenStateChanged(ZI)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :cond_10
    move v0, v4

    .line 370
    goto :goto_b

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
