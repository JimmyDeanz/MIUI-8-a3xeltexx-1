.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "skipDump"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v9, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v9, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v9, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 57
    const-string v9, "com.android.phone"

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 58
    const-string v9, "PA"

    const-string v10, "EX"

    invoke-static {v9, v10}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 64
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 65
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 66
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 69
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "name":Ljava/lang/CharSequence;
    if-eqz v6, :cond_7

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x1040370

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v9, :cond_6

    const-string v9, " [01]"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-nez v9, :cond_1

    if-nez p5, :cond_1

    .line 83
    const-string v3, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 84
    .local v3, "dumpCmd":Ljava/lang/String;
    const-string/jumbo v9, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 85
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v10, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    const-string/jumbo v11, "dumpstate"

    invoke-direct {v9, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 95
    .end local v3    # "dumpCmd":Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 97
    const/4 v9, -0x1

    const v10, 0x1040377

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 101
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 103
    const/4 v8, 0x0

    .line 104
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    const-string/jumbo v9, "enterprise_policy"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 106
    .local v4, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 110
    :cond_2
    if-eqz v8, :cond_3

    move-object/from16 v0, p4

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v8, v9}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    const/4 v9, -0x2

    const v10, 0x1040378

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 122
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_3
    const v9, 0x104036f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Application Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v9, v9, 0x110

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    move-object/from16 v0, p4

    iget-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v9, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7da

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 133
    :cond_4
    const-string v9, "com.samsung.android.service.aircommand"

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 134
    .local v5, "isAirCommandService":Z
    if-eqz v5, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7da

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 151
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/32 v12, 0x493e0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    return-void

    .line 71
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "isAirCommandService":Z
    :cond_6
    const-string v9, ""

    goto/16 :goto_0

    .line 75
    .end local v6    # "name":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 76
    .restart local v6    # "name":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x1040371

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v9, :cond_8

    const-string v9, " [01]"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const-string v9, ""

    goto :goto_3

    .line 91
    .restart local v3    # "dumpCmd":Ljava/lang/String;
    :cond_9
    const-string v9, "-k -t -z -d -o /data/log/dumpstate_app_error"

    invoke-static {v9}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 181
    return-void
.end method

.method getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v11, Lcom/android/server/am/AppErrorDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 105
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 107
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 110
    const/4 v10, 0x0

    .line 112
    .local v10, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 113
    .local v8, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "name":Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    .line 115
    const v11, 0x11070025

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 122
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v11, v11, 0x110

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 131
    :cond_0
    move-object/from16 v4, p1

    .line 132
    .local v4, "contextInner":Landroid/content/Context;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x110700a5

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "dialogBody":Ljava/lang/String;
    const v11, 0x110700a6

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "dialogDumpToPreview":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v9, "textBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v11, Lcom/android/server/am/AppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;Landroid/content/Context;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x21

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 149
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v3, "contentView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x110a002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x110d000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorDialog;->setView(Landroid/view/View;)V

    .line 156
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 158
    const/4 v11, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1107002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 161
    const/4 v11, -0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x1040000

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/32 v14, 0x493e0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return-void

    .line 118
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "contentView":Landroid/widget/TextView;
    .end local v4    # "contextInner":Landroid/content/Context;
    .end local v5    # "dialogBody":Ljava/lang/String;
    .end local v6    # "dialogDumpToPreview":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v9    # "textBuilder":Landroid/text/SpannableStringBuilder;
    :cond_1
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 119
    .restart local v7    # "name":Ljava/lang/CharSequence;
    const v11, 0x11070026

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method
.field mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
