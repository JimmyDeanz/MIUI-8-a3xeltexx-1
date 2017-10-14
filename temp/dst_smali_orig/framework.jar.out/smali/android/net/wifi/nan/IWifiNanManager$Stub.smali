.class public abstract Landroid/net/wifi/nan/IWifiNanManager$Stub;
.super Landroid/os/Binder;
.source "IWifiNanManager.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanManager"

.field static final TRANSACTION_connect_0:I = 0x1

.field static final TRANSACTION_createSession:I = 0x4

.field static final TRANSACTION_destroySession:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_requestConfig:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x7

.field static final TRANSACTION_stopSession:I = 0x8

.field static final TRANSACTION_subscribe:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.net.wifi.nan.IWifiNanManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/nan/IWifiNanManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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

    return v2

    :sswitch_0
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;

    move-result-object v11

    .local v11, "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v11    # "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    .end local v14    # "_arg2":I
    :sswitch_2
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->disconnect(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v10    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/nan/ConfigRequest;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    .end local v8    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_4
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanSessionListener;

    move-result-object v9

    .local v9, "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    move-result v17

    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":I
    .end local v9    # "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    .end local v17    # "_result":I
    :sswitch_5
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/wifi/nan/PublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/nan/PublishData;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/wifi/nan/PublishSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/nan/PublishSettings;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v15}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/net/wifi/nan/PublishData;
    goto :goto_1

    .end local v12    # "_arg1":Landroid/net/wifi/nan/PublishData;
    :cond_2
    const/4 v15, 0x0

    .local v15, "_arg2":Landroid/net/wifi/nan/PublishSettings;
    goto :goto_2

    .end local v3    # "_arg0":I
    .end local v15    # "_arg2":Landroid/net/wifi/nan/PublishSettings;
    :sswitch_6
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/net/wifi/nan/SubscribeData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/nan/SubscribeData;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/net/wifi/nan/SubscribeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/nan/SubscribeSettings;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/net/wifi/nan/SubscribeData;
    goto :goto_3

    .end local v13    # "_arg1":Landroid/net/wifi/nan/SubscribeData;
    :cond_4
    const/16 v16, 0x0

    .local v16, "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    goto :goto_4

    .end local v3    # "_arg0":I
    .end local v16    # "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    :sswitch_7
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->sendMessage(II[BII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    :sswitch_8
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->stopSession(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    :sswitch_9
    const-string v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->destroySession(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
