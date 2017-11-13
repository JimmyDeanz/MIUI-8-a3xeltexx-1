.class public abstract Landroid/content/IProviderCallBack$Stub;
.super Landroid/os/Binder;
.source "IProviderCallBack.java"

# interfaces
.implements Landroid/content/IProviderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IProviderCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IProviderCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IProviderCallBack"

.field static final TRANSACTION_getCallerInfoDetails:I = 0x2

.field static final TRANSACTION_handleShortcut:I = 0x3

.field static final TRANSACTION_queryProvider:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p0, p0, v0}, Landroid/content/IProviderCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;
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
    const-string v1, "android.content.IProviderCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IProviderCallBack;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/IProviderCallBack;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/content/IProviderCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IProviderCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "_arg5":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroid/content/IProviderCallBack$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v8

    .line 64
    .local v8, "_result":Landroid/content/CustomCursor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v8, :cond_0

    .line 66
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v8, p3, v9}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v9

    .line 72
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/CustomCursor;
    :sswitch_2
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/IProviderCallBack$Stub;->getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v8

    .line 80
    .restart local v8    # "_result":Landroid/content/CustomCursor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v8, :cond_1

    .line 82
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v8, p3, v9}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v9

    .line 88
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/CustomCursor;
    :sswitch_3
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 107
    .local v4, "_arg3":Landroid/graphics/Bitmap;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroid/content/IProviderCallBack$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 112
    goto/16 :goto_0

    .line 104
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
