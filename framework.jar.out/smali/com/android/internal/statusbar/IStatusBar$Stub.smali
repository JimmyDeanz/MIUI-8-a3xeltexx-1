.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_applyEDMPolicy:I = 0x1a

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x1e

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x19

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setCallBackground:I = 0x1c

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setKnoxDesktopTaskBar:I = 0x1f

.field static final TRANSACTION_setMultiWindowBg:I = 0x1d

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleNotificationPanel:I = 0x1b

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8

.field static final TRANSACTION_updateKnoxDesktopTaskBar:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 325
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 59
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_1

    .line 64
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :sswitch_6
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_8
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 113
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 118
    :sswitch_9
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 122
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 127
    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v4    # "_arg3":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 132
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_a
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    .line 144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 148
    :sswitch_c
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    .line 150
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 154
    :sswitch_d
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    .line 162
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 166
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_e
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 169
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1    # "_arg0":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 174
    :sswitch_f
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 178
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 179
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 178
    .restart local v1    # "_arg0":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 184
    .end local v1    # "_arg0":Z
    :sswitch_10
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    :sswitch_11
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 196
    :sswitch_12
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 202
    :sswitch_13
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :sswitch_14
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 214
    :sswitch_15
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    :sswitch_16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 224
    .local v8, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 225
    .local v10, "_arg1":J
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    .end local v8    # "_arg0":J
    .end local v10    # "_arg1":J
    :sswitch_17
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 236
    :sswitch_18
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 244
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 249
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_19
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 257
    .end local v1    # "_arg0":I
    :sswitch_1a
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->applyEDMPolicy()V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    :sswitch_1b
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationPanel()V

    .line 265
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 269
    :sswitch_1c
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setCallBackground(I)V

    .line 273
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 277
    .end local v1    # "_arg0":I
    :sswitch_1d
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 280
    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMultiWindowBg(Z)V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    .end local v1    # "_arg0":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 285
    :sswitch_1e
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 288
    .restart local v1    # "_arg0":Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRecentPanelVisiblity(Z)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 287
    .end local v1    # "_arg0":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 293
    :sswitch_1f
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 296
    .restart local v1    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setKnoxDesktopTaskBar(Z)V

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    .end local v1    # "_arg0":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 301
    :sswitch_20
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 314
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 320
    .local v6, "_arg5":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 321
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    .end local v6    # "_arg5":Landroid/content/ComponentName;
    .end local v7    # "_arg6":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/content/ComponentName;
    goto :goto_b

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
