.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x26

.field static final TRANSACTION_appTransitionPending:I = 0x25

.field static final TRANSACTION_appTransitionStarting:I = 0x27

.field static final TRANSACTION_applyEDMPolicy:I = 0x2a

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x24

.field static final TRANSACTION_clearNotificationEffects:I = 0x14

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableAsUser:I = 0x29

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xe

.field static final TRANSACTION_getDisableFlags:I = 0x7

.field static final TRANSACTION_getPanelExpandState:I = 0x2d

.field static final TRANSACTION_getQuickSettingPanelExpandState:I = 0x33

.field static final TRANSACTION_hideRecentApps:I = 0x21

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x30

.field static final TRANSACTION_onClearAllNotifications:I = 0x18

.field static final TRANSACTION_onNotificationActionClick:I = 0x16

.field static final TRANSACTION_onNotificationClear:I = 0x19

.field static final TRANSACTION_onNotificationClearWithReason:I = 0x31

.field static final TRANSACTION_onNotificationClick:I = 0x15

.field static final TRANSACTION_onNotificationError:I = 0x17

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x1b

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x1a

.field static final TRANSACTION_onPanelHidden:I = 0x13

.field static final TRANSACTION_onPanelRevealed:I = 0x12

.field static final TRANSACTION_preloadRecentApps:I = 0x23

.field static final TRANSACTION_registerStatusBar:I = 0x10

.field static final TRANSACTION_registerStatusBarToDisplay:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0xa

.field static final TRANSACTION_requestStatusBarOpen:I = 0x34

.field static final TRANSACTION_setCallBackground:I = 0x2e

.field static final TRANSACTION_setCurrentUser:I = 0xf

.field static final TRANSACTION_setIcon:I = 0x8

.field static final TRANSACTION_setIconVisibility:I = 0x9

.field static final TRANSACTION_setImeWindowStatus:I = 0xd

.field static final TRANSACTION_setKnoxDesktopTaskBar:I = 0x35

.field static final TRANSACTION_setMultiWindowBg:I = 0x2f

.field static final TRANSACTION_setPanelExpandState:I = 0x2c

.field static final TRANSACTION_setQuickSettingPanelExpandState:I = 0x32

.field static final TRANSACTION_setSystemUiVisibility:I = 0x1c

.field static final TRANSACTION_setSystemUiVisibilityToDisplay:I = 0x1e

.field static final TRANSACTION_setWindowState:I = 0x1d

.field static final TRANSACTION_setWindowStateToDisplay:I = 0x1f

.field static final TRANSACTION_showRecentApps:I = 0x20

.field static final TRANSACTION_startAssist:I = 0x28

.field static final TRANSACTION_toggleNotificationPanel:I = 0x2b

.field static final TRANSACTION_toggleRecentApps:I = 0x22

.field static final TRANSACTION_topAppWindowChanged:I = 0xb

.field static final TRANSACTION_topAppWindowChangedToDisplay:I = 0xc

.field static final TRANSACTION_updateKnoxDesktopTaskBar:I = 0x36


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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

    .line 671
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 44
    :sswitch_0
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v6, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v6, 0x1

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v6, 0x1

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 67
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 69
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v6, 0x1

    goto :goto_0

    .line 76
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 80
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 82
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 84
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 85
    .local v10, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v6, 0x1

    goto :goto_0

    .line 91
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_5
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 97
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 98
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 104
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 108
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 110
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 113
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 119
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_7
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags()I

    move-result v23

    .line 121
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 127
    .end local v23    # "_result":I
    :sswitch_8
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 135
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 137
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 138
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 144
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_9
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    .line 149
    .local v8, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 148
    .end local v8    # "_arg1":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 155
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 164
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    .line 167
    .local v7, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 166
    .end local v7    # "_arg0":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 173
    :sswitch_c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    .line 177
    .restart local v7    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 178
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChangedToDisplay(ZI)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 175
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 184
    :sswitch_d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 188
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 190
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 192
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v10, 0x1

    .line 193
    .local v10, "_arg3":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 192
    .end local v10    # "_arg3":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 199
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 209
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 215
    .end local v7    # "_arg0":I
    :sswitch_10
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v7

    .line 219
    .local v7, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v8}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 221
    .local v8, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 222
    .local v22, "_arg2_length":I
    if-gez v22, :cond_4

    .line 223
    const/4 v9, 0x0

    .line 229
    .local v9, "_arg2":[I
    :goto_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v8, v9, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v8, :cond_5

    .line 233
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 241
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 226
    .end local v9    # "_arg2":[I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4
    move/from16 v0, v22

    new-array v9, v0, [I

    .restart local v9    # "_arg2":[I
    goto :goto_5

    .line 237
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 245
    .end local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v9    # "_arg2":[I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v22    # "_arg2_length":I
    :sswitch_11
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v7

    .line 249
    .restart local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v8}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 251
    .restart local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 252
    .restart local v22    # "_arg2_length":I
    if-gez v22, :cond_6

    .line 253
    const/4 v9, 0x0

    .line 259
    .restart local v9    # "_arg2":[I
    :goto_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    move/from16 v17, v11

    .line 262
    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarToDisplay(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;I)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v8, :cond_7

    .line 265
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 271
    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 272
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 273
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 256
    .end local v9    # "_arg2":[I
    .end local v11    # "_arg4":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_6
    move/from16 v0, v22

    new-array v9, v0, [I

    .restart local v9    # "_arg2":[I
    goto :goto_7

    .line 269
    .restart local v11    # "_arg4":I
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 277
    .end local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v9    # "_arg2":[I
    .end local v11    # "_arg4":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v22    # "_arg2_length":I
    :sswitch_12
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v7, 0x1

    .line 281
    .local v7, "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 282
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 279
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":I
    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 288
    :sswitch_13
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 295
    :sswitch_14
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 302
    :sswitch_15
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 311
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 315
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 316
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 322
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    :sswitch_17
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 326
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 330
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 332
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 334
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg6":I
    move-object/from16 v6, p0

    .line 337
    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 343
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    :sswitch_18
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 346
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 352
    .end local v7    # "_arg0":I
    :sswitch_19
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 358
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 360
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 361
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 367
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 371
    .local v7, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 372
    .local v8, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 378
    .end local v7    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v8    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_1b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v8, 0x1

    .line 384
    .local v8, "_arg1":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v9, 0x1

    .line 385
    .local v9, "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 382
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_a

    .line 384
    .restart local v8    # "_arg1":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_b

    .line 391
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    :sswitch_1c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 395
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 397
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 404
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_1d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 408
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 409
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 415
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_1e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 419
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 421
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 423
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 424
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibilityToDisplay(IILjava/lang/String;I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 430
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 434
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 436
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 437
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowStateToDisplay(III)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 443
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_20
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v7, 0x1

    .line 446
    .local v7, "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 445
    .end local v7    # "_arg0":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_c

    .line 452
    :sswitch_21
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v7, 0x1

    .line 456
    .restart local v7    # "_arg0":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v8, 0x1

    .line 457
    .local v8, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 454
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_d

    .line 456
    .restart local v7    # "_arg0":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    .line 463
    .end local v7    # "_arg0":Z
    :sswitch_22
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 470
    :sswitch_23
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 477
    :sswitch_24
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 484
    :sswitch_25
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionPending()V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 491
    :sswitch_26
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionCancelled()V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 498
    :sswitch_27
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 502
    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 503
    .local v20, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionStarting(JJ)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 509
    .end local v18    # "_arg0":J
    .end local v20    # "_arg1":J
    :sswitch_28
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 512
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 517
    .local v7, "_arg0":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 515
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/Bundle;
    goto :goto_f

    .line 523
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_29
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 527
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 529
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 531
    .local v9, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 532
    .local v10, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 538
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/IBinder;
    .end local v10    # "_arg3":Ljava/lang/String;
    :sswitch_2a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->applyEDMPolicy()V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 545
    :sswitch_2b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleNotificationPanel()V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 552
    :sswitch_2c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/4 v7, 0x1

    .line 555
    .local v7, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandState(Z)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 554
    .end local v7    # "_arg0":Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_10

    .line 561
    :sswitch_2d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandState()Z

    move-result v23

    .line 563
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v23, :cond_10

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 564
    :cond_10
    const/4 v6, 0x0

    goto :goto_11

    .line 569
    .end local v23    # "_result":Z
    :sswitch_2e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 572
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCallBackground(I)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 578
    .end local v7    # "_arg0":I
    :sswitch_2f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v7, 0x1

    .line 581
    .local v7, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setMultiWindowBg(Z)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 580
    .end local v7    # "_arg0":Z
    :cond_11
    const/4 v7, 0x0

    goto :goto_12

    .line 587
    :sswitch_30
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/4 v7, 0x1

    .line 590
    .restart local v7    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->notifyRecentPanelVisiblity(Z)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 589
    .end local v7    # "_arg0":Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_13

    .line 596
    :sswitch_31
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 602
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 604
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 606
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v6, p0

    .line 607
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClearWithReason(Ljava/lang/String;Ljava/lang/String;III)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 613
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_32
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/4 v7, 0x1

    .line 616
    .local v7, "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setQuickSettingPanelExpandState(Z)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 615
    .end local v7    # "_arg0":Z
    :cond_13
    const/4 v7, 0x0

    goto :goto_14

    .line 622
    :sswitch_33
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getQuickSettingPanelExpandState()Z

    move-result v23

    .line 624
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v23, :cond_14

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 625
    :cond_14
    const/4 v6, 0x0

    goto :goto_15

    .line 630
    .end local v23    # "_result":Z
    :sswitch_34
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestStatusBarOpen()V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 637
    :sswitch_35
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v7, 0x1

    .line 640
    .restart local v7    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setKnoxDesktopTaskBar(Z)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 639
    .end local v7    # "_arg0":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_16

    .line 646
    :sswitch_36
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 650
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 652
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 654
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 656
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 658
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 659
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 665
    .local v12, "_arg5":Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg6":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 666
    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 662
    .end local v12    # "_arg5":Landroid/content/ComponentName;
    .end local v13    # "_arg6":Ljava/lang/String;
    :cond_16
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/content/ComponentName;
    goto :goto_17

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
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
