.class public abstract Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataUiEvent.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardDataUiEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardDataUiEvent"

.field static final TRANSACTION_getClipboarddata:I = 0x5

.field static final TRANSACTION_removeAll:I = 0x2

.field static final TRANSACTION_removeItem:I = 0x1

.field static final TRANSACTION_removeScrapItem:I = 0x6

.field static final TRANSACTION_selectItem:I = 0x3

.field static final TRANSACTION_setClipboarddata:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataUiEvent;
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
    const-string v1, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardDataUiEvent;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/sec/clipboard/IClipboardDataUiEvent;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->removeItem(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v5, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->removeAll()Z

    move-result v2

    .line 61
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v3, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 72
    .local v1, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_4
    const-string v3, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 86
    .local v0, "_arg0":Landroid/content/ClipData;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->setClipboarddata(Landroid/content/ClipData;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ClipData;
    goto :goto_1

    .line 92
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :sswitch_5
    const-string v5, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 98
    .local v2, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .end local v2    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_6
    const-string v3, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->removeScrapItem(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
