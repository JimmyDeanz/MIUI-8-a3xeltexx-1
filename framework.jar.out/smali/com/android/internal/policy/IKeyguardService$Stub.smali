.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_changeLidState:I = 0x13

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_getScreenOrientation:I = 0x1b

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x15

.field static final TRANSACTION_onBootCompleted:I = 0x12

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x9

.field static final TRANSACTION_onScreenTurnedOff:I = 0xd

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x8

.field static final TRANSACTION_onStartedWakingUp:I = 0xa

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x17

.field static final TRANSACTION_setAdaptiveEvent:I = 0x16

.field static final TRANSACTION_setBendedPendingIntent:I = 0x19

.field static final TRANSACTION_setBendedPendingIntentInSecure:I = 0x1a

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x14

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x18

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 51
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZI)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_0
    move v0, v7

    .line 49
    goto :goto_1

    .line 57
    :sswitch_2
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 77
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v2, v6

    .line 78
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_1
    move v0, v7

    .line 75
    goto :goto_2

    .restart local v0    # "_arg0":Z
    :cond_2
    move v2, v7

    .line 77
    goto :goto_3

    .line 83
    .end local v0    # "_arg0":Z
    :sswitch_5
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto :goto_0

    .line 101
    :sswitch_8
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    goto/16 :goto_0

    .line 123
    :sswitch_b
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_c
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    goto/16 :goto_0

    .line 137
    :sswitch_d
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    goto/16 :goto_0

    .line 143
    :sswitch_e
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v6

    .line 146
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v7

    .line 145
    goto :goto_4

    .line 151
    :sswitch_f
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_0

    .line 157
    :sswitch_10
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 160
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 165
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 170
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_0

    .line 184
    :sswitch_13
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v0, v6

    .line 187
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->changeLidState(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v7

    .line 186
    goto :goto_6

    .line 192
    :sswitch_14
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 196
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 197
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_15
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    goto/16 :goto_0

    .line 208
    :sswitch_16
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 213
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 219
    .local v2, "_arg1":Landroid/widget/RemoteViews;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 220
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 225
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_8
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 216
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_7

    .line 223
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_8

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_17
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 243
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 249
    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 250
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 255
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_a
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_9

    .line 253
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_a

    .line 260
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_19
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 263
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 269
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    .line 270
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 275
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_c
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_b

    .line 273
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_c

    .line 280
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_1a
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 283
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 289
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    .line 290
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 295
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_e
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_d

    .line 293
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_e

    .line 300
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_1b
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    move v0, v6

    .line 303
    .local v0, "_arg0":Z
    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->getScreenOrientation(Z)I

    move-result v5

    .line 304
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v5    # "_result":I
    :cond_e
    move v0, v7

    .line 302
    goto :goto_f

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
