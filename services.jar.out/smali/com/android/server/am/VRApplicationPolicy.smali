.class public Lcom/android/server/am/VRApplicationPolicy;
.super Ljava/lang/Object;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VRApplicationPolicy$H;,
        Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field private static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field private static final DEBUG:Z = false

.field public static final FEATURE_HMT:Z = false

.field private static final TAG:Ljava/lang/String; = "VRApplicationPolicy"

.field private static final VRSERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field private static final VRSETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field private static final VRSETUPWIZARD_STUB_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"

.field private static final VRSYSTEM_PACKAGE:Ljava/lang/String; = "com.samsung.android.hmt.vrsystem"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHMTconnected:Z

.field final mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mVRDevelopMode:Z

.field private mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 73
    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    .line 77
    new-instance v0, Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/VRApplicationPolicy$H;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    .line 80
    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 82
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/VRApplicationPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/VRApplicationPolicy;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VRApplicationPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/am/VRApplicationPolicy;->comeOutOfVRmodeLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/VRApplicationPolicy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/VRApplicationPolicy;->setVRFlingerStatus(Z)V

    return-void
.end method

.method private comeOutOfVRmodeLocked()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "VRApplicationPolicy"

    const-string v1, "comeOutOfVRmode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_setupwizard_completed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 181
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.hmt.vrsystem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizardstub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v0, "setup_wizard"

    .line 191
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 192
    const-string v1, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getReasonForCancelingVRActivity : The reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    return-object v0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string/jumbo v0, "hmt"

    goto :goto_0
.end method

.method private setVRFlingerStatus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->setVRFlingerMode(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStack;
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    .line 235
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getVRStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 236
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v0, "vr"

    .line 238
    .local v0, "reason":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    .line 244
    .local v2, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 245
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    .line 246
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->setToVRStack(I)V

    .line 247
    const-string/jumbo v0, "create vr"

    .line 250
    .end local v2    # "stackId":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 251
    return-object v1
.end method

.method inVRMode()Z
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 256
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v1, 0x1

    .line 259
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHMTconnected()Z
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public notifyToVRServiceLocked(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 198
    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const-string v0, "VRApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to vr service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 204
    return-void
.end method

.method public readyToStartVRActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/am/VRApplicationPolicy;->getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 209
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v8, "restartIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x48000000    # 131072.0f

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 213
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v0, "reason"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string/jumbo v0, "restart_intent"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    .line 218
    const-string v0, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to start vr activity by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "restartIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startVRHomeLocked(I)Z
    .locals 27
    .param p1, "userId"    # I

    .prologue
    .line 151
    const-string v1, "VRApplicationPolicy"

    const-string/jumbo v3, "start VR Home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "vr_launcher_package"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 153
    .local v26, "vrHomeName":Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 154
    invoke-static/range {v26 .. v26}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v25

    .line 155
    .local v25, "vrHome":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v2, "intent":Landroid/content/Intent;
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 160
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 164
    const/4 v1, 0x1

    .line 171
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "vrHome":Landroid/content/ComponentName;
    :goto_0
    return v1

    .line 166
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "vrHome":Landroid/content/ComponentName;
    :cond_0
    const-string v1, "VRApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No VR Home "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "vrHome":Landroid/content/ComponentName;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "VRApplicationPolicy"

    const-string v3, "VR home is not set"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "dockFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v4, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/am/VRApplicationPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/VRApplicationPolicy$1;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "vrDevelopMode":Z
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 107
    :goto_0
    new-instance v4, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    .line 108
    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 112
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    .line 113
    monitor-exit v4

    .line 114
    return-void

    :cond_0
    move v2, v3

    .line 106
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
