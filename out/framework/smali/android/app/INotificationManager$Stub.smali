.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_applyRestore:I = 0x2d

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x7

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x12

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x5

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x13

.field static final TRANSACTION_cancelToast:I = 0x3

.field static final TRANSACTION_clearAllNotificationsAsUser:I = 0x30

.field static final TRANSACTION_enqueueEdgeNotification:I = 0x31

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x4

.field static final TRANSACTION_enqueueToast:I = 0x2

.field static final TRANSACTION_getActiveNotifications:I = 0xe

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x15

.field static final TRANSACTION_getAppActiveNotifications:I = 0x2e

.field static final TRANSACTION_getBackupPayload:I = 0x2c

.field static final TRANSACTION_getEffectsSuppressor:I = 0x1c

.field static final TRANSACTION_getHintsFromListener:I = 0x17

.field static final TRANSACTION_getHistoricalNotifications:I = 0xf

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x19

.field static final TRANSACTION_getNotificationPolicy:I = 0x27

.field static final TRANSACTION_getPackagePeekable:I = 0xb

.field static final TRANSACTION_getPackagePriority:I = 0x9

.field static final TRANSACTION_getPackageVisibilityOverride:I = 0xd

.field static final TRANSACTION_getPackagesRequestingNotificationPolicyAccess:I = 0x29

.field static final TRANSACTION_getZenMode:I = 0x20

.field static final TRANSACTION_getZenModeConfig:I = 0x21

.field static final TRANSACTION_isNotificationInterruptable:I = 0x2f

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x26

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x2a

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x1f

.field static final TRANSACTION_matchesCallFilter:I = 0x1d

.field static final TRANSACTION_matchesMessageFilter:I = 0x1e

.field static final TRANSACTION_notifyConditions:I = 0x24

.field static final TRANSACTION_registerListener:I = 0x10

.field static final TRANSACTION_removeEdgeNotification:I = 0x32

.field static final TRANSACTION_requestHintsFromListener:I = 0x16

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x18

.field static final TRANSACTION_requestZenModeConditions:I = 0x25

.field static final TRANSACTION_setInterruptionFilter:I = 0x1b

.field static final TRANSACTION_setNotificationPolicy:I = 0x28

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x2b

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x6

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x14

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x1a

.field static final TRANSACTION_setPackagePeekable:I = 0xa

.field static final TRANSACTION_setPackagePriority:I = 0x8

.field static final TRANSACTION_setPackageVisibilityOverride:I = 0xc

.field static final TRANSACTION_setZenMode:I = 0x23

.field static final TRANSACTION_setZenModeConfig:I = 0x22

.field static final TRANSACTION_unregisterListener:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
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
    const-string v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/app/INotificationManager;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/app/INotificationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 20
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

    .line 717
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v4

    .line 66
    .local v4, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 67
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/app/ITransientNotification;
    .end local v5    # "_arg2":I
    :sswitch_3
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v4

    .line 78
    .restart local v4    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/app/ITransientNotification;
    :sswitch_4
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification;

    .line 101
    .local v7, "_arg4":Landroid/app/Notification;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 103
    .local v8, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg6":I
    move-object/from16 v2, p0

    .line 104
    invoke-virtual/range {v2 .. v9}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 98
    .end local v7    # "_arg4":Landroid/app/Notification;
    .end local v8    # "_arg5":[I
    .end local v9    # "_arg6":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/Notification;
    goto :goto_1

    .line 111
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/app/Notification;
    :sswitch_5
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 119
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 120
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 126
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_6
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 132
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    .line 133
    .local v5, "_arg2":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 132
    .end local v5    # "_arg2":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 139
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_7
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v19

    .line 145
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v19, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 151
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":Z
    :sswitch_8
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 157
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 158
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setPackagePriority(Ljava/lang/String;II)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_9
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->getPackagePriority(Ljava/lang/String;I)I

    move-result v19

    .line 170
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_a
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    .line 183
    .local v5, "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setPackagePeekable(Ljava/lang/String;IZ)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 182
    .end local v5    # "_arg2":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 189
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 194
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v19

    .line 195
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v19, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 196
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 201
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":Z
    :sswitch_c
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 208
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 214
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_d
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v19

    .line 220
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 226
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_e
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v19

    .line 230
    .local v19, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 236
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_f
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v19

    .line 242
    .restart local v19    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 244
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 248
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_10
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 252
    .local v3, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 259
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .line 266
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_11
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 270
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 277
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":I
    :sswitch_12
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 281
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 286
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 292
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :sswitch_13
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 296
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 303
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :sswitch_14
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 307
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 308
    .restart local v4    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 314
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :sswitch_15
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 318
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 320
    .restart local v4    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 321
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    .line 322
    .local v19, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v19, :cond_6

    .line 324
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 334
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":[Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v19    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_16
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 338
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 339
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 345
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":I
    :sswitch_17
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 348
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v19

    .line 349
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 355
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_result":I
    :sswitch_18
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 359
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 360
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":I
    :sswitch_19
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 369
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v19

    .line 370
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 376
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_result":I
    :sswitch_1a
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v3

    .line 380
    .restart local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 387
    .end local v3    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v4    # "_arg1":I
    :sswitch_1b
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 392
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 398
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_1c
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v19

    .line 400
    .local v19, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v19, :cond_7

    .line 402
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 406
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 412
    .end local v19    # "_result":Landroid/content/ComponentName;
    :sswitch_1d
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 415
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 420
    .local v3, "_arg0":Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v19

    .line 421
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v19, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 418
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v19    # "_result":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 422
    .restart local v19    # "_result":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 427
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v19    # "_result":Z
    :sswitch_1e
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 430
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 435
    .restart local v3    # "_arg0":Landroid/os/Bundle;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->matchesMessageFilter(Landroid/os/Bundle;)Z

    move-result v19

    .line 436
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v19, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 433
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v19    # "_result":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 437
    .restart local v19    # "_result":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 442
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v19    # "_result":Z
    :sswitch_1f
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v19

    .line 446
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v19, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 447
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 452
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_20
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v19

    .line 454
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 460
    .end local v19    # "_result":I
    :sswitch_21
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v19

    .line 462
    .local v19, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v19, :cond_d

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    :goto_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 468
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 474
    .end local v19    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_22
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 477
    sget-object v2, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    .line 483
    .local v3, "_arg0":Landroid/service/notification/ZenModeConfig;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v19

    .line 485
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v19, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 480
    .end local v3    # "_arg0":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/service/notification/ZenModeConfig;
    goto :goto_f

    .line 486
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_result":Z
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 491
    .end local v3    # "_arg0":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_23
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 496
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 502
    .local v4, "_arg1":Landroid/net/Uri;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 504
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 499
    .end local v4    # "_arg1":Landroid/net/Uri;
    .end local v5    # "_arg2":Ljava/lang/String;
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/Uri;
    goto :goto_11

    .line 508
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/Uri;
    :sswitch_24
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 514
    .local v4, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/notification/Condition;

    .line 515
    .local v5, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 516
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 520
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v5    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_25
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionListener;

    move-result-object v3

    .line 524
    .local v3, "_arg0":Landroid/service/notification/IConditionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 525
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 530
    .end local v3    # "_arg0":Landroid/service/notification/IConditionListener;
    .end local v4    # "_arg1":I
    :sswitch_26
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v19

    .line 534
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v19, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 535
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 540
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_27
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 543
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v19

    .line 544
    .local v19, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v19, :cond_12

    .line 546
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    :goto_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 550
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 556
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_28
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 561
    sget-object v2, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager$Policy;

    .line 566
    .local v4, "_arg1":Landroid/app/NotificationManager$Policy;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 564
    .end local v4    # "_arg1":Landroid/app/NotificationManager$Policy;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_14

    .line 572
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_29
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    move-result-object v19

    .line 574
    .local v19, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 576
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 580
    .end local v19    # "_result":[Ljava/lang/String;
    :sswitch_2a
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v19

    .line 584
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v19, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 585
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 590
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_2b
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 594
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    .line 595
    .local v4, "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 594
    .end local v4    # "_arg1":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 601
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 604
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v19

    .line 605
    .local v19, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 607
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 611
    .end local v3    # "_arg0":I
    .end local v19    # "_result":[B
    :sswitch_2d
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 615
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 616
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 622
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":I
    :sswitch_2e
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 627
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    .line 628
    .local v19, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v19, :cond_16

    .line 630
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 634
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 640
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v19    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2f
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 650
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 651
    sget-object v2, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification;

    .line 657
    .restart local v7    # "_arg4":Landroid/app/Notification;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 659
    .local v16, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg6":I
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v18, v9

    .line 660
    invoke-virtual/range {v10 .. v18}, Landroid/app/INotificationManager$Stub;->isNotificationInterruptable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;JI)Z

    move-result v19

    .line 661
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v19, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 654
    .end local v7    # "_arg4":Landroid/app/Notification;
    .end local v9    # "_arg6":I
    .end local v16    # "_arg5":J
    .end local v19    # "_result":Z
    :cond_17
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/Notification;
    goto :goto_18

    .line 662
    .restart local v9    # "_arg6":I
    .restart local v16    # "_arg5":J
    .restart local v19    # "_result":Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 667
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/app/Notification;
    .end local v9    # "_arg6":I
    .end local v16    # "_arg5":J
    .end local v19    # "_result":Z
    :sswitch_30
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/INotificationManager$Stub;->clearAllNotificationsAsUser(I)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 676
    .end local v3    # "_arg0":I
    :sswitch_31
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 682
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 684
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 685
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 691
    .local v6, "_arg3":Landroid/os/Bundle;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 692
    invoke-virtual/range {v2 .. v7}, Landroid/app/INotificationManager$Stub;->enqueueEdgeNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 688
    .end local v6    # "_arg3":Landroid/os/Bundle;
    .end local v7    # "_arg4":I
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/Bundle;
    goto :goto_1a

    .line 698
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/Bundle;
    :sswitch_32
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 704
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 705
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 711
    .local v5, "_arg2":Landroid/os/Bundle;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 712
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/INotificationManager$Stub;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 708
    .end local v5    # "_arg2":Landroid/os/Bundle;
    .end local v6    # "_arg3":I
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/Bundle;
    goto :goto_1b

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
