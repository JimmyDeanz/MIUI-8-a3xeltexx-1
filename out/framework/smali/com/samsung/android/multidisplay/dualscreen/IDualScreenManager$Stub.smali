.class public abstract Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;
.super Landroid/os/Binder;
.source "IDualScreenManager.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

.field static final TRANSACTION_canBeCoupled:I = 0x1

.field static final TRANSACTION_canBeExpanded:I = 0x2

.field static final TRANSACTION_dimScreen:I = 0x13

.field static final TRANSACTION_finishCoupledActivity:I = 0x1b

.field static final TRANSACTION_fixTask:I = 0x3

.field static final TRANSACTION_fixTopTask:I = 0x5

.field static final TRANSACTION_focusScreen:I = 0x6

.field static final TRANSACTION_forceFocusScreen:I = 0x7

.field static final TRANSACTION_getFocusedScreen:I = 0x8

.field static final TRANSACTION_getOrientation:I = 0x9

.field static final TRANSACTION_getScreen:I = 0xb

.field static final TRANSACTION_getTaskInfo:I = 0xa

.field static final TRANSACTION_getTasks:I = 0xc

.field static final TRANSACTION_getTopRunningTaskIdWithPermission:I = 0xd

.field static final TRANSACTION_getTopRunningTaskInfo:I = 0xe

.field static final TRANSACTION_isExpandable:I = 0xf

.field static final TRANSACTION_isInFixedScreenMode:I = 0x10

.field static final TRANSACTION_moveTaskToScreen:I = 0x11

.field static final TRANSACTION_moveTaskToScreenWithPermission:I = 0x12

.field static final TRANSACTION_overrideNextAppTransition:I = 0x14

.field static final TRANSACTION_registerDualScreenCallbacks:I = 0x15

.field static final TRANSACTION_registerExpandableActivity:I = 0x16

.field static final TRANSACTION_requestExpandedDisplayOrientation:I = 0x18

.field static final TRANSACTION_requestOppositeDisplayOrientation:I = 0x17

.field static final TRANSACTION_sendExpandRequest:I = 0x1d

.field static final TRANSACTION_sendShrinkRequest:I = 0x1e

.field static final TRANSACTION_setExpandable:I = 0x19

.field static final TRANSACTION_setFinishWithCoupledTask:I = 0x1a

.field static final TRANSACTION_swapTopTask:I = 0x1c

.field static final TRANSACTION_unfixTask:I = 0x4

.field static final TRANSACTION_unfixTopTask:I = 0x1f

.field static final TRANSACTION_unregisterDualScreenCallbacks:I = 0x20

.field static final TRANSACTION_unregisterExpandableActivity:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
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
    const-string v1, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->canBeCoupled(Landroid/os/IBinder;)Z

    move-result v4

    .line 55
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->canBeExpanded(I)Z

    move-result v4

    .line 65
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->fixTask(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->unfixTask(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 97
    .local v0, "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_1

    .line 103
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_6
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 108
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 113
    .local v1, "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->focusScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_2

    .line 119
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_7
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 127
    .local v0, "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_3

    .line 133
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_8
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v4

    .line 135
    .local v4, "_result":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_5

    .line 137
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/dualscreen/DualScreen;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 141
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v4    # "_result":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_9
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 150
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 155
    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v4

    .line 156
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v4    # "_result":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_4

    .line 162
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_a
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v4

    .line 166
    .local v4, "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v4, :cond_7

    .line 168
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/dualscreen/TaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 172
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    :sswitch_b
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v4

    .line 182
    .local v4, "_result":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v4, :cond_8

    .line 184
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/dualscreen/DualScreen;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 188
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_c
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 201
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/DualScreen;

    .line 206
    .local v2, "_arg2":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getTasks(IILcom/samsung/android/dualscreen/DualScreen;)Ljava/util/List;

    move-result-object v5

    .line 207
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/dualscreen/TaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 204
    .end local v2    # "_arg2":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/dualscreen/TaskInfo;>;"
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_5

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_d
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 216
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 221
    .local v0, "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getTopRunningTaskIdWithPermission(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v4

    .line 222
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v4    # "_result":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_6

    .line 228
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_e
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 231
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 236
    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v4

    .line 237
    .local v4, "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v4, :cond_c

    .line 239
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/dualscreen/TaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v4    # "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_7

    .line 243
    .restart local v4    # "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v4    # "_result":Lcom/samsung/android/dualscreen/TaskInfo;
    :sswitch_f
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->isExpandable(I)Z

    move-result v4

    .line 253
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    .line 262
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 267
    .local v0, "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z

    move-result v4

    .line 268
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v4    # "_result":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_8

    .line 274
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_11
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 279
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 284
    .local v1, "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->moveTaskToScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 282
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_9

    .line 290
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_12
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 295
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 301
    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 304
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 309
    .local v3, "_arg3":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->moveTaskToScreenWithPermission(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 298
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_a

    .line 307
    .restart local v2    # "_arg2":I
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/Bundle;
    goto :goto_b

    .line 315
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_13
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 319
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    .line 320
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 326
    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    move v2, v7

    .line 327
    .local v2, "_arg2":Z
    :goto_d
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->dimScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;Z)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 323
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v2    # "_arg2":Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_c

    :cond_14
    move v2, v6

    .line 326
    goto :goto_d

    .line 333
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_14
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 337
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 338
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 344
    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->overrideNextAppTransition(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v2    # "_arg2":I
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_e

    .line 351
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_15
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    move-result-object v0

    .line 354
    .local v0, "_arg0":Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 360
    .end local v0    # "_arg0":Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;
    :sswitch_16
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 363
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->registerExpandableActivity(Landroid/os/IBinder;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 369
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 373
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->requestOppositeDisplayOrientation(Landroid/os/IBinder;I)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_18
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 384
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->requestExpandedDisplayOrientation(Landroid/os/IBinder;I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_19
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 395
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_16

    move v1, v7

    .line 396
    .local v1, "_arg1":Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->setExpandable(Landroid/os/IBinder;Z)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_16
    move v1, v6

    .line 395
    goto :goto_f

    .line 402
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string v8, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 406
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_17

    move v1, v7

    .line 407
    .restart local v1    # "_arg1":Z
    :goto_10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->setFinishWithCoupledTask(Landroid/os/IBinder;Z)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_17
    move v1, v6

    .line 406
    goto :goto_10

    .line 413
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_1b
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 417
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 418
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->finishCoupledActivity(Landroid/os/IBinder;I)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 424
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_1c
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->swapTopTask()V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 431
    :sswitch_1d
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 434
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->sendExpandRequest(I)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 440
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 445
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/DualScreen;

    .line 450
    .local v1, "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 448
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_11

    .line 456
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_1f
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 459
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    .line 464
    .local v0, "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_12
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    goto :goto_12

    .line 470
    .end local v0    # "_arg0":Lcom/samsung/android/dualscreen/DualScreen;
    :sswitch_20
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    move-result-object v0

    .line 473
    .local v0, "_arg0":Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;
    :sswitch_21
    const-string v6, "com.samsung.android.multidisplay.dualscreen.IDualScreenManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 482
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->unregisterExpandableActivity(Landroid/os/IBinder;)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
