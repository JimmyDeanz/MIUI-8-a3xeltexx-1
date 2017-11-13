.class public abstract Lcom/movial/ipphone/IIPService$Stub;
.super Landroid/os/Binder;
.source "IIPService.java"

# interfaces
.implements Lcom/movial/ipphone/IIPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IIPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.movial.ipphone.IIPService"

.field static final TRANSACTION_accept:I = 0xb

.field static final TRANSACTION_acknowledgeLastIncomingIpSms:I = 0x1b

.field static final TRANSACTION_clearDisconnected:I = 0x20

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_dial:I = 0x7

.field static final TRANSACTION_dialEmergencyCall:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_doSubscribe:I = 0x3

.field static final TRANSACTION_getContactUri:I = 0x21

.field static final TRANSACTION_hangup:I = 0x9

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0xa

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_isCssEnable:I = 0x22

.field static final TRANSACTION_queryLastRegisterFailureCode:I = 0x6

.field static final TRANSACTION_queryLastRegisterFailureReasonData:I = 0x5

.field static final TRANSACTION_registerForCallStates:I = 0x17

.field static final TRANSACTION_registerForConnectionState:I = 0x14

.field static final TRANSACTION_registerForEmergencyCallPref:I = 0x18

.field static final TRANSACTION_registerForIncomingSMS:I = 0x19

.field static final TRANSACTION_registerForIncomingUSSD:I = 0x12

.field static final TRANSACTION_registerForSubscription:I = 0x16

.field static final TRANSACTION_reject:I = 0xc

.field static final TRANSACTION_sendDtmf:I = 0x1c

.field static final TRANSACTION_sendSMS:I = 0x1a

.field static final TRANSACTION_sendUssd:I = 0x13

.field static final TRANSACTION_setCW:I = 0x11

.field static final TRANSACTION_setCallForward:I = 0x10

.field static final TRANSACTION_setCellLocation:I = 0x1f

.field static final TRANSACTION_setMute:I = 0xf

.field static final TRANSACTION_startDtmf:I = 0x1d

.field static final TRANSACTION_stopDtmf:I = 0x1e

.field static final TRANSACTION_test:I = 0x1

.field static final TRANSACTION_unregisterForConnectionState:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p0, p0, v0}, Lcom/movial/ipphone/IIPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.movial.ipphone.IIPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/movial/ipphone/IIPService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/movial/ipphone/IIPService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/movial/ipphone/IIPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->test()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->connect(Ljava/lang/String;I)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->doSubscribe()Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .end local v8    # "_result":Z
    :sswitch_4
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->disconnect(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureReasonData()Ljava/lang/String;

    move-result-object v8

    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureCode()I

    move-result v8

    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v8    # "_result":I
    :sswitch_7
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->dial(Ljava/lang/String;I)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_8
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->dialEmergencyCall(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_9
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->hangup(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_a
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->hangupForegroundResumeBackground()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->accept()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->reject(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_d
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->hold(Z)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v8    # "_result":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_e
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->conference()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->setMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :sswitch_10
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Messenger;

    .local v7, "_arg4":Landroid/os/Messenger;
    :goto_5
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/movial/ipphone/IIPService$Stub;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/Messenger;
    .end local v8    # "_result":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/Messenger;
    goto :goto_5

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/Messenger;
    :sswitch_11
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .local v4, "_arg1":Landroid/os/Messenger;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->setCW(ZLandroid/os/Messenger;)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Landroid/os/Messenger;
    .end local v8    # "_result":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .restart local v3    # "_arg0":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Messenger;
    goto :goto_7

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Landroid/os/Messenger;
    :sswitch_12
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .local v3, "_arg0":Landroid/os/Messenger;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingUSSD(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_8

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :sswitch_13
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .restart local v4    # "_arg1":Landroid/os/Messenger;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/os/Messenger;
    .end local v8    # "_result":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Messenger;
    goto :goto_9

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Messenger;
    :sswitch_14
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .local v3, "_arg0":Landroid/os/Messenger;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForConnectionState(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_a

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :sswitch_15
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->unregisterForConnectionState()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForSubscription(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_b

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :sswitch_17
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForCallStates(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_c

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :sswitch_18
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    .end local v8    # "_result":Z
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_d

    .restart local v8    # "_result":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .end local v3    # "_arg0":Landroid/os/Messenger;
    .end local v8    # "_result":Z
    :sswitch_19
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingSMS(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Messenger;
    goto :goto_f

    .end local v3    # "_arg0":Landroid/os/Messenger;
    :sswitch_1a
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .local v5, "_arg2":Landroid/os/Messenger;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/movial/ipphone/IIPService$Stub;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Landroid/os/Messenger;
    .end local v6    # "_arg3":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/Messenger;
    goto :goto_10

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Messenger;
    :sswitch_1b
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .local v3, "_arg0":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->acknowledgeLastIncomingIpSms(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    :sswitch_1c
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v4, v2

    .local v4, "_arg1":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->sendDtmf(IC)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":C
    :sswitch_1d
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v4, v2

    .restart local v4    # "_arg1":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->startDtmf(IC)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":C
    :sswitch_1e
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IIPService$Stub;->stopDtmf(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_1f
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v9, p0

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-virtual/range {v9 .. v15}, Lcom/movial/ipphone/IIPService$Stub;->setCellLocation(JIIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg0":J
    :sswitch_20
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->clearDisconnected()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->getContactUri()[Ljava/lang/String;

    move-result-object v8

    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string v2, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IIPService$Stub;->isCssEnable()Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto :goto_12

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
