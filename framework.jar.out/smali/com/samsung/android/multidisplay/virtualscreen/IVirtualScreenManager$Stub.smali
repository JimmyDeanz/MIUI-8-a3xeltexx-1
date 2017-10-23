.class public abstract Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;
.super Landroid/os/Binder;
.source "IVirtualScreenManager.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

.field static final TRANSACTION_bindVirtualScreen:I = 0x6

.field static final TRANSACTION_createVirtualScreen:I = 0x1

.field static final TRANSACTION_getDisplayId:I = 0x9

.field static final TRANSACTION_getOffset:I = 0x5

.field static final TRANSACTION_getVirtualScreenSize:I = 0xa

.field static final TRANSACTION_isMoving:I = 0xb

.field static final TRANSACTION_moveVirtualScreenToDisplay:I = 0x8

.field static final TRANSACTION_removeVirtualScreen:I = 0x2

.field static final TRANSACTION_setOffset:I = 0x4

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_unBindVirtualScreen:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;
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
    const-string v1, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 59
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->createVirtualScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 60
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v6    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    .line 66
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :sswitch_2
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->removeVirtualScreen()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 84
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 90
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v6

    .line 91
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_2

    .line 88
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_3

    .line 97
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 101
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v5, v7

    .local v5, "_arg4":Z
    :goto_4
    move-object v0, p0

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v6

    .line 109
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_4
    move v5, v8

    .line 107
    goto :goto_4

    .line 115
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_5
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->getOffset(I)Landroid/graphics/Point;

    move-result-object v6

    .line 119
    .local v6, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v6, :cond_5

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v6, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/graphics/Point;
    :sswitch_6
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->bindVirtualScreen(Ljava/lang/String;I)Z

    move-result v6

    .line 137
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->unBindVirtualScreen(Ljava/lang/String;)Z

    move-result v6

    .line 147
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->moveVirtualScreenToDisplay(Ljava/lang/String;I)Z

    move-result v6

    .line 159
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 169
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v6

    .line 171
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_a
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 180
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->getVirtualScreenSize(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 181
    .local v6, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_9

    .line 183
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v6, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 187
    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/graphics/Rect;
    :sswitch_b
    const-string v0, "com.samsung.android.multidisplay.virtualscreen.IVirtualScreenManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->isMoving(I)Z

    move-result v6

    .line 197
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
