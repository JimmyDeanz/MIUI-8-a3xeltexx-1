.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getBtid:I = 0x29

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x17

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x18

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForPhone:I = 0x3

.field static final TRANSACTION_getDeviceSvn:I = 0x6

.field static final TRANSACTION_getDeviceSvnUsingSubId:I = 0x7

.field static final TRANSACTION_getDrxValue:I = 0x31

.field static final TRANSACTION_getGroupIdLevel1:I = 0xb

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xc

.field static final TRANSACTION_getIccSerialNumber:I = 0xd

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xe

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x25

.field static final TRANSACTION_getImeiForSubscriber:I = 0x4

.field static final TRANSACTION_getImsRegisteredFeature:I = 0x2e

.field static final TRANSACTION_getIsimAid:I = 0x27

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x23

.field static final TRANSACTION_getIsimChallengeResponseForSubscriber:I = 0x24

.field static final TRANSACTION_getIsimDomain:I = 0x1d

.field static final TRANSACTION_getIsimDomainForSubscriber:I = 0x1e

.field static final TRANSACTION_getIsimImpi:I = 0x1b

.field static final TRANSACTION_getIsimImpiForSubscriber:I = 0x1c

.field static final TRANSACTION_getIsimImpu:I = 0x1f

.field static final TRANSACTION_getIsimImpuForSubscriber:I = 0x20

.field static final TRANSACTION_getIsimIst:I = 0x21

.field static final TRANSACTION_getIsimPcscf:I = 0x22

.field static final TRANSACTION_getKeyLifetime:I = 0x2a

.field static final TRANSACTION_getLine1AlphaTag:I = 0x11

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x12

.field static final TRANSACTION_getLine1Number:I = 0xf

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0x10

.field static final TRANSACTION_getMeidForSubscriber:I = 0x5

.field static final TRANSACTION_getMsisdn:I = 0x13

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x14

.field static final TRANSACTION_getNaiForSubscriber:I = 0x2

.field static final TRANSACTION_getPsismsc:I = 0x2d

.field static final TRANSACTION_getRand:I = 0x28

.field static final TRANSACTION_getReducedCycleTime:I = 0x33

.field static final TRANSACTION_getSktImsiM:I = 0x34

.field static final TRANSACTION_getSktIrm:I = 0x35

.field static final TRANSACTION_getSponImsi:I = 0x36

.field static final TRANSACTION_getSubscriberId:I = 0x8

.field static final TRANSACTION_getSubscriberIdDm:I = 0xa

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x9

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x19

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x1a

.field static final TRANSACTION_getVoiceMailNumber:I = 0x15

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x16

.field static final TRANSACTION_hasCall:I = 0x2f

.field static final TRANSACTION_hasIsim:I = 0x2c

.field static final TRANSACTION_isGbaSupported:I = 0x26

.field static final TRANSACTION_isSmoveripSupported:I = 0x2b

.field static final TRANSACTION_setDrxMode:I = 0x30

.field static final TRANSACTION_setPcoValue:I = 0x37

.field static final TRANSACTION_setReducedCycleTime:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
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
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 591
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMeidForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdDm(II)Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 383
    .restart local v3    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    .end local v0    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 419
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponseForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isGbaSupported()Z

    move-result v3

    .line 443
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v3    # "_result":Z
    :sswitch_27
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimAid()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getRand()[B

    move-result-object v3

    .line 459
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 465
    .end local v3    # "_result":[B
    :sswitch_29
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getBtid()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getKeyLifetime()Ljava/lang/String;

    move-result-object v3

    .line 475
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isSmoveripSupported()Z

    move-result v3

    .line 483
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 489
    .end local v3    # "_result":Z
    :sswitch_2c
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasIsim()Z

    move-result v3

    .line 491
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v3    # "_result":Z
    :sswitch_2d
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getPsismsc()[B

    move-result-object v3

    .line 499
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 505
    .end local v3    # "_result":[B
    :sswitch_2e
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImsRegisteredFeature()I

    move-result v3

    .line 507
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 513
    .end local v3    # "_result":I
    :sswitch_2f
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasCall(Ljava/lang/String;)Z

    move-result v3

    .line 517
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_30
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setDrxMode(I)Z

    move-result v3

    .line 527
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_31
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDrxValue()I

    move-result v3

    .line 535
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 541
    .end local v3    # "_result":I
    :sswitch_32
    const-string v6, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setReducedCycleTime(I)Z

    move-result v3

    .line 545
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 551
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_33
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getReducedCycleTime()I

    move-result v3

    .line 553
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 559
    .end local v3    # "_result":I
    :sswitch_34
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktImsiM()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktIrm()Ljava/lang/String;

    move-result-object v3

    .line 569
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_37
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setPcoValue(I)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
