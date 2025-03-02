.class public abstract Lcom/android/phone/INetworkQueryService$Stub;
.super Landroid/os/Binder;
.source "INetworkQueryService.java"

# interfaces
.implements Lcom/android/phone/INetworkQueryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/INetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.phone.INetworkQueryService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v3, "com.android.phone.INetworkQueryService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "com.android.phone.INetworkQueryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/INetworkQueryService$Stub;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "com.android.phone.INetworkQueryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/android/phone/INetworkQueryServiceCallback;
    :sswitch_3
    const-string v3, "com.android.phone.INetworkQueryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->unregisterCallback(Lcom/android/phone/INetworkQueryServiceCallback;)V

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
