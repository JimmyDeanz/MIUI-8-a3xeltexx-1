.class public abstract Landroid/sec/clipboard/IClipboardUIManager$Stub;
.super Landroid/os/Binder;
.source "IClipboardUIManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardUIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardUIManager"

.field static final TRANSACTION_dismiss:I = 0x2

.field static final TRANSACTION_getClipboardUIMode:I = 0x8

.field static final TRANSACTION_getIconXpos:I = 0x6

.field static final TRANSACTION_getIconYpos:I = 0x7

.field static final TRANSACTION_isShowing:I = 0x3

.field static final TRANSACTION_setPasteTargetViewType:I = 0x4

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_showFloatingIconForScrap:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.sec.clipboard.IClipboardUIManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/clipboard/IClipboardUIManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->show(ILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :sswitch_2
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->dismiss(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_3
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->isShowing()Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_result":Z
    :sswitch_4
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .local v1, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_5
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->showFloatingIconForScrap()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getIconXpos()F

    move-result v2

    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .end local v2    # "_result":F
    :sswitch_7
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getIconYpos()F

    move-result v2

    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .end local v2    # "_result":F
    :sswitch_8
    const-string v4, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getClipboardUIMode()I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
