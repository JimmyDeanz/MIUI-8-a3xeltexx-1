.class public abstract Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureService.java"

# interfaces
.implements Lcom/samsung/android/smartclip/ISpenGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/ISpenGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartclip.ISpenGestureService"

.field static final TRANSACTION_getAirButtonHitTest:I = 0x7

.field static final TRANSACTION_getScrollableAreaInfo:I = 0x5

.field static final TRANSACTION_getScrollableViewInfo:I = 0x6

.field static final TRANSACTION_getSmartClipDataByScreenRect:I = 0x2

.field static final TRANSACTION_injectInputEvent:I = 0x4

.field static final TRANSACTION_sendSmartClipRemoteRequestResult:I = 0x3

.field static final TRANSACTION_setFocusWindow:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;
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
    const-string v1, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setFocusWindow(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 68
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 70
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v6

    .line 72
    .local v6, "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v6, p3, v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    .line 78
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    .restart local v3    # "_arg2":I
    .restart local v6    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :sswitch_3
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .line 92
    .local v1, "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    goto :goto_2

    .line 98
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :sswitch_4
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, "_arg1":I
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/InputEvent;

    .line 106
    .local v3, "_arg2":[Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v4, v7

    .line 108
    .local v4, "_arg3":Z
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .local v5, "_arg4":Landroid/os/IBinder;
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/view/InputEvent;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/os/IBinder;
    :sswitch_5
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 124
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 125
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 126
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v6, :cond_5

    .line 128
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_3

    .line 132
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 147
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 150
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 151
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v6, :cond_7

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_4

    .line 157
    .restart local v2    # "_arg1":I
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getAirButtonHitTest(III)I

    move-result v6

    .line 171
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
