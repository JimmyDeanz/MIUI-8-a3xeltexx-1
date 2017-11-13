.class public abstract Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;
.super Landroid/os/Binder;
.source "IWifiHs20Manager.java"

# interfaces
.implements Landroid/net/wifi/hs20/IWifiHs20Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/IWifiHs20Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.hs20.IWifiHs20Manager"

.field static final TRANSACTION_cancelSubscription:I = 0x4

.field static final TRANSACTION_deleteSubscription:I = 0x9

.field static final TRANSACTION_enableSubscription:I = 0x8

.field static final TRANSACTION_getCertID:I = 0xf

.field static final TRANSACTION_getCredentials:I = 0xc

.field static final TRANSACTION_getDMData:I = 0xa

.field static final TRANSACTION_getFormatType:I = 0xd

.field static final TRANSACTION_getKeyPass:I = 0xe

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getSubscribedSpList:I = 0x6

.field static final TRANSACTION_handleDMRequest:I = 0xb

.field static final TRANSACTION_isSubscrptionInProgress:I = 0x3

.field static final TRANSACTION_modifyPasspointCred:I = 0x10

.field static final TRANSACTION_startOSUProcess:I = 0x2

.field static final TRANSACTION_startPolicyUpdate:I = 0x5

.field static final TRANSACTION_updateCredPriorities:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hs20/IWifiHs20Manager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/hs20/IWifiHs20Manager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/wifi/hs20/IWifiHs20Manager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 53
    .local v3, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v3, p3, v6}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v3    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 73
    .local v0, "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    goto :goto_1

    .line 79
    .end local v0    # "_arg0":Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    :sswitch_3
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->isSubscrptionInProgress()Z

    move-result v3

    .line 81
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->cancelSubscription()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    :sswitch_5
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->startPolicyUpdate(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getSubscribedSpList()Ljava/util/List;

    move-result-object v4

    .line 105
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 111
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    :sswitch_7
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 114
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 119
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->updateCredPriorities(Landroid/os/Bundle;)Z

    move-result v3

    .line 120
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 126
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v1, v6

    .line 131
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->enableSubscription(IZ)Z

    move-result v3

    .line 132
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_6
    move v1, v5

    .line 130
    goto :goto_3

    .line 138
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->deleteSubscription(I)Z

    move-result v3

    .line 142
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_a
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 151
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 156
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getDMData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 157
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v3, :cond_9

    .line 159
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 163
    .restart local v3    # "_result":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    .line 172
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 177
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v3

    .line 178
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 184
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_c
    const-string v7, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getCredentials(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 192
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v3, :cond_c

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 198
    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getFormatType(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_e
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getKeyPass()[B

    move-result-object v3

    .line 216
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 222
    .end local v3    # "_result":[B
    :sswitch_f
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->getCertID(I)I

    move-result v3

    .line 226
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_10
    const-string v5, "android.net.wifi.hs20.IWifiHs20Manager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;->modifyPasspointCred(Ljava/lang/String;)I

    move-result v3

    .line 236
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
