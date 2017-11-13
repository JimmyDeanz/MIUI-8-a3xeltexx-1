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
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_0

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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_1

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_8
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_9
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg3":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_a
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_e
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_f
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .restart local v1    # "_arg0":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .end local v1    # "_arg0":Z
    :sswitch_10
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg1":J
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg0":J
    .end local v10    # "_arg1":J
    :sswitch_17
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_19
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_1a
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->applyEDMPolicy()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationPanel()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setCallBackground(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_1d
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMultiWindowBg(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    :sswitch_1e
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .restart local v1    # "_arg0":Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRecentPanelVisiblity(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :sswitch_1f
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .restart local v1    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setKnoxDesktopTaskBar(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    :sswitch_20
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .local v6, "_arg5":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg5":Landroid/content/ComponentName;
    .end local v7    # "_arg6":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/content/ComponentName;
    goto :goto_b

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
