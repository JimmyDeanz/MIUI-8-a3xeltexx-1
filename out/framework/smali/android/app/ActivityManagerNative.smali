.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 3107
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 80
    if-nez p0, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 85
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 111
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 112
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 106
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3104
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 323
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
    .line 157
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 3100
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 160
    :sswitch_0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 162
    .local v192, "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 163
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 165
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 167
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 169
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 170
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 172
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 174
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v283, v0

    .line 176
    .local v283, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v6, 0x1

    goto :goto_0

    .line 170
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v283    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 172
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 183
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 185
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 186
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 187
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 188
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 189
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 190
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 191
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 192
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 193
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 195
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 197
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 198
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v283, v0

    .line 200
    .restart local v283    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 193
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v283    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 195
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 207
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 209
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 210
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 211
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 212
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 214
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 215
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 216
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 217
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 219
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 221
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 222
    .local v29, "ignoreTargetSecurity":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 223
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v283, v0

    .line 226
    .restart local v283    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 217
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v283    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 219
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 221
    .restart local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    goto :goto_7

    .line 233
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 235
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 236
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 238
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 239
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 240
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 243
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 245
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 247
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 248
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v283, v0

    .line 250
    .local v283, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v6, 0x0

    move-object/from16 v0, v283

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 243
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v283    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    goto :goto_8

    .line 245
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 257
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 259
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 260
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 261
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 262
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 264
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 265
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 266
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 267
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 268
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 270
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 271
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v283, v0

    .line 273
    .local v283, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 268
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v283    # "result":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_a

    .line 280
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 282
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 283
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 284
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 285
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 286
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 288
    .restart local v21    # "fillInIntent":Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 289
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 290
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 291
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 292
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 293
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 294
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_b
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 296
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v283, v0

    .line 299
    .restart local v283    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 294
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v283    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 306
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v21    # "fillInIntent":Landroid/content/Intent;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 308
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 309
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 310
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 311
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 312
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 314
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 316
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 317
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 319
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 321
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 322
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v283, v0

    .line 324
    .restart local v283    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 317
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v283    # "result":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_c

    .line 319
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 331
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v198

    .line 333
    .local v198, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 334
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 336
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v198

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v283, v0

    .line 337
    .local v283, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move/from16 v0, v283

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 334
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v283    # "result":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_e

    .line 338
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v283    # "result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 344
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v198    # "callingActivity":Landroid/os/IBinder;
    .end local v283    # "result":Z
    :sswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 346
    .local v308, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_10

    const/16 v16, 0x0

    .line 347
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v308

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v283, v0

    .line 348
    .local v283, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 346
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v283    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 354
    .end local v308    # "taskId":I
    :sswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 356
    .local v78, "token":Landroid/os/IBinder;
    const/16 v54, 0x0

    .line 357
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 358
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 359
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 361
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v216, 0x1

    .line 362
    .local v216, "finishTask":Z
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v216

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v0

    move/16 v280, v0

    .line 363
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move/from16 v0, v280

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 361
    .end local v216    # "finishTask":Z
    .end local v280    # "res":Z
    :cond_12
    const/16 v216, 0x0

    goto :goto_11

    .line 364
    .restart local v216    # "finishTask":Z
    .restart local v280    # "res":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 369
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v216    # "finishTask":Z
    .end local v280    # "res":Z
    :sswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 371
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 372
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 373
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 379
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 381
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v280, v0

    .line 382
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move/from16 v0, v280

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 383
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 388
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 391
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 397
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 399
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v280, v0

    .line 400
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    move/from16 v0, v280

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 401
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 406
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 408
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 414
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 416
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v280, v0

    .line 417
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move/from16 v0, v280

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 418
    :cond_16
    const/4 v6, 0x0

    goto :goto_15

    .line 424
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 426
    .restart local v192    # "b":Landroid/os/IBinder;
    if-eqz v192, :cond_17

    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 428
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 429
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 430
    if-eqz v192, :cond_18

    invoke-static/range {v192 .. v192}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 432
    .local v33, "rec":Landroid/content/IIntentReceiver;
    :goto_17
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 433
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 434
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 435
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 436
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v9, :cond_19

    .line 438
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 443
    :goto_18
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 426
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    goto :goto_16

    .line 430
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    goto :goto_17

    .line 441
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 448
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 450
    .restart local v192    # "b":Landroid/os/IBinder;
    if-nez v192, :cond_1a

    .line 451
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 453
    :cond_1a
    invoke-static/range {v192 .. v192}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 454
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 461
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 463
    .restart local v192    # "b":Landroid/os/IBinder;
    if-eqz v192, :cond_1b

    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 465
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_19
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 466
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 467
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 468
    if-eqz v192, :cond_1c

    invoke-static/range {v192 .. v192}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 470
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 471
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 472
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 473
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 474
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 475
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 476
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 477
    .local v59, "serialized":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 478
    .local v60, "sticky":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 479
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v280, v0

    .line 482
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 463
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v280    # "res":I
    :cond_1b
    const/4 v7, 0x0

    goto :goto_19

    .line 468
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x0

    goto :goto_1a

    .line 476
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    goto :goto_1b

    .line 477
    .restart local v59    # "serialized":Z
    :cond_1e
    const/16 v60, 0x0

    goto :goto_1c

    .line 489
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 491
    .restart local v192    # "b":Landroid/os/IBinder;
    if-eqz v192, :cond_1f

    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 492
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1d
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 493
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 494
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 491
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    goto :goto_1d

    .line 500
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 502
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 503
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 504
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 505
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 506
    .local v66, "resultAbort":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 507
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 508
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 510
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 505
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    goto :goto_1e

    .line 515
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    :sswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 518
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 521
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 526
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 528
    .restart local v78    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 529
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 530
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 532
    .restart local v39    # "config":Landroid/content/res/Configuration;
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v299, v0

    .line 533
    .local v299, "stopProfiling":Z
    :goto_1f
    if-eqz v78, :cond_24

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v39

    move/from16 v3, v299

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 536
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 532
    .end local v299    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v299, v0

    goto :goto_1f

    .line 541
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 543
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 549
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 551
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 557
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 559
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v249

    .line 560
    .local v249, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v265, v0

    .line 561
    .local v265, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Ljava/lang/CharSequence;

    .line 562
    .local v208, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v249

    move-object/from16 v3, v265

    move-object/from16 v4, v208

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 568
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v208    # "description":Ljava/lang/CharSequence;
    .end local v249    # "map":Landroid/os/Bundle;
    .end local v265    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 570
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 576
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 578
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 584
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 586
    .restart local v78    # "token":Landroid/os/IBinder;
    if-eqz v78, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v280, v0

    .line 587
    .local v280, "res":Ljava/lang/String;
    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 586
    .end local v280    # "res":Ljava/lang/String;
    :cond_26
    const/4 v0, 0x0

    move-object/16 v280, v0

    goto :goto_20

    .line 593
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 595
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v201

    .line 596
    .local v201, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, v201

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 598
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 602
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v201    # "cn":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 604
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v245

    .line 605
    .local v245, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v245, :cond_27

    invoke-interface/range {v245 .. v245}, Ljava/util/List;->size()I

    move-result v181

    .line 607
    .local v181, "N":I
    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/16 v220, 0x0

    .local v220, "i":I
    :goto_22
    move/from16 v0, v220

    move/from16 v1, v181

    if-ge v0, v1, :cond_28

    .line 610
    move-object/from16 v0, v245

    move/from16 v1, v220

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v307, v0

    move-object/from16 v0, v307

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v307, v0

    .line 611
    .local v307, "task":Landroid/app/IAppTask;
    invoke-interface/range {v307 .. v307}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 609
    add-int/lit8 v220, v220, 0x1

    goto :goto_22

    .line 606
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v307    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v181, -0x1

    goto :goto_21

    .line 613
    .restart local v181    # "N":I
    .restart local v220    # "i":I
    :cond_28
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 617
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v245    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v184

    .line 619
    .local v184, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 620
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v207

    check-cast v207, Landroid/app/ActivityManager$TaskDescription;

    .line 622
    .local v207, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v311, v0

    move-object/from16 v0, v311

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v311, v0

    .line 623
    .local v311, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v207

    move-object/from16 v3, v311

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v280, v0

    .line 624
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 630
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v184    # "activityToken":Landroid/os/IBinder;
    .end local v207    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v280    # "res":I
    .end local v311    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v290, v0

    .line 632
    .local v290, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v6, 0x0

    move-object/from16 v0, v290

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 638
    .end local v290    # "size":Landroid/graphics/Point;
    :sswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v251

    .line 640
    .local v251, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 641
    .local v88, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v251

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v243

    .line 642
    .local v243, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v243, :cond_29

    invoke-interface/range {v243 .. v243}, Ljava/util/List;->size()I

    move-result v181

    .line 644
    .restart local v181    # "N":I
    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/16 v220, 0x0

    .restart local v220    # "i":I
    :goto_24
    move/from16 v0, v220

    move/from16 v1, v181

    if-ge v0, v1, :cond_2a

    .line 647
    move-object/from16 v0, v243

    move/from16 v1, v220

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v224

    check-cast v224, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 648
    .local v224, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    add-int/lit8 v220, v220, 0x1

    goto :goto_24

    .line 643
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v224    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v181, -0x1

    goto :goto_23

    .line 650
    .restart local v181    # "N":I
    .restart local v220    # "i":I
    :cond_2a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 654
    .end local v88    # "fl":I
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v243    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v251    # "maxNum":I
    :sswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v251

    .line 656
    .restart local v251    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 657
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 658
    .local v75, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v251

    move/from16 v2, v88

    move/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(III)Ljava/util/List;

    move-result-object v243

    .line 659
    .restart local v243    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    if-eqz v243, :cond_2b

    invoke-interface/range {v243 .. v243}, Ljava/util/List;->size()I

    move-result v181

    .line 661
    .restart local v181    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/16 v220, 0x0

    .restart local v220    # "i":I
    :goto_26
    move/from16 v0, v220

    move/from16 v1, v181

    if-ge v0, v1, :cond_2c

    .line 664
    move-object/from16 v0, v243

    move/from16 v1, v220

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v224

    check-cast v224, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 665
    .restart local v224    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 663
    add-int/lit8 v220, v220, 0x1

    goto :goto_26

    .line 660
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v224    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2b
    const/16 v181, -0x1

    goto :goto_25

    .line 667
    .restart local v181    # "N":I
    .restart local v220    # "i":I
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 671
    .end local v75    # "displayId":I
    .end local v88    # "fl":I
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v243    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v251    # "maxNum":I
    :sswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v251

    .line 673
    .restart local v251    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 674
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 675
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v251

    move/from16 v2, v88

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v240

    .line 677
    .local v240, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move-object/from16 v1, v240

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 679
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 683
    .end local v17    # "userId":I
    .end local v88    # "fl":I
    .end local v240    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v251    # "maxNum":I
    :sswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 685
    .local v79, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v309, v0

    .line 686
    .local v309, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    move-object/from16 v0, v309

    if-eqz v0, :cond_2d

    .line 688
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v6, 0x1

    move-object/from16 v0, v309

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    :goto_27
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 691
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 697
    .end local v79    # "id":I
    .end local v309    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v251

    .line 699
    .restart local v251    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 700
    .restart local v88    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v251

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v242

    .line 701
    .local v242, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v242, :cond_2e

    invoke-interface/range {v242 .. v242}, Ljava/util/List;->size()I

    move-result v181

    .line 703
    .restart local v181    # "N":I
    :goto_28
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/16 v220, 0x0

    .restart local v220    # "i":I
    :goto_29
    move/from16 v0, v220

    move/from16 v1, v181

    if-ge v0, v1, :cond_2f

    .line 706
    move-object/from16 v0, v242

    move/from16 v1, v220

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v224

    check-cast v224, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 707
    .local v224, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 705
    add-int/lit8 v220, v220, 0x1

    goto :goto_29

    .line 702
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v224    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2e
    const/16 v181, -0x1

    goto :goto_28

    .line 709
    .restart local v181    # "N":I
    .restart local v220    # "i":I
    :cond_2f
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 713
    .end local v88    # "fl":I
    .end local v181    # "N":I
    .end local v220    # "i":I
    .end local v242    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v251    # "maxNum":I
    :sswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v239

    .line 715
    .local v239, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    move-object/from16 v0, p3

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 717
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 721
    .end local v239    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v241

    .line 723
    .local v241, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move-object/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 725
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 729
    .end local v241    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v246

    .line 731
    .local v246, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    move-object/from16 v0, p3

    move-object/from16 v1, v246

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 733
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 737
    .end local v246    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v307, v0

    .line 739
    .local v307, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 740
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 742
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v307

    move/from16 v2, v88

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 740
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_30
    const/16 v16, 0x0

    goto :goto_2a

    .line 748
    .end local v88    # "fl":I
    .end local v307    # "task":I
    :sswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 750
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/4 v0, 0x1

    move/16 v256, v0

    .line 751
    .local v256, "nonRoot":Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v256

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v280, v0

    .line 752
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    move/from16 v0, v280

    if-eqz v0, :cond_32

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 750
    .end local v256    # "nonRoot":Z
    .end local v280    # "res":Z
    :cond_31
    const/4 v0, 0x0

    move/16 v256, v0

    goto :goto_2b

    .line 753
    .restart local v256    # "nonRoot":Z
    .restart local v280    # "res":Z
    :cond_32
    const/4 v6, 0x0

    goto :goto_2c

    .line 758
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v256    # "nonRoot":Z
    .end local v280    # "res":Z
    :sswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v307, v0

    .line 760
    .restart local v307    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v307

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 766
    .end local v307    # "task":I
    :sswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 768
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 769
    .local v297, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    move/16 v312, v0

    .line 770
    .local v312, "toTop":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v297

    move/from16 v3, v312

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 769
    .end local v312    # "toTop":Z
    :cond_33
    const/4 v0, 0x0

    move/16 v312, v0

    goto :goto_2d

    .line 776
    .end local v297    # "stackId":I
    .end local v308    # "taskId":I
    :sswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 778
    .restart local v297    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v275, v0

    move-object/from16 v0, v275

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v275, v0

    .line 779
    .local v275, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v297

    move-object/from16 v2, v275

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 785
    .end local v275    # "r":Landroid/graphics/Rect;
    .end local v297    # "stackId":I
    :sswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v244

    .line 787
    .local v244, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move-object/from16 v1, v244

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 789
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 793
    .end local v244    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 795
    .restart local v297    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v297

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v224

    .line 796
    .local v224, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v224, :cond_34

    .line 798
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 803
    :goto_2e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 801
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 807
    .end local v224    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v297    # "stackId":I
    :sswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 809
    .restart local v308    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v308

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v230

    .line 810
    .local v230, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v230, :cond_35

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 811
    :cond_35
    const/4 v6, 0x0

    goto :goto_2f

    .line 816
    .end local v230    # "isInHomeStack":Z
    .end local v308    # "taskId":I
    :sswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 818
    .restart local v297    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v297

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 824
    .end local v297    # "stackId":I
    :sswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v219

    .line 826
    .local v219, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v0, p3

    move/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 833
    .end local v219    # "focusedStackId":I
    :sswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 835
    .restart local v297    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/4 v0, 0x1

    move/16 v304, v0

    .line 836
    .local v304, "tapOutSide":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v297

    move/from16 v2, v304

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setFocusedStack(IZ)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 835
    .end local v304    # "tapOutSide":Z
    :cond_36
    const/4 v0, 0x0

    move/16 v304, v0

    goto :goto_30

    .line 843
    .end local v297    # "stackId":I
    :sswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 845
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-static/range {v78 .. v78}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 851
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 853
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/4 v0, 0x1

    move/16 v258, v0

    .line 854
    .local v258, "onlyRoot":Z
    :goto_31
    if-eqz v78, :cond_38

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v258

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v280, v0

    .line 856
    .local v280, "res":I
    :goto_32
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 853
    .end local v258    # "onlyRoot":Z
    .end local v280    # "res":I
    :cond_37
    const/4 v0, 0x0

    move/16 v258, v0

    goto :goto_31

    .line 854
    .restart local v258    # "onlyRoot":Z
    :cond_38
    const/4 v0, -0x1

    move/16 v280, v0

    goto :goto_32

    .line 862
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v258    # "onlyRoot":Z
    :sswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 864
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 865
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 866
    .local v112, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 867
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    const/4 v0, 0x1

    move/16 v296, v0

    .line 868
    .local v296, "stable":Z
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move/from16 v2, v17

    move/from16 v3, v296

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v206

    .line 869
    .local v206, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v206, :cond_3a

    .line 871
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v6, 0x0

    move-object/from16 v0, v206

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 876
    :goto_34
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 867
    .end local v206    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v296    # "stable":Z
    :cond_39
    const/4 v0, 0x0

    move/16 v296, v0

    goto :goto_33

    .line 874
    .restart local v206    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v296    # "stable":Z
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 880
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v112    # "name":Ljava/lang/String;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v206    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v296    # "stable":Z
    :sswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 882
    .restart local v112    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 883
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 884
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move/from16 v2, v17

    move-object/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v206

    .line 885
    .restart local v206    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v206, :cond_3b

    .line 887
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    const/4 v6, 0x0

    move-object/from16 v0, v206

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    :goto_35
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 890
    :cond_3b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 896
    .end local v17    # "userId":I
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v112    # "name":Ljava/lang/String;
    .end local v206    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 898
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 899
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v273, v0

    .line 901
    .local v273, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v273

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 907
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v273    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 909
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v296, v0

    .line 910
    .local v296, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v313, v0

    .line 911
    .local v313, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move/from16 v2, v296

    move/from16 v3, v313

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v280, v0

    .line 912
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    move/from16 v0, v280

    if-eqz v0, :cond_3c

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 913
    :cond_3c
    const/4 v6, 0x0

    goto :goto_36

    .line 918
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v280    # "res":Z
    .end local v296    # "stable":I
    .end local v313    # "unstable":I
    :sswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 920
    .restart local v192    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 926
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 928
    .restart local v192    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 934
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 936
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v0, 0x1

    move/16 v296, v0

    .line 937
    .local v296, "stable":Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move/from16 v2, v296

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 936
    .end local v296    # "stable":Z
    :cond_3d
    const/4 v0, 0x0

    move/16 v296, v0

    goto :goto_37

    .line 943
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 945
    .restart local v112    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 946
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 952
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v112    # "name":Ljava/lang/String;
    :sswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/content/ComponentName;

    .line 954
    .local v202, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v267, v0

    .line 955
    .local v267, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    move-object/from16 v0, v267

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 957
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 961
    .end local v202    # "comp":Landroid/content/ComponentName;
    .end local v267    # "pi":Landroid/app/PendingIntent;
    :sswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 963
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 964
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 965
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 966
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 967
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move-object/from16 v71, v10

    move-object/from16 v72, v8

    move/from16 v73, v17

    .line 968
    invoke-virtual/range {v68 .. v73}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v201

    .line 969
    .restart local v201    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    move-object/from16 v0, v201

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 971
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 976
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v201    # "cn":Landroid/content/ComponentName;
    :sswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 978
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 979
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 980
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 981
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 982
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 983
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 984
    .local v74, "callerActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .restart local v75    # "displayId":I
    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move-object/from16 v71, v10

    move-object/from16 v72, v8

    move/from16 v73, v17

    .line 985
    invoke-virtual/range {v68 .. v75}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object v201

    .line 986
    .restart local v201    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    move-object/from16 v0, v201

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 988
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 993
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v74    # "callerActivityToken":Landroid/os/IBinder;
    .end local v75    # "displayId":I
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v201    # "cn":Landroid/content/ComponentName;
    :sswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 995
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 996
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 997
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 998
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 999
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v280, v0

    .line 1000
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v280    # "res":I
    :sswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v77

    .line 1008
    .local v77, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1009
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v298, v0

    .line 1010
    .local v298, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    move/from16 v3, v298

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v280, v0

    .line 1011
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    move/from16 v0, v280

    if-eqz v0, :cond_3e

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1012
    :cond_3e
    const/4 v6, 0x0

    goto :goto_38

    .line 1017
    .end local v77    # "className":Landroid/content/ComponentName;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    .end local v298    # "startId":I
    :sswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v77

    .line 1019
    .restart local v77    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1020
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1021
    .restart local v79    # "id":I
    const/16 v80, 0x0

    .line 1022
    .local v80, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1023
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "notification":Landroid/app/Notification;
    check-cast v80, Landroid/app/Notification;

    .line 1025
    .restart local v80    # "notification":Landroid/app/Notification;
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v81, 0x1

    .local v81, "removeNotification":Z
    :goto_39
    move-object/from16 v76, p0

    .line 1026
    invoke-virtual/range {v76 .. v81}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v81    # "removeNotification":Z
    :cond_40
    const/16 v81, 0x0

    goto :goto_39

    .line 1032
    .end local v77    # "className":Landroid/content/ComponentName;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v79    # "id":I
    .end local v80    # "notification":Landroid/app/Notification;
    :sswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1034
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1035
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1036
    .restart local v78    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1037
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1038
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1040
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1041
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1042
    .restart local v17    # "userId":I
    invoke-static/range {v192 .. v192}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v87

    .local v87, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v82, p0

    move-object/from16 v83, v7

    move-object/from16 v84, v78

    move-object/from16 v85, v70

    move-object/from16 v86, v10

    move-object/from16 v89, v8

    move/from16 v90, v17

    .line 1043
    invoke-virtual/range {v82 .. v90}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v280, v0

    .line 1045
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v87    # "conn":Landroid/app/IServiceConnection;
    .end local v88    # "fl":I
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v280    # "res":I
    :sswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1053
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v87

    .line 1054
    .restart local v87    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v280, v0

    .line 1055
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    move/from16 v0, v280

    if-eqz v0, :cond_41

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1056
    :cond_41
    const/4 v6, 0x0

    goto :goto_3a

    .line 1061
    .end local v87    # "conn":Landroid/app/IServiceConnection;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1063
    .restart local v78    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1064
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 1065
    .local v70, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v70    # "service":Landroid/os/IBinder;
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1073
    .restart local v78    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1074
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/16 v210, 0x1

    .line 1075
    .local v210, "doRebind":Z
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v210

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v210    # "doRebind":Z
    :cond_42
    const/16 v210, 0x0

    goto :goto_3b

    .line 1081
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1083
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1084
    .local v99, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v298, v0

    .line 1085
    .restart local v298    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v280, v0

    .line 1086
    .local v280, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v99

    move/from16 v3, v298

    move/from16 v4, v280

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v99    # "type":I
    .end local v280    # "res":I
    .end local v298    # "startId":I
    :sswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v77

    .line 1094
    .restart local v77    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1095
    .local v91, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1096
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v93

    .line 1097
    .local v93, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1098
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v94

    .line 1099
    .local v94, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1100
    invoke-static/range {v192 .. v192}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v95

    .line 1101
    .local v95, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1102
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v97

    .local v97, "abiOverride":Ljava/lang/String;
    move-object/from16 v89, p0

    move-object/from16 v90, v77

    move/from16 v92, v88

    move/from16 v96, v17

    .line 1103
    invoke-virtual/range {v89 .. v97}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v280, v0

    .line 1105
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    move/from16 v0, v280

    if-eqz v0, :cond_43

    const/4 v6, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1106
    :cond_43
    const/4 v6, 0x0

    goto :goto_3c

    .line 1112
    .end local v17    # "userId":I
    .end local v77    # "className":Landroid/content/ComponentName;
    .end local v88    # "fl":I
    .end local v91    # "profileFile":Ljava/lang/String;
    .end local v93    # "arguments":Landroid/os/Bundle;
    .end local v94    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v95    # "c":Landroid/app/IUiAutomationConnection;
    .end local v97    # "abiOverride":Ljava/lang/String;
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1114
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1115
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1116
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v284, v0

    .line 1117
    .local v284, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v284

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1123
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v284    # "results":Landroid/os/Bundle;
    :sswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1125
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1127
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1131
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1133
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1140
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_44

    const/4 v0, 0x0

    move/16 v316, v0

    .line 1142
    .local v316, "value":Z
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v316

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->multiWindowSettingChanged(Z)V

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1141
    .end local v316    # "value":Z
    :cond_44
    const/4 v0, 0x1

    move/16 v316, v0

    goto :goto_3d

    .line 1148
    :sswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1150
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyMinimizeMultiWindow(Landroid/os/IBinder;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1156
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->notifyDisplayFreezeStopped()V

    .line 1158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1163
    :sswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 1165
    .restart local v297    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v195

    check-cast v195, Landroid/graphics/Rect;

    .line 1166
    .local v195, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v297

    move-object/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCascadeStackRotated(ILandroid/graphics/Rect;)V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1173
    .end local v195    # "bounds":Landroid/graphics/Rect;
    .end local v297    # "stackId":I
    :sswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1175
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v279, v0

    .line 1176
    .local v279, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v279

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v279    # "requestedOrientation":I
    :sswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1184
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v278, v0

    .line 1185
    .local v278, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move-object/from16 v0, p3

    move/from16 v1, v278

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1191
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v278    # "req":I
    :sswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1193
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v201

    .line 1194
    .restart local v201    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    move-object/from16 v0, v201

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1196
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v201    # "cn":Landroid/content/ComponentName;
    :sswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1202
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1204
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1210
    .local v116, "pid":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v116    # "pid":I
    :sswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1218
    .restart local v99    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1219
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1220
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1221
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1224
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    .line 1225
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v104

    check-cast v104, [Landroid/content/Intent;

    .line 1226
    .local v104, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v105

    .line 1231
    .local v105, "requestResolvedTypes":[Ljava/lang/String;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1232
    .restart local v88    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1234
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v98, p0

    move-object/from16 v100, v32

    move-object/from16 v101, v78

    move-object/from16 v102, v12

    move/from16 v103, v13

    move/from16 v106, v88

    move-object/from16 v107, v16

    move/from16 v108, v17

    .line 1235
    invoke-virtual/range {v98 .. v108}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v280, v0

    .line 1238
    .local v280, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v0, v280

    if-eqz v0, :cond_47

    invoke-interface/range {v280 .. v280}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1240
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1228
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v88    # "fl":I
    .end local v104    # "requestIntents":[Landroid/content/Intent;
    .end local v105    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v280    # "res":Landroid/content/IIntentSender;
    :cond_45
    const/16 v104, 0x0

    .line 1229
    .restart local v104    # "requestIntents":[Landroid/content/Intent;
    const/16 v105, 0x0

    .restart local v105    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3e

    .line 1232
    .restart local v88    # "fl":I
    :cond_46
    const/16 v16, 0x0

    goto :goto_3f

    .line 1239
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v280    # "res":Landroid/content/IIntentSender;
    :cond_47
    const/4 v6, 0x0

    goto :goto_40

    .line 1244
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v88    # "fl":I
    .end local v99    # "type":I
    .end local v104    # "requestIntents":[Landroid/content/Intent;
    .end local v105    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v280    # "res":Landroid/content/IIntentSender;
    :sswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 1247
    .local v275, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1254
    .end local v275    # "r":Landroid/content/IIntentSender;
    :sswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 1257
    .restart local v275    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1258
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    move-object/16 v302, v0

    .line 1259
    .local v302, "t":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    move-object/from16 v2, v32

    move-object/from16 v3, v302

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grabIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;[J)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v280, v0

    .line 1260
    .restart local v280    # "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    move-object/from16 v0, v280

    if-eqz v0, :cond_48

    invoke-interface/range {v280 .. v280}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1262
    move-object/from16 v0, p3

    move-object/from16 v1, v302

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1263
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1261
    :cond_48
    const/4 v6, 0x0

    goto :goto_41

    .line 1267
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":Landroid/content/IIntentSender;
    .end local v302    # "t":[J
    :sswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getGrabedIntentSenders()Ljava/util/Map;

    move-result-object v0

    move-object/16 v280, v0

    .line 1269
    .local v280, "res":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1271
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1276
    .end local v280    # "res":Ljava/util/Map;
    :sswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 1279
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v280, v0

    .line 1280
    .local v280, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1282
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":Ljava/lang/String;
    :sswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 1289
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v280, v0

    .line 1290
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1297
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":I
    :sswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 1300
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v280, v0

    .line 1301
    .restart local v280    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":I
    :sswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1310
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1311
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1312
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v110, 0x1

    .line 1313
    .local v110, "allowAll":Z
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v111, 0x1

    .line 1314
    .local v111, "requireFull":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 1315
    .restart local v112    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .local v113, "callerPackage":Ljava/lang/String;
    move-object/from16 v106, p0

    move/from16 v107, v42

    move/from16 v108, v43

    move/from16 v109, v17

    .line 1316
    invoke-virtual/range {v106 .. v113}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v280, v0

    .line 1318
    .restart local v280    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v110    # "allowAll":Z
    .end local v111    # "requireFull":Z
    .end local v112    # "name":Ljava/lang/String;
    .end local v113    # "callerPackage":Ljava/lang/String;
    .end local v280    # "res":I
    :cond_49
    const/16 v110, 0x0

    goto :goto_42

    .line 1313
    .restart local v110    # "allowAll":Z
    :cond_4a
    const/16 v111, 0x0

    goto :goto_43

    .line 1324
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v110    # "allowAll":Z
    :sswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v250

    .line 1326
    .local v250, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v250    # "max":I
    :sswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v238

    .line 1334
    .local v238, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    move-object/from16 v0, p3

    move/from16 v1, v238

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1340
    .end local v238    # "limit":I
    :sswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1342
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1343
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v229, 0x1

    .line 1344
    .local v229, "isForeground":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v116

    move/from16 v3, v229

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1343
    .end local v229    # "isForeground":Z
    :cond_4b
    const/16 v229, 0x0

    goto :goto_44

    .line 1350
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v116    # "pid":I
    :sswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1352
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1353
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v229, 0x1

    .line 1354
    .restart local v229    # "isForeground":Z
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v227, 0x1

    .line 1355
    .local v227, "isCalledByNotificationManagerService":Z
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v116

    move/from16 v3, v229

    move/from16 v4, v227

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZZ)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v227    # "isCalledByNotificationManagerService":Z
    .end local v229    # "isForeground":Z
    :cond_4c
    const/16 v229, 0x0

    goto :goto_45

    .line 1354
    .restart local v229    # "isForeground":Z
    :cond_4d
    const/16 v227, 0x0

    goto :goto_46

    .line 1361
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v116    # "pid":I
    .end local v229    # "isForeground":Z
    :sswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1363
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1364
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1365
    .local v117, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v116

    move/from16 v3, v117

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v280, v0

    .line 1366
    .restart local v280    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v35    # "perm":Ljava/lang/String;
    .end local v116    # "pid":I
    .end local v117    # "uid":I
    .end local v280    # "res":I
    :sswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1374
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1375
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1376
    .restart local v117    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1377
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v116

    move/from16 v3, v117

    move-object/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v280, v0

    .line 1378
    .restart local v280    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1384
    .end local v35    # "perm":Ljava/lang/String;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v116    # "pid":I
    .end local v117    # "uid":I
    .end local v280    # "res":I
    :sswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 1386
    .local v115, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1387
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1388
    .restart local v117    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1389
    .local v118, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1390
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .local v120, "callerToken":Landroid/os/IBinder;
    move-object/from16 v114, p0

    move/from16 v119, v17

    .line 1391
    invoke-virtual/range {v114 .. v120}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v280, v0

    .line 1392
    .restart local v280    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v116    # "pid":I
    .end local v117    # "uid":I
    .end local v118    # "mode":I
    .end local v120    # "callerToken":Landroid/os/IBinder;
    .end local v280    # "res":I
    :sswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1400
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 1402
    .local v257, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1403
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v257

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v280, v0

    .line 1404
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    move/from16 v0, v280

    if-eqz v0, :cond_4e

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1405
    :cond_4e
    const/4 v6, 0x0

    goto :goto_47

    .line 1410
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v257    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v280    # "res":Z
    :sswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1412
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1413
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 1414
    .local v123, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 1415
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1416
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v121, p0

    move-object/from16 v122, v7

    move-object/from16 v124, v115

    move/from16 v125, v118

    move/from16 v126, v17

    .line 1417
    invoke-virtual/range {v121 .. v126}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1423
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    .end local v123    # "targetPkg":Ljava/lang/String;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1425
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1426
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 1427
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1428
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1429
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move/from16 v2, v118

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1435
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 1437
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1438
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1439
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move/from16 v2, v118

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    :sswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 1447
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1448
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1449
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move/from16 v2, v118

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    :sswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1457
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v223, 0x1

    .line 1458
    .local v223, "incoming":Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v223

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v264, v0

    .line 1460
    .local v264, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    const/4 v6, 0x1

    move-object/from16 v0, v264

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1462
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v223    # "incoming":Z
    .end local v264    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_4f
    const/16 v223, 0x0

    goto :goto_48

    .line 1466
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 1468
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1469
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x1

    move/16 v320, v0

    .line 1470
    .local v320, "waiting":Z
    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v320

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1469
    .end local v320    # "waiting":Z
    :cond_50
    const/4 v0, 0x0

    move/16 v320, v0

    goto :goto_49

    .line 1476
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    new-instance v253, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v253 .. v253}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1478
    .local v253, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v253

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    const/4 v6, 0x0

    move-object/from16 v0, v253

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1481
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v253    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1492
    :sswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v115

    .line 1494
    .restart local v115    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v266, v0

    .line 1495
    .local v266, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    move-object/from16 v0, v266

    if-eqz v0, :cond_51

    .line 1497
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    const/4 v6, 0x1

    move-object/from16 v0, v266

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1502
    :goto_4a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1500
    :cond_51
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 1506
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v266    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1507
    :cond_52
    const/4 v6, 0x0

    goto :goto_4b

    .line 1513
    :sswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v270, v0

    .line 1515
    .local v270, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/4 v0, 0x1

    move/16 v322, v0

    .line 1516
    .local v322, "wfd":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v0, 0x1

    move/16 v263, v0

    .line 1517
    .local v263, "per":Z
    :goto_4d
    move-object/from16 v0, p0

    move-object/from16 v1, v270

    move/from16 v2, v322

    move/from16 v3, v263

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1515
    .end local v263    # "per":Z
    .end local v322    # "wfd":Z
    :cond_53
    const/4 v0, 0x0

    move/16 v322, v0

    goto :goto_4c

    .line 1516
    .restart local v322    # "wfd":Z
    :cond_54
    const/4 v0, 0x0

    move/16 v263, v0

    goto :goto_4d

    .line 1523
    .end local v270    # "pn":Ljava/lang/String;
    .end local v322    # "wfd":Z
    :sswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v212, 0x1

    .line 1525
    .local v212, "enabled":Z
    :goto_4e
    move-object/from16 v0, p0

    move/from16 v1, v212

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1524
    .end local v212    # "enabled":Z
    :cond_55
    const/16 v212, 0x0

    goto :goto_4e

    .line 1531
    :sswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v321, v0

    .line 1534
    .local v321, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1540
    .end local v321    # "watcher":Landroid/app/IActivityController;
    :sswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1547
    :sswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v226

    .line 1550
    .local v226, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1551
    .local v295, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v294, v0

    .line 1552
    .local v294, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v303, v0

    .line 1553
    .local v303, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v226

    move/from16 v2, v295

    move-object/from16 v3, v294

    move-object/from16 v4, v303

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1559
    .end local v226    # "is":Landroid/content/IIntentSender;
    .end local v294    # "sourcePkg":Ljava/lang/String;
    .end local v295    # "sourceUid":I
    .end local v303    # "tag":Ljava/lang/String;
    :sswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v226

    .line 1562
    .restart local v226    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1563
    .restart local v295    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v303, v0

    .line 1564
    .restart local v303    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v226

    move/from16 v2, v295

    move-object/from16 v3, v303

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1570
    .end local v226    # "is":Landroid/content/IIntentSender;
    .end local v295    # "sourceUid":I
    .end local v303    # "tag":Ljava/lang/String;
    :sswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v226

    .line 1573
    .restart local v226    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1574
    .restart local v295    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v303, v0

    .line 1575
    .restart local v303    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v226

    move/from16 v2, v295

    move-object/from16 v3, v303

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1581
    .end local v226    # "is":Landroid/content/IIntentSender;
    .end local v295    # "sourceUid":I
    .end local v303    # "tag":Ljava/lang/String;
    :sswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v268, v0

    .line 1583
    .local v268, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 1584
    .local v276, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/4 v0, 0x1

    move/16 v287, v0

    .line 1585
    .local v287, "secure":Z
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v268

    move-object/from16 v2, v276

    move/from16 v3, v287

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v280, v0

    .line 1586
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    move/from16 v0, v280

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1584
    .end local v280    # "res":Z
    .end local v287    # "secure":Z
    :cond_56
    const/4 v0, 0x0

    move/16 v287, v0

    goto :goto_4f

    .line 1587
    .restart local v280    # "res":Z
    .restart local v287    # "secure":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_50

    .line 1592
    .end local v268    # "pids":[I
    .end local v276    # "reason":Ljava/lang/String;
    .end local v280    # "res":Z
    .end local v287    # "secure":Z
    :sswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 1594
    .restart local v276    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v280, v0

    .line 1595
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    move/from16 v0, v280

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1596
    :cond_58
    const/4 v6, 0x0

    goto :goto_51

    .line 1601
    .end local v276    # "reason":Ljava/lang/String;
    .end local v280    # "res":Z
    :sswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1603
    .local v7, "app":Landroid/os/IBinder;
    new-instance v200, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v200

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1604
    .local v200, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v200

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1610
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v200    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1612
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v303, v0

    .line 1613
    .restart local v303    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    const/4 v0, 0x1

    move/16 v301, v0

    .line 1614
    .local v301, "system":Z
    :goto_52
    new-instance v200, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v200

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1615
    .restart local v200    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    move/from16 v2, v301

    move-object/from16 v3, v200

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v280, v0

    .line 1616
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    move/from16 v0, v280

    if-eqz v0, :cond_5a

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1613
    .end local v200    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v280    # "res":Z
    .end local v301    # "system":Z
    :cond_59
    const/4 v0, 0x0

    move/16 v301, v0

    goto :goto_52

    .line 1617
    .restart local v200    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v280    # "res":Z
    .restart local v301    # "system":Z
    :cond_5a
    const/4 v6, 0x0

    goto :goto_53

    .line 1622
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v200    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v280    # "res":Z
    .end local v301    # "system":Z
    .end local v303    # "tag":Ljava/lang/String;
    :sswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1624
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v319, v0

    .line 1625
    .local v319, "violationMask":I
    new-instance v224, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v224

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1626
    .local v224, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v319

    move-object/from16 v2, v224

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1632
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v224    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v319    # "violationMask":I
    :sswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v289, v0

    .line 1634
    .local v289, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1640
    .end local v289    # "sig":I
    :sswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1642
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1643
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1649
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1656
    :sswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1658
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1659
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1666
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1668
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1669
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackageByAdmin(Ljava/lang/String;I)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v125

    .line 1678
    .local v125, "srcPkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v126

    .line 1679
    .local v126, "srcUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1680
    .local v127, "destPkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 1681
    .local v128, "destUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .local v129, "methodMessage":Ljava/lang/String;
    move-object/from16 v124, p0

    .line 1682
    invoke-virtual/range {v124 .. v129}, Landroid/app/ActivityManagerNative;->checkKnoxPermission(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/16 v280, v0

    .line 1683
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    move/from16 v0, v280

    if-eqz v0, :cond_5b

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1684
    :cond_5b
    const/4 v6, 0x0

    goto :goto_54

    .line 1689
    .end local v125    # "srcPkgName":Ljava/lang/String;
    .end local v126    # "srcUid":I
    .end local v127    # "destPkgName":Ljava/lang/String;
    .end local v128    # "destUid":I
    .end local v129    # "methodMessage":Ljava/lang/String;
    .end local v280    # "res":Z
    :sswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1691
    .local v131, "srcPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v126

    .line 1692
    .restart local v126    # "srcUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1693
    .restart local v127    # "destPkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 1694
    .restart local v128    # "destUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .restart local v129    # "methodMessage":Ljava/lang/String;
    move-object/from16 v130, p0

    move/from16 v132, v126

    move-object/from16 v133, v127

    move/from16 v134, v128

    move-object/from16 v135, v129

    .line 1695
    invoke-virtual/range {v130 .. v135}, Landroid/app/ActivityManagerNative;->checkKnoxPermission(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/16 v280, v0

    .line 1696
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    move/from16 v0, v280

    if-eqz v0, :cond_5c

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1697
    :cond_5c
    const/4 v6, 0x0

    goto :goto_55

    .line 1704
    .end local v126    # "srcUid":I
    .end local v127    # "destPkgName":Ljava/lang/String;
    .end local v128    # "destUid":I
    .end local v129    # "methodMessage":Ljava/lang/String;
    .end local v131    # "srcPid":I
    .end local v280    # "res":Z
    :sswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1706
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1707
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unFreezeApp(Ljava/lang/String;I)V

    .line 1708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1715
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    move-object/16 v292, v0

    invoke-direct/range {v292 .. v292}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v292, "smPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1719
    move-object/from16 v0, p0

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getSMpkgsList(Ljava/util/List;)V

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1727
    .end local v292    # "smPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1729
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAutoRunBlockedApp(Ljava/lang/String;)Z

    move-result v191

    .line 1730
    .local v191, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    if-eqz v191, :cond_5d

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1731
    :cond_5d
    const/4 v6, 0x0

    goto :goto_56

    .line 1738
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v191    # "ask":Z
    :sswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    new-instance v224, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v224 .. v224}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1741
    .local v224, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1744
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1748
    .end local v224    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v39

    .line 1750
    .local v39, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1752
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1756
    .end local v39    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 1758
    .local v133, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1759
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5e

    const/16 v135, 0x1

    .line 1760
    .local v135, "start":Z
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1761
    .local v137, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_58
    move-object/from16 v132, p0

    move/from16 v134, v17

    move-object/from16 v136, v15

    .line 1763
    invoke-virtual/range {v132 .. v137}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v280, v0

    .line 1764
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    move/from16 v0, v280

    if-eqz v0, :cond_60

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1759
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v135    # "start":Z
    .end local v137    # "profileType":I
    .end local v280    # "res":Z
    :cond_5e
    const/16 v135, 0x0

    goto :goto_57

    .line 1761
    .restart local v135    # "start":Z
    .restart local v137    # "profileType":I
    :cond_5f
    const/4 v15, 0x0

    goto :goto_58

    .line 1765
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v280    # "res":Z
    :cond_60
    const/4 v6, 0x0

    goto :goto_59

    .line 1770
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v133    # "process":Ljava/lang/String;
    .end local v135    # "start":Z
    .end local v137    # "profileType":I
    .end local v280    # "res":Z
    :sswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v280, v0

    .line 1772
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    move/from16 v0, v280

    if-eqz v0, :cond_61

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1773
    :cond_61
    const/4 v6, 0x0

    goto :goto_5a

    .line 1779
    .end local v280    # "res":Z
    :sswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 1781
    .local v269, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeDeletedPkgsFromLru(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1786
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v283, v0

    .line 1788
    .restart local v283    # "result":I
    const/4 v0, 0x0

    move/16 v293, v0

    .line 1789
    .local v293, "snnEnable":Z
    const/4 v6, 0x1

    move/from16 v0, v283

    if-ne v0, v6, :cond_62

    .line 1790
    const/4 v0, 0x1

    move/16 v293, v0

    .line 1791
    :cond_62
    move-object/from16 v0, p0

    move/from16 v1, v293

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setSNNEnable(Z)V

    .line 1792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1797
    .end local v283    # "result":I
    .end local v293    # "snnEnable":Z
    :sswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isSNNEnable()I

    move-result v232

    .line 1799
    .local v232, "isSNNEnable":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1807
    .end local v232    # "isSNNEnable":I
    :sswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1808
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDumpMemoryInfo()Ljava/util/ArrayList;

    move-result-object v174

    .line 1809
    .local v174, "MemDumpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/MemDumpInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    move-object/from16 v0, p3

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1811
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1815
    .end local v174    # "MemDumpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/MemDumpInfo;>;"
    :sswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1822
    :sswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1829
    :sswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1831
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1832
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1833
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v194

    .line 1834
    .local v194, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    move-object/from16 v0, p3

    move-object/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1836
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1840
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v70    # "service":Landroid/content/Intent;
    .end local v194    # "binder":Landroid/os/IBinder;
    :sswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1842
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v193

    .line 1843
    .local v193, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1844
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v193

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v300, v0

    .line 1845
    .local v300, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    move/from16 v0, v300

    if-eqz v0, :cond_63

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1846
    :cond_63
    const/4 v6, 0x0

    goto :goto_5b

    .line 1851
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v193    # "backupRestoreMode":I
    .end local v300    # "success":Z
    :sswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1853
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v185

    .line 1854
    .local v185, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1860
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v185    # "agent":Landroid/os/IBinder;
    :sswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v224

    check-cast v224, Landroid/content/pm/ApplicationInfo;

    .line 1862
    .local v224, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1864
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1868
    .end local v224    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1870
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 1878
    .restart local v269    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 1879
    .local v189, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 1880
    .restart local v276    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    move/from16 v2, v189

    move-object/from16 v3, v276

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1886
    .end local v189    # "appid":I
    .end local v269    # "pkg":Ljava/lang/String;
    .end local v276    # "reason":Ljava/lang/String;
    :sswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 1888
    .restart local v276    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1894
    .end local v276    # "reason":Ljava/lang/String;
    :sswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v268, v0

    .line 1896
    .restart local v268    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v268

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v280, v0

    .line 1897
    .local v280, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1899
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v268    # "pids":[I
    .end local v280    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v272, v0

    .line 1905
    .local v272, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1906
    .restart local v117    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v272

    move/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1912
    .end local v117    # "uid":I
    .end local v272    # "processName":Ljava/lang/String;
    :sswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1914
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1915
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 1916
    .local v213, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1917
    .local v214, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v32

    move/from16 v3, v213

    move/from16 v4, v214

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1923
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v213    # "enterAnim":I
    .end local v214    # "exitAnim":I
    :sswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v190

    .line 1925
    .local v190, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1926
    if-eqz v190, :cond_64

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1926
    :cond_64
    const/4 v6, 0x0

    goto :goto_5c

    .line 1931
    .end local v190    # "areThey":Z
    :sswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_65

    const/16 v254, 0x1

    .line 1933
    .local v254, "monkey":Z
    :goto_5d
    move-object/from16 v0, p0

    move/from16 v1, v254

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1932
    .end local v254    # "monkey":Z
    :cond_65
    const/16 v254, 0x0

    goto :goto_5d

    .line 1939
    :sswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1946
    :sswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1948
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v234

    .line 1949
    .local v234, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    if-eqz v234, :cond_66

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1950
    :cond_66
    const/4 v6, 0x0

    goto :goto_5e

    .line 1955
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v234    # "isit":Z
    :sswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1957
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v233

    .line 1958
    .local v233, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    if-eqz v233, :cond_67

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1959
    :cond_67
    const/4 v6, 0x0

    goto :goto_5f

    .line 1964
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v233    # "isTopOfTask":Z
    :sswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1966
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v205

    .line 1967
    .local v205, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    if-eqz v205, :cond_68

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1968
    :cond_68
    const/4 v6, 0x0

    goto :goto_60

    .line 1974
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v205    # "converted":Z
    :sswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1976
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_69

    const/4 v0, 0x1

    move/16 v291, v0

    .line 1977
    .local v291, "skip":Z
    :goto_61
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v291

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;Z)Z

    move-result v205

    .line 1978
    .restart local v205    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    if-eqz v205, :cond_6a

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1976
    .end local v205    # "converted":Z
    .end local v291    # "skip":Z
    :cond_69
    const/4 v0, 0x0

    move/16 v291, v0

    goto :goto_61

    .line 1979
    .restart local v205    # "converted":Z
    .restart local v291    # "skip":Z
    :cond_6a
    const/4 v6, 0x0

    goto :goto_62

    .line 1985
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v205    # "converted":Z
    .end local v291    # "skip":Z
    :sswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 1988
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_6b

    .line 1989
    const/16 v196, 0x0

    .line 1993
    .local v196, "bundle":Landroid/os/Bundle;
    :goto_63
    if-nez v196, :cond_6c

    const/16 v16, 0x0

    .line 1994
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_64
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v205

    .line 1995
    .restart local v205    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    if-eqz v205, :cond_6d

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1991
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v196    # "bundle":Landroid/os/Bundle;
    .end local v205    # "converted":Z
    :cond_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v196

    .restart local v196    # "bundle":Landroid/os/Bundle;
    goto :goto_63

    .line 1993
    :cond_6c
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_64

    .line 1996
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v205    # "converted":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_65

    .line 2001
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v196    # "bundle":Landroid/os/Bundle;
    .end local v205    # "converted":Z
    :sswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2003
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 2004
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    if-nez v16, :cond_6e

    const/4 v6, 0x0

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2006
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2005
    :cond_6e
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_66

    .line 2010
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2012
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_6f

    const/16 v222, 0x1

    .line 2013
    .local v222, "imm":Z
    :goto_67
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v222

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 2014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2012
    .end local v222    # "imm":Z
    :cond_6f
    const/16 v222, 0x0

    goto :goto_67

    .line 2019
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v234

    .line 2021
    .restart local v234    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    if-eqz v234, :cond_70

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2022
    :cond_70
    const/4 v6, 0x0

    goto :goto_68

    .line 2027
    .end local v234    # "isit":Z
    :sswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 2029
    .restart local v117    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v225

    .line 2030
    .local v225, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2031
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v252

    .line 2032
    .local v252, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v117

    move/from16 v2, v225

    move-object/from16 v3, v32

    move-object/from16 v4, v252

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 2033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2038
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v117    # "uid":I
    .end local v225    # "initialPid":I
    .end local v252    # "message":Ljava/lang/String;
    :sswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 2040
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2041
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v99

    .line 2042
    .local v99, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2044
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2048
    .end local v17    # "userId":I
    .end local v99    # "type":Ljava/lang/String;
    .end local v115    # "uri":Landroid/net/Uri;
    :sswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 2050
    .restart local v112    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 2051
    .local v35, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2053
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2057
    .end local v35    # "perm":Landroid/os/IBinder;
    .end local v112    # "name":Ljava/lang/String;
    :sswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v139

    .line 2059
    .local v139, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 2060
    .local v140, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 2061
    .restart local v123    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 2062
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 2063
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 2064
    .local v144, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v145

    .local v145, "targetUserId":I
    move-object/from16 v138, p0

    move-object/from16 v141, v123

    move-object/from16 v142, v115

    move/from16 v143, v118

    .line 2065
    invoke-virtual/range {v138 .. v145}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 2067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2068
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2072
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    .end local v123    # "targetPkg":Ljava/lang/String;
    .end local v139    # "owner":Landroid/os/IBinder;
    .end local v140    # "fromUid":I
    .end local v144    # "sourceUserId":I
    .end local v145    # "targetUserId":I
    :sswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v139

    .line 2074
    .restart local v139    # "owner":Landroid/os/IBinder;
    const/16 v115, 0x0

    .line 2075
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    .line 2076
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    .end local v115    # "uri":Landroid/net/Uri;
    check-cast v115, Landroid/net/Uri;

    .line 2078
    .restart local v115    # "uri":Landroid/net/Uri;
    :cond_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 2079
    .restart local v118    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2080
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move-object/from16 v2, v115

    move/from16 v3, v118

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2086
    .end local v17    # "userId":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v118    # "mode":I
    .end local v139    # "owner":Landroid/os/IBinder;
    :sswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2088
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 2089
    .restart local v123    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/net/Uri;

    .line 2090
    .restart local v115    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 2091
    .local v150, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v146, p0

    move/from16 v147, v43

    move-object/from16 v148, v123

    move-object/from16 v149, v115

    move/from16 v151, v17

    .line 2092
    invoke-virtual/range {v146 .. v151}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v280, v0

    .line 2093
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2099
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v115    # "uri":Landroid/net/Uri;
    .end local v123    # "targetPkg":Ljava/lang/String;
    .end local v150    # "modeFlags":I
    .end local v280    # "res":I
    :sswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 2101
    .restart local v133    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2102
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/16 v154, 0x1

    .line 2103
    .local v154, "managed":Z
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 2104
    .local v155, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v156, v6

    .local v156, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_6a
    move-object/from16 v151, p0

    move-object/from16 v152, v133

    move/from16 v153, v17

    .line 2106
    invoke-virtual/range {v151 .. v156}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v280, v0

    .line 2107
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    move/from16 v0, v280

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2102
    .end local v154    # "managed":Z
    .end local v155    # "path":Ljava/lang/String;
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v280    # "res":Z
    :cond_72
    const/16 v154, 0x0

    goto :goto_69

    .line 2104
    .restart local v154    # "managed":Z
    .restart local v155    # "path":Ljava/lang/String;
    :cond_73
    const/16 v156, 0x0

    goto :goto_6a

    .line 2108
    .restart local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v280    # "res":Z
    :cond_74
    const/4 v6, 0x0

    goto :goto_6b

    .line 2114
    .end local v17    # "userId":I
    .end local v133    # "process":Ljava/lang/String;
    .end local v154    # "managed":Z
    .end local v155    # "path":Ljava/lang/String;
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v280    # "res":Z
    :sswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 2116
    .restart local v192    # "b":Landroid/os/IBinder;
    invoke-static/range {v192 .. v192}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2117
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2118
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v160

    check-cast v160, [Landroid/content/Intent;

    .line 2119
    .local v160, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v161

    .line 2120
    .local v161, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2121
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 2123
    .local v16, "options":Landroid/os/Bundle;
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v157, p0

    move-object/from16 v158, v7

    move-object/from16 v159, v8

    move-object/from16 v162, v11

    move-object/from16 v163, v16

    move/from16 v164, v17

    .line 2124
    invoke-virtual/range {v157 .. v164}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v283, v0

    .line 2126
    .restart local v283    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2121
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v283    # "result":I
    :cond_75
    const/16 v16, 0x0

    goto :goto_6c

    .line 2133
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v160    # "intents":[Landroid/content/Intent;
    .end local v161    # "resolvedTypes":[Ljava/lang/String;
    .end local v192    # "b":Landroid/os/IBinder;
    :sswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v118

    .line 2135
    .restart local v118    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2136
    move-object/from16 v0, p3

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2142
    .end local v118    # "mode":I
    :sswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 2144
    .restart local v118    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 2145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2146
    move-object/from16 v0, p3

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2152
    .end local v118    # "mode":I
    :sswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 2154
    .restart local v269    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v118

    .line 2155
    .restart local v118    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    move-object/from16 v0, p3

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2162
    .end local v118    # "mode":I
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 2164
    .restart local v269    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 2165
    .restart local v118    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    move/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2171
    .end local v118    # "mode":I
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v315, v0

    .line 2173
    .local v315, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v283, v0

    .line 2174
    .local v283, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    move/from16 v0, v283

    if-eqz v0, :cond_76

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2175
    :cond_76
    const/4 v6, 0x0

    goto :goto_6d

    .line 2180
    .end local v283    # "result":Z
    .end local v315    # "userid":I
    :sswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v315, v0

    .line 2182
    .restart local v315    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v283, v0

    .line 2183
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    move/from16 v0, v283

    if-eqz v0, :cond_77

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2184
    :cond_77
    const/4 v6, 0x0

    goto :goto_6e

    .line 2189
    .end local v283    # "result":Z
    .end local v315    # "userid":I
    :sswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v315, v0

    .line 2191
    .restart local v315    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v197

    .line 2193
    .local v197, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v315

    move-object/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v283, v0

    .line 2194
    .local v283, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2196
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2200
    .end local v197    # "callback":Landroid/app/IStopUserCallback;
    .end local v283    # "result":I
    .end local v315    # "userid":I
    :sswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2201
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v314, v0

    .line 2202
    .local v314, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2203
    const/4 v6, 0x0

    move-object/from16 v0, v314

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2204
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2208
    .end local v314    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v315, v0

    .line 2210
    .restart local v315    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_78

    const/4 v0, 0x1

    move/16 v259, v0

    .line 2211
    .local v259, "orStopping":Z
    :goto_6f
    move-object/from16 v0, p0

    move/from16 v1, v315

    move/from16 v2, v259

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v0

    move/16 v283, v0

    .line 2212
    .local v283, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    move/from16 v0, v283

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2210
    .end local v259    # "orStopping":Z
    .end local v283    # "result":Z
    :cond_78
    const/4 v0, 0x0

    move/16 v259, v0

    goto :goto_6f

    .line 2213
    .restart local v259    # "orStopping":Z
    .restart local v283    # "result":Z
    :cond_79
    const/4 v6, 0x0

    goto :goto_70

    .line 2218
    .end local v259    # "orStopping":Z
    .end local v283    # "result":Z
    .end local v315    # "userid":I
    :sswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v283, v0

    .line 2220
    .local v283, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    move-object/from16 v0, p3

    move-object/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2222
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2227
    .end local v283    # "result":[I
    :sswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 2229
    .restart local v308    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v308

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v283, v0

    .line 2230
    .local v283, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    move/from16 v0, v283

    if-eqz v0, :cond_7a

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2231
    :cond_7a
    const/4 v6, 0x0

    goto :goto_71

    .line 2238
    .end local v283    # "result":Z
    .end local v308    # "taskId":I
    :sswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 2240
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v218

    .line 2241
    .local v218, "flgs":I
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v0

    move/16 v283, v0

    .line 2242
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    move/from16 v0, v283

    if-eqz v0, :cond_7b

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2244
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2243
    :cond_7b
    const/4 v6, 0x0

    goto :goto_72

    .line 2249
    .end local v218    # "flgs":I
    .end local v283    # "result":Z
    .end local v308    # "taskId":I
    :sswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2252
    .local v257, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2253
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2257
    .end local v257    # "observer":Landroid/app/IProcessObserver;
    :sswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2260
    .restart local v257    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2261
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2265
    .end local v257    # "observer":Landroid/app/IProcessObserver;
    :sswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2268
    .local v257, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 2269
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2273
    .end local v257    # "observer":Landroid/app/IUidObserver;
    :sswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2276
    .restart local v257    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2277
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2282
    .end local v257    # "observer":Landroid/app/IUidObserver;
    :sswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 2284
    .restart local v269    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v191

    .line 2285
    .restart local v191    # "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    if-eqz v191, :cond_7c

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2287
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2286
    :cond_7c
    const/4 v6, 0x0

    goto :goto_73

    .line 2292
    .end local v191    # "ask":Z
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 2294
    .restart local v269    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    const/16 v191, 0x1

    .line 2295
    .restart local v191    # "ask":Z
    :goto_74
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    move/from16 v2, v191

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2294
    .end local v191    # "ask":Z
    :cond_7d
    const/16 v191, 0x0

    goto :goto_74

    .line 2301
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 2304
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v280, v0

    .line 2305
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    move/from16 v0, v280

    if-eqz v0, :cond_7e

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2307
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2306
    :cond_7e
    const/4 v6, 0x0

    goto :goto_75

    .line 2311
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":Z
    :sswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 2314
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v280, v0

    .line 2315
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    move/from16 v0, v280

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2316
    :cond_7f
    const/4 v6, 0x0

    goto :goto_76

    .line 2321
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v280    # "res":Z
    :sswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 2324
    .restart local v275    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2325
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    if-eqz v9, :cond_80

    .line 2327
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2332
    :goto_77
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2330
    :cond_80
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_77

    .line 2336
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v275    # "r":Landroid/content/IIntentSender;
    :sswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v275, v0

    .line 2339
    .restart local v275    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v271, v0

    .line 2340
    .local v271, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v275

    move-object/from16 v2, v271

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v303, v0

    .line 2341
    .restart local v303    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    move-object/from16 v0, p3

    move-object/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2343
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2347
    .end local v271    # "prefix":Ljava/lang/String;
    .end local v275    # "r":Landroid/content/IIntentSender;
    .end local v303    # "tag":Ljava/lang/String;
    :sswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2348
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2349
    .local v39, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2351
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2355
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v268, v0

    .line 2357
    .restart local v268    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v268

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v274, v0

    .line 2358
    .local v274, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    move-object/from16 v0, p3

    move-object/from16 v1, v274

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2360
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2364
    .end local v268    # "pids":[I
    .end local v274    # "pss":[J
    :sswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v255

    check-cast v255, Ljava/lang/CharSequence;

    .line 2366
    .local v255, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    const/16 v187, 0x1

    .line 2367
    .local v187, "always":Z
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v255

    move/from16 v2, v187

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2369
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2366
    .end local v187    # "always":Z
    :cond_81
    const/16 v187, 0x0

    goto :goto_78

    .line 2373
    .end local v255    # "msg":Ljava/lang/CharSequence;
    :sswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2374
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2376
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2380
    :sswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/4 v6, 0x1

    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_83

    const/16 v18, 0x1

    :goto_7a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZ)V

    .line 2382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2383
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2381
    :cond_82
    const/4 v6, 0x0

    goto :goto_79

    :cond_83
    const/16 v18, 0x0

    goto :goto_7a

    .line 2388
    :sswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v305, v0

    move-object/from16 v0, v305

    check-cast v0, Landroid/content/Intent;

    move-object/16 v305, v0

    .line 2390
    .local v305, "target":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    .line 2391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2397
    .end local v305    # "target":Landroid/content/Intent;
    :sswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2399
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v209

    .line 2400
    .local v209, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v280, v0

    .line 2401
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    move/from16 v0, v280

    if-eqz v0, :cond_84

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2402
    :cond_84
    const/4 v6, 0x0

    goto :goto_7b

    .line 2407
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v209    # "destAffinity":Ljava/lang/String;
    .end local v280    # "res":Z
    :sswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2409
    .restart local v78    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v305, v0

    move-object/from16 v0, v305

    check-cast v0, Landroid/content/Intent;

    move-object/16 v305, v0

    .line 2410
    .restart local v305    # "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2411
    .restart local v53    # "resultCode":I
    const/16 v54, 0x0

    .line 2412
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    .line 2413
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 2415
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_85
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v305

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v280, v0

    .line 2416
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    move/from16 v0, v280

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2418
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2417
    :cond_86
    const/4 v6, 0x0

    goto :goto_7c

    .line 2422
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    .end local v305    # "target":Landroid/content/Intent;
    :sswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2424
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v280, v0

    .line 2425
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2431
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":I
    :sswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2433
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v280, v0

    .line 2434
    .local v280, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2436
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2440
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Ljava/lang/String;
    :sswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2443
    .local v257, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2449
    .end local v257    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v257, v0

    .line 2452
    .restart local v257    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2459
    .end local v257    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v315, v0

    .line 2461
    .restart local v315    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->clearRecentTasks(I)Z

    move-result v0

    move/16 v283, v0

    .line 2462
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2463
    move/from16 v0, v283

    if-eqz v0, :cond_87

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2463
    :cond_87
    const/4 v6, 0x0

    goto :goto_7d

    .line 2469
    .end local v283    # "result":Z
    .end local v315    # "userid":I
    :sswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2470
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2476
    :sswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 2478
    .restart local v116    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    const/16 v182, 0x1

    .line 2479
    .local v182, "aboveSystem":Z
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 2480
    .restart local v276    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v116

    move/from16 v2, v182

    move-object/from16 v3, v276

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v280, v0

    .line 2481
    .local v280, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2482
    move-object/from16 v0, p3

    move-wide/from16 v1, v280

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2483
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2478
    .end local v182    # "aboveSystem":Z
    .end local v276    # "reason":Ljava/lang/String;
    .end local v280    # "res":J
    :cond_88
    const/16 v182, 0x0

    goto :goto_7e

    .line 2487
    .end local v116    # "pid":I
    :sswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2489
    .local v170, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v280, v0

    .line 2490
    .local v280, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2491
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2492
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2496
    .end local v170    # "requestType":I
    .end local v280    # "res":Landroid/os/Bundle;
    :sswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2498
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    move-object/16 v277, v0

    .line 2499
    .local v277, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v184

    .line 2500
    .restart local v184    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v170

    move-object/from16 v2, v277

    move-object/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    move-result v0

    move/16 v280, v0

    .line 2501
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2502
    move/from16 v0, v280

    if-eqz v0, :cond_89

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2502
    :cond_89
    const/4 v6, 0x0

    goto :goto_7f

    .line 2507
    .end local v170    # "requestType":I
    .end local v184    # "activityToken":Landroid/os/IBinder;
    .end local v277    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v280    # "res":Z
    :sswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2509
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v164

    .line 2510
    .local v164, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v165

    check-cast v165, Landroid/app/assist/AssistStructure;

    .line 2511
    .local v165, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v166

    check-cast v166, Landroid/app/assist/AssistContent;

    .line 2512
    .local v166, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v167, v6

    .local v167, "referrer":Landroid/net/Uri;
    :goto_80
    move-object/from16 v162, p0

    move-object/from16 v163, v78

    .line 2513
    invoke-virtual/range {v162 .. v167}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2515
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2512
    .end local v167    # "referrer":Landroid/net/Uri;
    :cond_8a
    const/16 v167, 0x0

    goto :goto_80

    .line 2519
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v164    # "extras":Landroid/os/Bundle;
    .end local v165    # "structure":Landroid/app/assist/AssistStructure;
    .end local v166    # "content":Landroid/app/assist/AssistContent;
    :sswitch_d5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2521
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2522
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v171

    .line 2523
    .local v171, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 2524
    .local v172, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v173

    .local v173, "args":Landroid/os/Bundle;
    move-object/from16 v168, p0

    move-object/from16 v169, v9

    .line 2525
    invoke-virtual/range {v168 .. v173}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v280, v0

    .line 2526
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2527
    move/from16 v0, v280

    if-eqz v0, :cond_8b

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2527
    :cond_8b
    const/4 v6, 0x0

    goto :goto_81

    .line 2532
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "requestType":I
    .end local v171    # "hint":Ljava/lang/String;
    .end local v172    # "userHandle":I
    .end local v173    # "args":Landroid/os/Bundle;
    .end local v280    # "res":Z
    :sswitch_d6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v280, v0

    .line 2534
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    move/from16 v0, v280

    if-eqz v0, :cond_8c

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2536
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2535
    :cond_8c
    const/4 v6, 0x0

    goto :goto_82

    .line 2540
    .end local v280    # "res":Z
    :sswitch_d7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2542
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v173

    .line 2543
    .restart local v173    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v280, v0

    .line 2544
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    move/from16 v0, v280

    if-eqz v0, :cond_8d

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2545
    :cond_8d
    const/4 v6, 0x0

    goto :goto_83

    .line 2550
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v173    # "args":Landroid/os/Bundle;
    .end local v280    # "res":Z
    :sswitch_d8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 2552
    .local v188, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2553
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 2554
    .restart local v276    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v188

    move/from16 v2, v17

    move-object/from16 v3, v276

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2560
    .end local v17    # "userId":I
    .end local v188    # "appId":I
    .end local v276    # "reason":Ljava/lang/String;
    :sswitch_d9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2562
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8e

    const/16 v186, 0x1

    .line 2563
    .local v186, "allowRestart":Z
    :goto_84
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v186

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2562
    .end local v186    # "allowRestart":Z
    :cond_8e
    const/16 v186, 0x0

    goto :goto_84

    .line 2569
    .end local v62    # "who":Landroid/os/IBinder;
    :sswitch_da
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2571
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2577
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_db
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2579
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2585
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_dc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2586
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2588
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2592
    :sswitch_dd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2595
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2599
    :sswitch_de
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v262, v0

    .line 2601
    .local v262, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v197

    .line 2603
    .local v197, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v262

    move-object/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v183

    .line 2605
    .local v183, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2606
    if-eqz v183, :cond_8f

    .line 2607
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2608
    invoke-interface/range {v183 .. v183}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2612
    :goto_85
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2610
    :cond_8f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85

    .line 2616
    .end local v183    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v197    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v262    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_df
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v183

    .line 2619
    .restart local v183    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2625
    .end local v183    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_e0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 2627
    .restart local v75    # "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v183

    .line 2628
    .restart local v183    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2629
    if-eqz v183, :cond_90

    .line 2630
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    invoke-interface/range {v183 .. v183}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2635
    :goto_86
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2633
    :cond_90
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86

    .line 2639
    .end local v75    # "displayId":I
    .end local v183    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_e1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v184

    .line 2641
    .restart local v184    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v75

    .line 2642
    .restart local v75    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2643
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2648
    .end local v75    # "displayId":I
    .end local v184    # "activityToken":Landroid/os/IBinder;
    :sswitch_e2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 2650
    .restart local v308    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v308

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2656
    .end local v308    # "taskId":I
    :sswitch_e3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2658
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2660
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2664
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_e4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2665
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2667
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2671
    :sswitch_e5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2672
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2674
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2678
    :sswitch_e6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2681
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2685
    :sswitch_e7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2686
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v231

    .line 2687
    .local v231, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    if-eqz v231, :cond_91

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2689
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2688
    :cond_91
    const/4 v6, 0x0

    goto :goto_87

    .line 2693
    .end local v231    # "isInLockTaskMode":Z
    :sswitch_e8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v247

    .line 2695
    .local v247, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    move-object/from16 v0, p3

    move/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2701
    .end local v247    # "lockTaskModeState":I
    :sswitch_e9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2703
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2705
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2709
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_ea
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2711
    .restart local v78    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v317, v0

    move-object/from16 v0, v317

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v317, v0

    .line 2713
    .local v317, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v317

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2715
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2719
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v317    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_eb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 2721
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_92

    const/4 v0, 0x1

    move/16 v282, v0

    .line 2722
    .local v282, "resizeable":Z
    :goto_88
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v282

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    .line 2723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2721
    .end local v282    # "resizeable":Z
    :cond_92
    const/4 v0, 0x0

    move/16 v282, v0

    goto :goto_88

    .line 2728
    .end local v308    # "taskId":I
    :sswitch_ec
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 2730
    .restart local v308    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v275, v0

    move-object/from16 v0, v275

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v275, v0

    .line 2731
    .local v275, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v308

    move-object/from16 v2, v275

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    .line 2732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2737
    .end local v275    # "r":Landroid/graphics/Rect;
    .end local v308    # "taskId":I
    :sswitch_ed
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v215

    .line 2739
    .local v215, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v215

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v221

    .line 2740
    .local v221, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2741
    if-nez v221, :cond_93

    .line 2742
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    :goto_89
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2744
    :cond_93
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    const/4 v6, 0x0

    move-object/from16 v0, v221

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_89

    .line 2751
    .end local v215    # "filename":Ljava/lang/String;
    .end local v221    # "icon":Landroid/graphics/Bitmap;
    :sswitch_ee
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_94

    .line 2754
    const/16 v196, 0x0

    .line 2758
    .restart local v196    # "bundle":Landroid/os/Bundle;
    :goto_8a
    if-nez v196, :cond_95

    const/16 v16, 0x0

    .line 2759
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2756
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v196    # "bundle":Landroid/os/Bundle;
    :cond_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v196

    .restart local v196    # "bundle":Landroid/os/Bundle;
    goto :goto_8a

    .line 2758
    :cond_95
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_8b

    .line 2765
    .end local v196    # "bundle":Landroid/os/Bundle;
    :sswitch_ef
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2767
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_96

    const/16 v211, 0x1

    .line 2768
    .local v211, "enable":Z
    :goto_8c
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v211

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v300, v0

    .line 2769
    .restart local v300    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2770
    move/from16 v0, v300

    if-eqz v0, :cond_97

    const/4 v6, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2767
    .end local v211    # "enable":Z
    .end local v300    # "success":Z
    :cond_96
    const/16 v211, 0x0

    goto :goto_8c

    .line 2770
    .restart local v211    # "enable":Z
    .restart local v300    # "success":Z
    :cond_97
    const/4 v6, 0x0

    goto :goto_8d

    .line 2775
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v211    # "enable":Z
    .end local v300    # "success":Z
    :sswitch_f0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2777
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v212

    .line 2778
    .restart local v212    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2779
    if-eqz v212, :cond_98

    const/4 v6, 0x1

    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2779
    :cond_98
    const/4 v6, 0x0

    goto :goto_8e

    .line 2784
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v212    # "enabled":Z
    :sswitch_f1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2786
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2788
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2792
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_f2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2794
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2800
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_f3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2802
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2804
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2809
    .end local v78    # "token":Landroid/os/IBinder;
    :sswitch_f4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2810
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2812
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2816
    :sswitch_f5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 2818
    .restart local v117    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v217

    .line 2819
    .local v217, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v117

    move-object/from16 v2, v217

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2821
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2825
    .end local v117    # "uid":I
    .end local v217    # "firstPacket":[B
    :sswitch_f6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 2827
    .local v176, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 2828
    .restart local v117    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v178

    .line 2829
    .local v178, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v180

    .local v180, "reportPackage":Ljava/lang/String;
    move-object/from16 v175, p0

    move/from16 v177, v117

    .line 2830
    invoke-virtual/range {v175 .. v180}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2836
    .end local v117    # "uid":I
    .end local v176    # "procName":Ljava/lang/String;
    .end local v178    # "maxMemSize":J
    .end local v180    # "reportPackage":Ljava/lang/String;
    :sswitch_f7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 2838
    .restart local v155    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2844
    .end local v155    # "path":Ljava/lang/String;
    :sswitch_f8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2847
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    const/16 v236, 0x1

    .line 2848
    .local v236, "keepAwake":Z
    :goto_8f
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v236

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2847
    .end local v236    # "keepAwake":Z
    :cond_99
    const/16 v236, 0x0

    goto :goto_8f

    .line 2854
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_f9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2856
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object/16 v261, v0

    .line 2857
    .local v261, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v261

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2863
    .end local v17    # "userId":I
    .end local v261    # "packages":[Ljava/lang/String;
    :sswitch_fa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2865
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2871
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_fb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 2873
    .restart local v269    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2874
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v280, v0

    .line 2875
    .local v280, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2876
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2881
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v269    # "pkg":Ljava/lang/String;
    .end local v280    # "res":I
    :sswitch_fc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 2883
    .restart local v133    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2884
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 2885
    .local v237, "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v17

    move/from16 v3, v237

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v280, v0

    .line 2886
    .local v280, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2887
    move/from16 v0, v280

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2888
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2887
    :cond_9a
    const/4 v6, 0x0

    goto :goto_90

    .line 2892
    .end local v17    # "userId":I
    .end local v133    # "process":Ljava/lang/String;
    .end local v237    # "level":I
    .end local v280    # "res":Z
    :sswitch_fd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2894
    .restart local v78    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v280, v0

    .line 2895
    .restart local v280    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    move/from16 v0, v280

    if-eqz v0, :cond_9b

    const/4 v6, 0x1

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2897
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2896
    :cond_9b
    const/4 v6, 0x0

    goto :goto_91

    .line 2902
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v280    # "res":Z
    :sswitch_fe
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v204

    .line 2904
    .local v204, "containerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 2905
    .local v286, "runtimeState":I
    move-object/from16 v0, p0

    move/from16 v1, v204

    move/from16 v2, v286

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateKnoxContainerRuntimeState(II)V

    .line 2906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2913
    .end local v204    # "containerId":I
    .end local v286    # "runtimeState":I
    :sswitch_ff
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 2915
    .restart local v75    # "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v39

    .line 2916
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2917
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2918
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2922
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v75    # "displayId":I
    :sswitch_100
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v306, v0

    .line 2924
    .local v306, "targetPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 2925
    .restart local v75    # "displayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v228

    .line 2926
    .local v228, "isForcedChanged":I
    const/4 v6, 0x1

    move/from16 v0, v228

    if-ne v0, v6, :cond_9c

    const/4 v6, 0x1

    :goto_92
    move-object/from16 v0, p0

    move/from16 v1, v306

    move/from16 v2, v75

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/ActivityManagerNative;->updateProcessConfiguration(IIZ)V

    .line 2927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2928
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2926
    :cond_9c
    const/4 v6, 0x0

    goto :goto_92

    .line 2932
    .end local v75    # "displayId":I
    .end local v228    # "isForcedChanged":I
    .end local v306    # "targetPid":I
    :sswitch_101
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v288, v0

    .line 2934
    .local v288, "show":I
    const/4 v6, 0x1

    move/from16 v0, v288

    if-ne v0, v6, :cond_9d

    const/4 v6, 0x1

    :goto_93
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setBackWindowShown(Z)V

    .line 2935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2936
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2934
    :cond_9d
    const/4 v6, 0x0

    goto :goto_93

    .line 2942
    .end local v288    # "show":I
    :sswitch_102
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enableSafeMode()V

    .line 2944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2945
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2953
    :sswitch_103
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2955
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2956
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2957
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v9, v10, v1}, Landroid/app/ActivityManagerNative;->queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/16 v280, v0

    .line 2958
    .local v280, "res":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2959
    move-object/from16 v0, p3

    move-object/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2960
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2967
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v280    # "res":[Ljava/lang/String;
    :sswitch_104
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 2969
    .restart local v78    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9e

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v156, v6

    .line 2971
    .restart local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 2972
    .local v285, "rotation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v156

    move/from16 v3, v285

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v0

    move/16 v283, v0

    .line 2973
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2974
    move/from16 v0, v283

    if-eqz v0, :cond_9f

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2975
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2969
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v283    # "result":Z
    .end local v285    # "rotation":I
    :cond_9e
    const/16 v156, 0x0

    goto :goto_94

    .line 2974
    .restart local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v283    # "result":Z
    .restart local v285    # "rotation":I
    :cond_9f
    const/4 v6, 0x0

    goto :goto_95

    .line 2980
    .end local v78    # "token":Landroid/os/IBinder;
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v283    # "result":Z
    .end local v285    # "rotation":I
    :sswitch_105
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2981
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v203

    .line 2982
    .local v203, "component":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2983
    .local v310, "taskUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a0

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v156, v6

    .line 2985
    .restart local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 2986
    .restart local v285    # "rotation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v203

    move/from16 v2, v310

    move-object/from16 v3, v156

    move/from16 v4, v285

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z

    move-result v0

    move/16 v283, v0

    .line 2987
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2988
    move/from16 v0, v283

    if-eqz v0, :cond_a1

    const/4 v6, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2983
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v283    # "result":Z
    .end local v285    # "rotation":I
    :cond_a0
    const/16 v156, 0x0

    goto :goto_96

    .line 2988
    .restart local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v283    # "result":Z
    .restart local v285    # "rotation":I
    :cond_a1
    const/4 v6, 0x0

    goto :goto_97

    .line 2994
    .end local v156    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v203    # "component":Landroid/content/ComponentName;
    .end local v283    # "result":Z
    .end local v285    # "rotation":I
    .end local v310    # "taskUserId":I
    :sswitch_106
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2995
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppLockedPackageList()Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v260, v0

    .line 2996
    .local v260, "packagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2997
    move-object/from16 v0, p3

    move-object/from16 v1, v260

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2998
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3003
    .end local v260    # "packagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_107
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v269, v0

    .line 3005
    .restart local v269    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    .line 3006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3007
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3012
    .end local v269    # "pkg":Ljava/lang/String;
    :sswitch_108
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3014
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v191

    .line 3015
    .restart local v191    # "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3016
    if-eqz v191, :cond_a2

    const/4 v6, 0x1

    :goto_98
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3016
    :cond_a2
    const/4 v6, 0x0

    goto :goto_98

    .line 3021
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v191    # "ask":Z
    :sswitch_109
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->clearAppLockedUnLockedApp()V

    .line 3023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3028
    :sswitch_10a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3029
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v248

    .line 3030
    .local v248, "lockType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3031
    move-object/from16 v0, p3

    move-object/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3032
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3036
    .end local v248    # "lockType":Ljava/lang/String;
    :sswitch_10b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3037
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v199

    .line 3038
    .local v199, "check":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    move-object/from16 v0, p3

    move-object/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3040
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3045
    .end local v199    # "check":Ljava/lang/String;
    :sswitch_10c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3047
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a3

    const/4 v0, 0x1

    move/16 v318, v0

    .line 3048
    .local v318, "verifying":Z
    :goto_99
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v318

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 3049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3050
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3047
    .end local v318    # "verifying":Z
    :cond_a3
    const/4 v0, 0x0

    move/16 v318, v0

    goto :goto_99

    .line 3055
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_10d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3057
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v191

    .line 3058
    .restart local v191    # "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3059
    if-eqz v191, :cond_a4

    const/4 v6, 0x1

    :goto_9a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3059
    :cond_a4
    const/4 v6, 0x0

    goto :goto_9a

    .line 3067
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v191    # "ask":Z
    :sswitch_10e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 3069
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 3070
    .restart local v192    # "b":Landroid/os/IBinder;
    if-eqz v192, :cond_a5

    invoke-static/range {v192 .. v192}, Lcom/samsung/android/app/ITaskWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ITaskWatcher;

    move-result-object v0

    move-object/16 v321, v0

    .line 3072
    .local v321, "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :goto_9b
    move-object/from16 v0, p0

    move/from16 v1, v308

    move-object/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V

    .line 3073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3074
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3070
    .end local v321    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_a5
    const/4 v0, 0x0

    move-object/16 v321, v0

    goto :goto_9b

    .line 3078
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v308    # "taskId":I
    :sswitch_10f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 3080
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v192

    .line 3081
    .restart local v192    # "b":Landroid/os/IBinder;
    if-eqz v192, :cond_a6

    invoke-static/range {v192 .. v192}, Lcom/samsung/android/app/ITaskWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ITaskWatcher;

    move-result-object v0

    move-object/16 v321, v0

    .line 3083
    .restart local v321    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :goto_9c
    move-object/from16 v0, p0

    move/from16 v1, v308

    move-object/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V

    .line 3084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3085
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3081
    .end local v321    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_a6
    const/4 v0, 0x0

    move-object/16 v321, v0

    goto :goto_9c

    .line 3089
    .end local v192    # "b":Landroid/os/IBinder;
    .end local v308    # "taskId":I
    :sswitch_110
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 3091
    .restart local v308    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_a7

    const/16 v235, 0x1

    .line 3092
    .local v235, "keepAlive":Z
    :goto_9d
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToBack(IZ)Z

    move-result v0

    move/16 v283, v0

    .line 3093
    .restart local v283    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3094
    move/from16 v0, v283

    if-eqz v0, :cond_a8

    const/4 v6, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3095
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3091
    .end local v235    # "keepAlive":Z
    .end local v283    # "result":Z
    :cond_a7
    const/16 v235, 0x0

    goto :goto_9d

    .line 3094
    .restart local v235    # "keepAlive":Z
    .restart local v283    # "result":Z
    :cond_a8
    const/4 v6, 0x0

    goto :goto_9e

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_79
        0x3 -> :sswitch_0
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_6e
        0xb -> :sswitch_9
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_15
        0x12 -> :sswitch_16
        0x13 -> :sswitch_18
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1d
        0x17 -> :sswitch_21
        0x18 -> :sswitch_29
        0x1a -> :sswitch_2b
        0x1b -> :sswitch_35
        0x1d -> :sswitch_36
        0x1e -> :sswitch_38
        0x1f -> :sswitch_39
        0x20 -> :sswitch_a
        0x21 -> :sswitch_3e
        0x22 -> :sswitch_3f
        0x23 -> :sswitch_41
        0x24 -> :sswitch_44
        0x25 -> :sswitch_45
        0x26 -> :sswitch_46
        0x27 -> :sswitch_17
        0x2a -> :sswitch_70
        0x2b -> :sswitch_71
        0x2c -> :sswitch_49
        0x2d -> :sswitch_4a
        0x2e -> :sswitch_4b
        0x2f -> :sswitch_4c
        0x30 -> :sswitch_42
        0x31 -> :sswitch_53
        0x32 -> :sswitch_54
        0x33 -> :sswitch_5e
        0x34 -> :sswitch_5f
        0x35 -> :sswitch_62
        0x36 -> :sswitch_64
        0x37 -> :sswitch_66
        0x38 -> :sswitch_67
        0x39 -> :sswitch_72
        0x3a -> :sswitch_6b
        0x3b -> :sswitch_7c
        0x3c -> :sswitch_23
        0x3d -> :sswitch_48
        0x3e -> :sswitch_1b
        0x3f -> :sswitch_56
        0x40 -> :sswitch_57
        0x41 -> :sswitch_5a
        0x42 -> :sswitch_73
        0x43 -> :sswitch_7
        0x44 -> :sswitch_74
        0x45 -> :sswitch_3c
        0x46 -> :sswitch_51
        0x47 -> :sswitch_52
        0x48 -> :sswitch_47
        0x49 -> :sswitch_60
        0x4a -> :sswitch_43
        0x4b -> :sswitch_2a
        0x4c -> :sswitch_6c
        0x4d -> :sswitch_26
        0x4e -> :sswitch_65
        0x4f -> :sswitch_7f
        0x50 -> :sswitch_77
        0x51 -> :sswitch_25
        0x52 -> :sswitch_24
        0x53 -> :sswitch_27
        0x54 -> :sswitch_87
        0x55 -> :sswitch_90
        0x56 -> :sswitch_88
        0x57 -> :sswitch_89
        0x58 -> :sswitch_8e
        0x59 -> :sswitch_8f
        0x5a -> :sswitch_91
        0x5b -> :sswitch_92
        0x5c -> :sswitch_93
        0x5d -> :sswitch_5b
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_94
        0x60 -> :sswitch_95
        0x61 -> :sswitch_96
        0x62 -> :sswitch_97
        0x63 -> :sswitch_98
        0x64 -> :sswitch_5
        0x65 -> :sswitch_99
        0x66 -> :sswitch_7a
        0x67 -> :sswitch_7d
        0x68 -> :sswitch_9a
        0x69 -> :sswitch_3
        0x6a -> :sswitch_f
        0x6b -> :sswitch_4
        0x6c -> :sswitch_28
        0x6d -> :sswitch_9c
        0x6e -> :sswitch_7b
        0x6f -> :sswitch_9d
        0x70 -> :sswitch_a3
        0x71 -> :sswitch_a4
        0x72 -> :sswitch_a5
        0x73 -> :sswitch_a6
        0x74 -> :sswitch_a7
        0x75 -> :sswitch_a8
        0x76 -> :sswitch_a9
        0x77 -> :sswitch_aa
        0x78 -> :sswitch_ab
        0x79 -> :sswitch_ac
        0x7a -> :sswitch_b5
        0x7b -> :sswitch_1a
        0x7c -> :sswitch_ad
        0x7d -> :sswitch_ae
        0x7e -> :sswitch_af
        0x7f -> :sswitch_b0
        0x80 -> :sswitch_bd
        0x81 -> :sswitch_be
        0x82 -> :sswitch_b1
        0x84 -> :sswitch_b7
        0x85 -> :sswitch_b9
        0x86 -> :sswitch_ba
        0x87 -> :sswitch_bf
        0x88 -> :sswitch_c3
        0x89 -> :sswitch_c4
        0x8a -> :sswitch_c5
        0x8c -> :sswitch_7e
        0x8d -> :sswitch_37
        0x8e -> :sswitch_3d
        0x8f -> :sswitch_86
        0x90 -> :sswitch_78
        0x91 -> :sswitch_b4
        0x92 -> :sswitch_c9
        0x93 -> :sswitch_ca
        0x94 -> :sswitch_6f
        0x95 -> :sswitch_b
        0x96 -> :sswitch_cb
        0x97 -> :sswitch_3a
        0x98 -> :sswitch_c0
        0x99 -> :sswitch_1
        0x9a -> :sswitch_b3
        0x9b -> :sswitch_cd
        0x9c -> :sswitch_ce
        0x9d -> :sswitch_b6
        0x9e -> :sswitch_d0
        0x9f -> :sswitch_d1
        0xa1 -> :sswitch_c1
        0xa2 -> :sswitch_d2
        0xa3 -> :sswitch_d4
        0xa4 -> :sswitch_cc
        0xa5 -> :sswitch_d8
        0xa6 -> :sswitch_9b
        0xa7 -> :sswitch_d9
        0xa8 -> :sswitch_de
        0xa9 -> :sswitch_2c
        0xaa -> :sswitch_2d
        0xab -> :sswitch_2e
        0xac -> :sswitch_31
        0xad -> :sswitch_2f
        0xae -> :sswitch_9f
        0xaf -> :sswitch_a1
        0xb0 -> :sswitch_db
        0xb1 -> :sswitch_da
        0xb2 -> :sswitch_dc
        0xb3 -> :sswitch_dd
        0xb4 -> :sswitch_68
        0xb5 -> :sswitch_69
        0xb6 -> :sswitch_6a
        0xb7 -> :sswitch_3b
        0xb9 -> :sswitch_e1
        0xba -> :sswitch_df
        0xbb -> :sswitch_fc
        0xbc -> :sswitch_cf
        0xbd -> :sswitch_fe
        0xbe -> :sswitch_5c
        0xd3 -> :sswitch_c2
        0xd4 -> :sswitch_b2
        0xd5 -> :sswitch_30
        0xd6 -> :sswitch_e2
        0xd7 -> :sswitch_e3
        0xd8 -> :sswitch_e5
        0xd9 -> :sswitch_e7
        0xda -> :sswitch_ea
        0xdb -> :sswitch_6
        0xdc -> :sswitch_a2
        0xdd -> :sswitch_1e
        0xde -> :sswitch_e4
        0xdf -> :sswitch_e6
        0xe0 -> :sswitch_c
        0xe1 -> :sswitch_9e
        0xe2 -> :sswitch_ef
        0xe3 -> :sswitch_f0
        0xe4 -> :sswitch_f1
        0xe5 -> :sswitch_f2
        0xe6 -> :sswitch_8
        0xe7 -> :sswitch_f3
        0xe8 -> :sswitch_c6
        0xe9 -> :sswitch_2
        0xea -> :sswitch_1f
        0xeb -> :sswitch_20
        0xec -> :sswitch_d
        0xed -> :sswitch_e
        0xee -> :sswitch_f4
        0xef -> :sswitch_ed
        0xf0 -> :sswitch_d5
        0xf1 -> :sswitch_ee
        0xf2 -> :sswitch_63
        0xf3 -> :sswitch_34
        0x119 -> :sswitch_f5
        0x11a -> :sswitch_e0
        0x11b -> :sswitch_32
        0x11c -> :sswitch_eb
        0x11d -> :sswitch_d3
        0x11e -> :sswitch_ec
        0x11f -> :sswitch_e8
        0x120 -> :sswitch_f6
        0x121 -> :sswitch_f7
        0x122 -> :sswitch_f8
        0x123 -> :sswitch_f9
        0x124 -> :sswitch_75
        0x125 -> :sswitch_76
        0x126 -> :sswitch_fb
        0x127 -> :sswitch_e9
        0x128 -> :sswitch_fa
        0x129 -> :sswitch_c7
        0x12a -> :sswitch_bb
        0x12b -> :sswitch_bc
        0x12c -> :sswitch_d6
        0x12d -> :sswitch_d7
        0x12e -> :sswitch_fd
        0x3f3 -> :sswitch_4d
        0x3f4 -> :sswitch_33
        0x3f5 -> :sswitch_4e
        0x3f6 -> :sswitch_4f
        0x3f7 -> :sswitch_50
        0x44e -> :sswitch_c8
        0x44f -> :sswitch_a0
        0x450 -> :sswitch_b8
        0x4b1 -> :sswitch_80
        0x4b2 -> :sswitch_83
        0x4b3 -> :sswitch_84
        0x4b4 -> :sswitch_85
        0x5dd -> :sswitch_81
        0x5de -> :sswitch_82
        0xc1d -> :sswitch_61
        0xc1e -> :sswitch_55
        0xfd3 -> :sswitch_8a
        0xfd4 -> :sswitch_8b
        0xfd5 -> :sswitch_8c
        0xfdd -> :sswitch_8d
        0x1389 -> :sswitch_ff
        0x138a -> :sswitch_40
        0x138b -> :sswitch_22
        0x138c -> :sswitch_100
        0x138d -> :sswitch_101
        0x1771 -> :sswitch_58
        0x1772 -> :sswitch_59
        0x1785 -> :sswitch_102
        0x178f -> :sswitch_103
        0x1799 -> :sswitch_104
        0x179a -> :sswitch_105
        0x1b59 -> :sswitch_106
        0x1b5a -> :sswitch_107
        0x1b5b -> :sswitch_108
        0x1b5c -> :sswitch_109
        0x1b5d -> :sswitch_10a
        0x1b5e -> :sswitch_10b
        0x1b5f -> :sswitch_10c
        0x1b60 -> :sswitch_10d
        0x1f41 -> :sswitch_10e
        0x1f42 -> :sswitch_10f
        0x1f43 -> :sswitch_110
    .end sparse-switch
.end method
