.class public abstract Lcom/ipsec/client/IIPsecService$Stub;
.super Landroid/os/Binder;
.source "IIPsecService.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IIPsecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IIPsecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ipsec.client.IIPsecService"

.field static final TRANSACTION_checkConnection:I = 0xa

.field static final TRANSACTION_clearLog:I = 0x4

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_connectionQuery:I = 0x8

.field static final TRANSACTION_connectionState:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_getLog:I = 0x3

.field static final TRANSACTION_isConnected:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0xd

.field static final TRANSACTION_sendKeepalive:I = 0xb

.field static final TRANSACTION_setQueryData:I = 0xc

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ipsec.client.IIPsecService"

    invoke-virtual {p0, p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.ipsec.client.IIPsecService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ipsec/client/IIPsecService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/ipsec/client/IIPsecService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ipsec/client/IIPsecService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ipsec/client/IIPsecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->startService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->stopService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->getLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_7

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_d

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_f

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_11

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_13

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->sendKeepalive(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_15

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_15
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_17

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_17
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .local v0, "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    :sswitch_e
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
