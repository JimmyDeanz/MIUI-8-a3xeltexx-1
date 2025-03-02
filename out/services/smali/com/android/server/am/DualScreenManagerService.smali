.class public Lcom/android/server/am/DualScreenManagerService;
.super Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;
.source "DualScreenManagerService.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DualScreenManagerService$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FOCUS_SCREEN_MSG:I = 0x3ec

.field private static final MOVE_TASK_TO_SCREEN_MSG:I = 0x3e9

.field private static final REPORT_SCONTEXT_HALL_SENSOR_CHANGE_MSG:I = 0x3ee

.field private static final REPORT_SCONTEXT_MAIN_SCREEN_DETECTION_CHANGE_MSG:I = 0x3ef

.field private static final REPORT_SCREEN_FOCUS_CHANGE_MSG:I = 0x3eb

.field private static final REPORT_SHRINK_REQUEST_STATE_MSG:I = 0x3ed

.field private static final SWAP_TOP_TASK_MSG:I = 0x3ea

.field private static final TAG:Ljava/lang/String;

.field private static sSelf:Lcom/android/server/am/DualScreenManagerService;


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mDualScreenCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

.field private mFocusedScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field private mHandler:Landroid/os/Handler;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/server/am/DualScreenManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/DualScreenManagerService;->sSelf:Lcom/android/server/am/DualScreenManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 115
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 119
    new-instance v0, Lcom/android/server/am/DualScreenManagerService$MyHandler;

    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DualScreenManagerService$MyHandler;-><init>(Lcom/android/server/am/DualScreenManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    .line 120
    sput-object p0, Lcom/android/server/am/DualScreenManagerService;->sSelf:Lcom/android/server/am/DualScreenManagerService;

    .line 122
    new-instance v0, Lcom/android/server/am/DualScreenManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/DualScreenManagerService$1;-><init>(Lcom/android/server/am/DualScreenManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenCallbacks:Landroid/os/RemoteCallbackList;

    .line 129
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/DualScreenManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DualScreenManagerService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/am/DualScreenManagerService;->handleSwapTopTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DualScreenManagerService;
    .param p1, "x1"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenManagerService;->handleReportScreenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DualScreenManagerService;
    .param p1, "x1"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenManagerService;->handleFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/DualScreenManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DualScreenManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenManagerService;->handleReportShrinkRequestedState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/DualScreenManagerService;Landroid/hardware/scontext/SContextEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DualScreenManagerService;
    .param p1, "x1"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenManagerService;->handleReportSContextStatusChange(Landroid/hardware/scontext/SContextEvent;)V

    return-void
.end method

.method private canMoveToScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1561
    const/4 v0, 0x1

    return v0
.end method

.method private canSwapScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1543
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    .line 1544
    :cond_0
    const/4 v0, 0x0

    .line 1546
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpContextRelationsLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;

    .prologue
    .line 1943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1944
    .local v7, "innerPrefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1945
    const-string v3, "DUALSCREEN MANAGER CONTEXTS RELATION (dumpsys dualscreen context)"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1947
    .local v9, "NP":I
    const/4 v13, 0x0

    .local v13, "ip":I
    :goto_0
    if-ge v13, v9, :cond_5

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 1950
    .local v14, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1951
    .local v8, "NA":I
    const/4 v12, 0x0

    .local v12, "ia":I
    :goto_1
    if-ge v12, v8, :cond_4

    .line 1952
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 1953
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_0

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 1954
    if-eqz p5, :cond_1

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1951
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1957
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1958
    const-string v3, "PID "

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1960
    const-string v3, " ProcessRecord{"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1961
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    const-string v3, " PSS:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    iget-wide v4, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1964
    const-string v3, " }"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->flush()V

    .line 1970
    :try_start_0
    new-instance v15, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v15}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1972
    .local v15, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1973
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpContextRelationsLocked() : app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :cond_2
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v3, v4, :cond_3

    .line 1999
    new-instance v2, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v15}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;-><init>(Lcom/android/server/am/DualScreenManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    .local v2, "t":Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;
    invoke-virtual {v2}, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2004
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2012
    .end local v2    # "t":Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;
    :goto_3
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2014
    :try_start_4
    invoke-virtual {v15}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 2016
    .end local v15    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v11

    .line 2017
    .local v11, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failure while dumping the context relation of the activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2008
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v15    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_3
    :try_start_5
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v15}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v3, v4, v7, v0}, Landroid/app/IApplicationThread;->dumpContextRelationInfo(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 2014
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v15}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2020
    .end local v15    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_1
    move-exception v11

    .line 2021
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Got a RemoteException while dumping the context relation of the activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1947
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2005
    .restart local v2    # "t":Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;
    .restart local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_2
    move-exception v3

    goto :goto_3

    .line 2027
    .end local v2    # "t":Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;
    .end local v8    # "NA":I
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "ia":I
    .end local v14    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v15    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_5
    return-void
.end method

.method private dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1919
    const-string v1, "DUALSCREEN MANAGER (dumpsys dualscreen)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1921
    const-string/jumbo v1, "mFocusedScreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mFocusedScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1923
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1924
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    const-string/jumbo v1, "mSingleScreenState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    iget-boolean v1, v1, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1927
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1928
    const-string/jumbo v1, "mExpandedHomeStatus="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    iget v1, v1, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1930
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1931
    return-void
.end method

.method private dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    const-string v1, "DUALSCREEN MANAGER settings (dumpsys dualscreen settings)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    invoke-static {v0, p2}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1938
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1939
    return-void
.end method

.method private fixTaskLocked(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 1566
    return-void
.end method

.method private getCandidateExpandedHomeTask()Lcom/android/server/am/TaskRecord;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1364
    iget-object v6, p0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1365
    .local v1, "homeStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v2, v5

    .line 1378
    :cond_0
    :goto_0
    return-object v2

    .line 1368
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1369
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1370
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1371
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1372
    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1373
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v6}, Lcom/android/server/am/DualScreenPolicy;->isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1369
    .end local v0    # "homeActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    move-object v2, v5

    .line 1378
    goto :goto_0
.end method

.method private getTopRunningTaskId(Lcom/samsung/android/dualscreen/DualScreen;)I
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1589
    const/4 v0, -0x1

    return v0
.end method

.method private handleFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 7
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1634
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1635
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleFocusScreen() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_0
    if-nez p1, :cond_1

    .line 1650
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1641
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(Lcom/samsung/android/dualscreen/DualScreen;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1642
    .local v0, "mStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1643
    .local v2, "stackSize":I
    if-lez v2, :cond_3

    .line 1644
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->cancelTapOupStackMsg()V

    .line 1645
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1646
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleFocusScreen() : set focus on stack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 1649
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v0    # "mStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "stackSize":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleReportSContextStatusChange(Landroid/hardware/scontext/SContextEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 1703
    sget-boolean v0, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1704
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleReportSContextStatusChange() : SContextEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    return-void
.end method

.method private handleReportScreenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 5
    .param p1, "focusedScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1653
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1654
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleReportScreenFocusChanged() : focusedScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_0
    if-nez p1, :cond_2

    .line 1678
    :cond_1
    :goto_0
    return-void

    .line 1659
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mFocusedScreen:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq p1, v2, :cond_1

    .line 1660
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1661
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleReportScreenFocusChanged() : broadcast new focus..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService;->mFocusedScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 1665
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1666
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1668
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    invoke-interface {v2, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;->screenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1676
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1669
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private handleReportShrinkRequestedState(Z)V
    .locals 7
    .param p1, "shrinkRequested"    # Z

    .prologue
    .line 1681
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1682
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleReportShrinkRequestedState() : shrinkRequested="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1685
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    .line 1686
    .local v2, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1687
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    .line 1690
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1691
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shrinkRequestedState to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->setShrinkRequestedState(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1699
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :try_start_2
    monitor-exit v4

    .line 1700
    return-void

    .line 1699
    .end local v1    # "i":I
    .end local v2    # "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1696
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "i":I
    .restart local v2    # "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private handleSwapTopTask()V
    .locals 23

    .prologue
    .line 1710
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1711
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleSwapTopTask()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1715
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 1716
    .local v20, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/DualScreenAttrs;->getDisplayId()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1717
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "swapTopTask() : can\'t swap task in expanded screen"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    monitor-exit v22

    .line 1800
    :goto_0
    return-void

    .line 1722
    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/DualScreenManagerService;->getTopRunningTaskId(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v3

    .line 1723
    .local v3, "mainTaskId":I
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/DualScreenManagerService;->getTopRunningTaskId(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v17

    .line 1725
    .local v17, "subTaskId":I
    const/4 v12, 0x0

    .line 1726
    .local v12, "mainTopActivity":Lcom/android/server/am/ActivityRecord;
    const/16 v18, 0x0

    .line 1728
    .local v18, "subTopActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1729
    .local v11, "mainTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v16

    .line 1731
    .local v16, "subTask":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_2

    .line 1732
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1734
    :cond_2
    if-eqz v16, :cond_3

    .line 1735
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 1738
    :cond_3
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1739
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "swapTopTask() : swap task and update informations. mainTopActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subTopActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_4
    const v4, 0x12ebc2

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    if-eqz v12, :cond_8

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x3

    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_2
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 1752
    .local v14, "origId":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->getAnimationScale(I)F

    move-result v21

    .line 1754
    .local v21, "transitionAnimationScale":F
    const/16 v19, 0x0

    .line 1755
    .local v19, "swapped":Z
    if-eqz v12, :cond_7

    if-eqz v18, :cond_7

    .line 1756
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/DualScreenManagerService;->canSwapScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/DualScreenManagerService;->canSwapScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1757
    const/16 v19, 0x1

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAnimationScale(IF)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2, v11, v4}, Lcom/android/server/am/DualScreenPolicy;->updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/DualScreenPolicy;->updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 1765
    .local v10, "mainTargetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 1767
    .local v13, "subTargetStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1768
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1770
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v12, v2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1771
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/high16 v4, 0x100000

    invoke-virtual {v12, v2, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1774
    :cond_5
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1775
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/high16 v4, 0x100000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1778
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZZ)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v13, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, v17

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZZ)V

    .line 1781
    iput-object v12, v10, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1782
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFrontActivities:[Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    aput-object v18, v2, v4

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFrontActivities:[Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x1

    aput-object v12, v2, v4

    .line 1788
    .end local v10    # "mainTargetStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "subTargetStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimationScale(IF)V

    .line 1789
    if-nez v19, :cond_a

    .line 1790
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "swapTopTask() : fail to swap - main : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1797
    :try_start_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22

    goto/16 :goto_0

    .line 1799
    .end local v3    # "mainTaskId":I
    .end local v11    # "mainTask":Lcom/android/server/am/TaskRecord;
    .end local v12    # "mainTopActivity":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "origId":J
    .end local v16    # "subTask":Lcom/android/server/am/TaskRecord;
    .end local v17    # "subTaskId":I
    .end local v18    # "subTopActivity":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "swapped":Z
    .end local v20    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    .end local v21    # "transitionAnimationScale":F
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1743
    .restart local v3    # "mainTaskId":I
    .restart local v11    # "mainTask":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "mainTopActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "subTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "subTaskId":I
    .restart local v18    # "subTopActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    :try_start_3
    const-string/jumbo v2, "null"

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v2, "null"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1795
    .restart local v14    # "origId":J
    .restart local v19    # "swapped":Z
    .restart local v21    # "transitionAnimationScale":F
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1797
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1799
    monitor-exit v22

    goto/16 :goto_0

    .line 1797
    .end local v19    # "swapped":Z
    .end local v21    # "transitionAnimationScale":F
    :catchall_1
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1805
    return-void
.end method

.method public static self()Lcom/android/server/am/DualScreenManagerService;
    .locals 1

    .prologue
    .line 1445
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->sSelf:Lcom/android/server/am/DualScreenManagerService;

    return-object v0
.end method


# virtual methods
.method public canBeCoupled(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public canBeExpanded(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public dimScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "enable"    # Z

    .prologue
    .line 723
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1841
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump DualScreenManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    :goto_0
    return-void

    .line 1851
    :cond_0
    const/4 v9, 0x0

    .line 1852
    .local v9, "dumpAll":Z
    const/4 v11, 0x0

    .line 1853
    .local v11, "opti":I
    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v11, v2, :cond_1

    .line 1854
    aget-object v10, p3, v11

    .line 1855
    .local v10, "opt":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    .line 1876
    .end local v10    # "opt":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1879
    .local v12, "origId":J
    if-eqz v9, :cond_5

    .line 1880
    :try_start_0
    iget-object v14, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1881
    :try_start_1
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/DualScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1882
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/DualScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1883
    const-string v3, "  "

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/DualScreenManagerService;->dumpContextRelationsLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1912
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1858
    .end local v12    # "origId":J
    .restart local v10    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 1859
    const-string v2, "-h"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1860
    const-string v2, "DualScreen manager dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    const-string v2, "  [-h] [cmd] ..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1862
    const-string v2, "  cmd may be one of:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    const-string v2, "    c[ontext]: context relation informations"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    const-string v2, "    cc: context relation informations with call stack information"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    const-string v2, "    cs: simple context relation informations"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    const-string v2, "    s[ettings]: dual screen settings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    const-string v2, "  -a: include all available server state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1869
    :cond_3
    const-string v2, "-a"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1870
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1872
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1884
    .end local v10    # "opt":Ljava/lang/String;
    .restart local v12    # "origId":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1912
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1888
    :cond_5
    :try_start_4
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v11, v2, :cond_b

    .line 1889
    aget-object v8, p3, v11

    .line 1890
    .local v8, "cmd":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 1891
    const-string/jumbo v2, "context"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "c"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "cc"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "cs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1893
    :cond_6
    const/4 v7, 0x0

    .line 1894
    .local v7, "processName":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v11, v2, :cond_7

    .line 1895
    aget-object v7, p3, v11

    .line 1897
    :cond_7
    iget-object v14, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1898
    :try_start_5
    const-string v3, "  "

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/DualScreenManagerService;->dumpContextRelationsLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1912
    .end local v7    # "processName":Ljava/lang/String;
    .end local v8    # "cmd":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1899
    .restart local v7    # "processName":Ljava/lang/String;
    .restart local v8    # "cmd":Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2

    .line 1900
    .end local v7    # "processName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1901
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1902
    :try_start_8
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/DualScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1903
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2

    .line 1906
    .end local v8    # "cmd":Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1907
    :try_start_a
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/DualScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1908
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/DualScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1909
    monitor-exit v3

    goto :goto_2

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public finishCoupledActivity(Landroid/os/IBinder;I)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1039
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1040
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finishCoupledActivity() flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1044
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v14

    .line 1046
    .local v14, "origId":J
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 1047
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_1

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid token: finishCoupledActivity(token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", flags) from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1051
    .local v13, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    .end local v13    # "msg":Ljava/lang/String;
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1143
    .end local v14    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1055
    .restart local v14    # "origId":J
    .restart local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-eqz v16, :cond_5

    :try_start_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1056
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    .line 1057
    .local v11, "isClearAllAbove":Z
    :goto_0
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_3

    const/4 v12, 0x1

    .line 1058
    .local v12, "isClearExceptTop":Z
    :goto_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 1060
    .local v8, "OppositeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flags: finishOppositeCoupled(flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1064
    .restart local v13    # "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1056
    .end local v8    # "OppositeTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "isClearAllAbove":Z
    .end local v12    # "isClearExceptTop":Z
    .end local v13    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1057
    .restart local v11    # "isClearAllAbove":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1068
    .restart local v8    # "OppositeTask":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "isClearExceptTop":Z
    :cond_4
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_6

    .line 1069
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    .end local v8    # "OppositeTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "isClearAllAbove":Z
    .end local v12    # "isClearExceptTop":Z
    :cond_5
    :goto_2
    :try_start_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1143
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1145
    return-void

    .line 1072
    .restart local v8    # "OppositeTask":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "isClearAllAbove":Z
    .restart local v12    # "isClearExceptTop":Z
    :cond_6
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_d

    .line 1073
    if-nez v11, :cond_a

    .line 1074
    if-eqz v12, :cond_9

    :try_start_5
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x2

    .line 1075
    .local v17, "startNdx":I
    :goto_3
    move/from16 v10, v17

    .local v10, "activityNdx":I
    :goto_4
    if-ltz v10, :cond_5

    .line 1076
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1077
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_8

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/DualScreenManagerService;->isTiggerActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_8

    .line 1079
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "finish-coupled"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1075
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1074
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "activityNdx":I
    .end local v17    # "startNdx":I
    :cond_9
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    goto :goto_3

    .line 1087
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "activityNdx":I
    :goto_5
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 1088
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1089
    .restart local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/DualScreenManagerService;->isTiggerActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_c

    .line 1091
    const-string/jumbo v2, "finish callee and above all"

    invoke-virtual {v8, v10, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1087
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1098
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "activityNdx":I
    :cond_d
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_13

    .line 1099
    if-nez v11, :cond_10

    .line 1100
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .restart local v10    # "activityNdx":I
    :goto_6
    if-ltz v10, :cond_5

    .line 1101
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1102
    .restart local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_f

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    if-eq v2, v4, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/DualScreenManagerService;->isTiggerActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_f

    .line 1104
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "finish-coupled"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1100
    :cond_f
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 1113
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "activityNdx":I
    :cond_10
    const/4 v10, 0x0

    .restart local v10    # "activityNdx":I
    :goto_7
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 1114
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1115
    .restart local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_12

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    if-eq v2, v4, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/DualScreenManagerService;->isTiggerActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_12

    .line 1117
    const-string/jumbo v2, "finish caller and above all"

    invoke-virtual {v8, v10, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1113
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1125
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "activityNdx":I
    :cond_13
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_14

    .line 1126
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    .line 1127
    .local v9, "TopActivityNdx":I
    if-ltz v9, :cond_5

    .line 1128
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1129
    .restart local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    .line 1130
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "finish-coupled"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1137
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "TopActivityNdx":I
    :cond_14
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "finishOppositeCoupled() : flags is not correct"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method public fixTask(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 421
    return-void
.end method

.method public fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 496
    return-void
.end method

.method public focusScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 532
    return-void
.end method

.method public forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 580
    return-void
.end method

.method public getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 231
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTasks(IILcom/samsung/android/dualscreen/DualScreen;)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/dualscreen/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopRunningTaskIdWithPermission(Lcom/samsung/android/dualscreen/DualScreen;)I
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 322
    const/4 v0, -0x1

    return v0
.end method

.method public getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method handleMoveTaskToScreen(IILandroid/os/Bundle;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 18
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1197
    sget-boolean v4, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1198
    sget-object v4, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMoveTaskToScreen(taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", toScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    if-lez p1, :cond_1

    if-nez p4, :cond_2

    .line 1270
    :cond_1
    :goto_0
    return-void

    .line 1204
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1205
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1206
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    const/16 v16, 0x0

    .line 1207
    .local v16, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    .line 1208
    .local v12, "isAvailableToMoveHomeTask":Z
    if-eqz v5, :cond_4

    .line 1209
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 1210
    if-nez v16, :cond_3

    .line 1211
    sget-object v4, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "top task is null"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    monitor-exit v17

    goto :goto_0

    .line 1269
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "isAvailableToMoveHomeTask":Z
    .end local v16    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1214
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "isAvailableToMoveHomeTask":Z
    .restart local v16    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isExpandHomeModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityRecord;->isExpandHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1216
    sget-object v4, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string v6, "allow to move Expand Home to all displays"

    invoke-static {v4, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v12, 0x1

    .line 1225
    :cond_4
    :goto_1
    const/4 v13, 0x0

    .line 1226
    .local v13, "noAnim":Z
    if-eqz p3, :cond_5

    .line 1227
    const-string/jumbo v4, "dualscreen:noanim"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1230
    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    if-eqz v12, :cond_10

    .line 1232
    :cond_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v10

    .line 1233
    .local v10, "fromScreen":Lcom/samsung/android/dualscreen/DualScreen;
    const/4 v11, 0x0

    .line 1239
    .local v11, "hadDifferentDisplayZone":Z
    move-object/from16 v0, p4

    if-ne v10, v0, :cond_8

    if-eqz v11, :cond_f

    .line 1240
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/DualScreenManagerService;->canMoveToScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .line 1243
    .local v14, "origId":J
    :try_start_2
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_d

    .line 1244
    if-eqz v13, :cond_c

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .line 1253
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/am/DualScreenManagerService;->handleFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1255
    :try_start_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    .end local v14    # "origId":J
    :goto_3
    monitor-exit v17

    goto/16 :goto_0

    .line 1218
    .end local v10    # "fromScreen":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v11    # "hadDifferentDisplayZone":Z
    .end local v13    # "noAnim":Z
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityRecord;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v4, v6, :cond_a

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_b

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityRecord;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v4, v6, :cond_4

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 1221
    :cond_b
    sget-object v4, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string v6, "allow to move SubHomeTask between SUB and EXPANDED"

    invoke-static {v4, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1222
    const/4 v12, 0x1

    goto :goto_1

    .line 1247
    .restart local v10    # "fromScreen":Lcom/samsung/android/dualscreen/DualScreen;
    .restart local v11    # "hadDifferentDisplayZone":Z
    .restart local v13    # "noAnim":Z
    .restart local v14    # "origId":J
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1255
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1250
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1258
    .end local v14    # "origId":J
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivitiesToMove:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1263
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivitiesToMove:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1266
    .end local v10    # "fromScreen":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v11    # "hadDifferentDisplayZone":Z
    :cond_10
    sget-object v4, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTaskToScreen() : cannot move task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public isExpandable(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public isTiggerActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "sourceActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 1020
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1021
    :cond_0
    sget-boolean v1, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1022
    sget-object v1, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTiggerActivity() param is not correct sourceActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_1
    :goto_0
    return v0

    .line 1027
    :cond_2
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    iget-object v1, v1, Lcom/android/server/am/DualScreenAttrs;->triggerActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-ne v1, v2, :cond_1

    .line 1032
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveTaskToScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 371
    return-void
.end method

.method public moveTaskToScreenWithPermission(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 407
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 16
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 1274
    sget-boolean v1, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1275
    sget-object v1, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange() : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    const-string/jumbo v1, "dual_screen_mode_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1361
    :cond_1
    :goto_0
    return-void

    .line 1279
    :cond_2
    const-string/jumbo v1, "desktop_mode_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1296
    const-string/jumbo v1, "dual_screen_display_chooser_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isDualScreenDisplayChooserEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    .line 1299
    sget-boolean v1, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1300
    sget-object v1, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange() : DualScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1303
    :cond_3
    const-string/jumbo v1, "dual_screen_opposite_launch_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isDualScreenOppositeLaunchEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    .line 1306
    sget-boolean v1, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1307
    sget-object v1, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange() : DualScreenFeatures.SUPPORT_OPPOSITE_LAUNCH="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    :cond_4
    const-string/jumbo v1, "dualscreen_prototype"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    sget-boolean v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_PINNED_HOME:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "subhome_package_info"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "subhome_package_info"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1315
    .local v12, "componentName":Ljava/lang/String;
    if-eqz v12, :cond_5

    const-string v1, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1316
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1317
    .local v14, "splits":[Ljava/lang/String;
    array-length v1, v14

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const-string v1, ""

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ""

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1318
    new-instance v11, Landroid/content/ComponentName;

    const/4 v1, 0x0

    aget-object v1, v14, v1

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-direct {v11, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .local v11, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 1321
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v3, 0x400

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    invoke-interface {v1, v11, v3, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1325
    :goto_1
    if-eqz v9, :cond_5

    .line 1326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/am/ActivityManagerService;->setSamsungHomeComponentName(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 1331
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "cn":Landroid/content/ComponentName;
    .end local v14    # "splits":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSamsungHomeComponentName(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 1332
    .end local v12    # "componentName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "enabled_accessibility_services"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isTalkBackEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/DualScreenPolicy;->setTalkBackEnabled(Z)V

    goto/16 :goto_0

    .line 1334
    :cond_7
    const-string/jumbo v1, "launcher_fullview_mode"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 1336
    :try_start_1
    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isExpandHomeModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/DualScreenManagerService;->getCandidateExpandedHomeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1338
    .local v2, "homeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_9

    .line 1339
    const/4 v1, 0x6

    iput v1, v2, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 1340
    iget-object v1, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 1341
    .local v10, "ar":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x6

    iput v1, v10, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_2

    .line 1359
    .end local v2    # "homeTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1343
    .restart local v2    # "homeTask":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 1359
    .end local v2    # "homeTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    monitor-exit v15

    goto/16 :goto_0

    .line 1347
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 1348
    .local v4, "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v4, :cond_9

    .line 1349
    const/4 v1, 0x1

    iput v1, v4, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 1350
    iget-object v1, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 1351
    .restart local v10    # "ar":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    iput v1, v10, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_4

    .line 1353
    .end local v10    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 1356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    const-string v5, "Launcher-SingleView"

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1322
    .end local v4    # "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "cn":Landroid/content/ComponentName;
    .restart local v12    # "componentName":Ljava/lang/String;
    .restart local v14    # "splits":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public overrideNextAppTransition(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "transit"    # I

    .prologue
    .line 756
    return-void
.end method

.method registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1426
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1427
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DUALSCREEN_TEST_SCREENOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1428
    const-string v1, "android.intent.action.DUALSCREEN_TEST_SCREENON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/DualScreenManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/DualScreenManagerService$2;-><init>(Lcom/android/server/am/DualScreenManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1442
    return-void
.end method

.method public registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    .line 680
    return-void
.end method

.method public registerExpandableActivity(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 701
    return-void
.end method

.method public reportSContextChange(Landroid/hardware/scontext/SContextEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 1405
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1406
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportSCotextChange() : event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    if-eqz p1, :cond_1

    .line 1409
    const/16 v2, 0x3ee

    .line 1410
    .local v2, "what":I
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1411
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 1412
    const/16 v2, 0x3ee

    .line 1418
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1420
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1422
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "scontext":Landroid/hardware/scontext/SContext;
    .end local v2    # "what":I
    :cond_1
    return-void

    .line 1413
    .restart local v1    # "scontext":Landroid/hardware/scontext/SContext;
    .restart local v2    # "what":I
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 1414
    const/16 v2, 0x3ef

    goto :goto_0
.end method

.method public reportScreenFocusChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    const/16 v5, 0x3eb

    .line 1382
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1383
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportScreenFocusChanged() : displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    .line 1386
    .local v0, "focusedScreen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v2, :cond_1

    .line 1387
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportScreenFocusChanged() : unknown screen"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1391
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1392
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reportShrinkRequestState(Z)V
    .locals 5
    .param p1, "shrinkRequested"    # Z

    .prologue
    const/16 v4, 0x3ed

    .line 1396
    sget-boolean v1, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1397
    sget-object v1, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportShrinkRequestState() : shrinkRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1401
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    return-void
.end method

.method public requestExpandedDisplayOrientation(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .prologue
    .line 853
    return-void
.end method

.method public requestOppositeDisplayOrientation(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .prologue
    .line 789
    return-void
.end method

.method public sendExpandRequest(I)V
    .locals 6
    .param p1, "targetTaskId"    # I

    .prologue
    .line 935
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 936
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExpandRequest() taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 940
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 941
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_1

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid task id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : sendExpandRequest() from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 955
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 949
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 950
    .local v2, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->isExpandable:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_2

    .line 952
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/16 v5, 0xc9

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityStack;->sendExpandRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 955
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    return-void
.end method

.method public sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V
    .locals 7
    .param p1, "targetTaskId"    # I
    .param p2, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 960
    sget-boolean v3, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 961
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendShrinkRequest() taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    if-nez p2, :cond_1

    .line 965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter. toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : sendShrinkRequest() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 972
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 973
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 974
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_2

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid task id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : sendShrinkRequest() from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .restart local v0    # "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 991
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 982
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 983
    .local v2, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isCoupled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_4

    .line 987
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    const/16 v6, 0x67

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->sendShrinkRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;II)V

    .line 991
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    return-void
.end method

.method public setExpandable(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "expandable"    # Z

    .prologue
    .line 914
    return-void
.end method

.method public setFinishWithCoupledTask(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finish"    # Z

    .prologue
    .line 996
    sget-boolean v2, Lcom/android/server/am/DualScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 997
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFinishWithCoupledTask() finish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1001
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1002
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid token: setFinishWithCoupledTask(token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", finish) from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1010
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2

    .line 1011
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p2}, Lcom/android/server/am/TaskRecord;->setFinishWithCoupledTask(Z)V

    .line 1012
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1013
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/am/TaskRecord;->setFinishWithCoupledTask(Z)V

    .line 1016
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1450
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1451
    monitor-exit v1

    .line 1452
    return-void

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public swapTopTask()V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1455
    new-instance v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .line 1456
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v0, p0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->setOnSettingChangedListener(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->init()V

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isDualScreenDisplayChooserEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    .line 1462
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : DualScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isDualScreenOppositeLaunchEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    .line 1467
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : DualScreenFeatures.SUPPORT_OPPOSITE_LAUNCH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService;->mDualScreenSettings:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isDesktopModeEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DESKTOP_MODE:Z

    .line 1472
    sget-object v0, Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : DualScreenFeatures.SUPPORT_DESKTOP_MODE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DESKTOP_MODE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void
.end method

.method public unfixTask(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 459
    return-void
.end method

.method public unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 607
    return-void
.end method

.method public unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    .line 1162
    return-void
.end method

.method public unregisterExpandableActivity(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1181
    return-void
.end method
