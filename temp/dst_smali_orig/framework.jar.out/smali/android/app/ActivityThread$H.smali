.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final ACTIVITY_DISPLAY_ID_CHANGED:I = 0x7d0

.field public static final APPLICATION_DISPLAY_ID_CHANGED:I = 0x7d3

.field public static final APPLOCK_START_CHECK_ACTIVITY:I = 0xbb8

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATIONS_CHANGED:I = 0x7d2

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DISPLAYMETRICS_CHANGED:I = 0x44c

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_CONTEXT_RELATION_INFO:I = 0x7d1

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final FORCE_RESUME_ACTIVITY:I = 0x97

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_CONFIGURATION_CHANGED:I = 0x3e9

.field public static final MULTI_WINDOW_EXIT_BY_CLOSE_BTN:I = 0x3eb

.field public static final MULTI_WINDOW_FOCUS_CHANGED:I = 0x3ea

.field public static final MULTI_WINDOW_STYLE_CHANGED:I = 0x3e8

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESET_TARGET_HEAP_UTILIZATION:I = 0xf6

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_EXPAND_REQUEST:I = 0x7d4

.field public static final SEND_RESULT:I = 0x6c

.field public static final SEND_SHRINK_REQUEST:I = 0x7d5

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_OVERLAY_PATH:I = 0x96

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private handleMultiWindowConfigurationChanaged(I)V
    .locals 9
    .param p1, "configDiff"    # I

    .prologue
    const/16 v5, 0x180

    .local v5, "mwRealConfig":I
    and-int/lit16 v8, p1, 0x180

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v8, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .local v3, "keys":[Ljava/lang/Object;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .local v2, "key":Ljava/lang/Object;
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v8, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, p1}, Landroid/app/Activity;->onMultiWindowConfigurationChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleMultiWindowExitByCloseBtn(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->exitByCloseBtn()V

    :cond_0
    return-void
.end method

.method private handleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "notifyReason"    # I
    .param p3, "focus"    # Z
    .param p4, "keepInputMethod"    # Z

    .prologue
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2, p3, p4}, Landroid/app/Activity;->onMultiWindowFocusChanged(IZZ)V

    goto :goto_0
.end method

.method private handleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "notifyReason"    # I

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p3, :pswitch_data_0

    :cond_2
    :pswitch_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, p2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, p2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    goto :goto_0

    :pswitch_1
    const/high16 v2, 0x40000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleResetTargetHeapUtilization(Landroid/os/IBinder;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_1
    const-wide/16 v2, 0x40

    const-string v4, "activityStart"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v21, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    # invokes: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v2, v0, v3}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v21    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :sswitch_2
    const-wide/16 v2, 0x40

    const-string v4, "activityRestart"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/ActivityThread$ActivityClientRecord;

    .restart local v21    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v21

    # invokes: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v2, v0}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v21    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :sswitch_3
    const-wide/16 v2, 0x40

    const-string v4, "activityPause"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    # invokes: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    invoke-static/range {v2 .. v7}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :sswitch_4
    const-wide/16 v2, 0x40

    const-string v4, "activityPause"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_4
    # invokes: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    invoke-static/range {v2 .. v7}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    :sswitch_5
    const-wide/16 v2, 0x40

    const-string v4, "activityStop"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v3, v2, v4, v5}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_6
    const-wide/16 v2, 0x40

    const-string v4, "activityStop"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v3, v2, v4, v5}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_7
    const-wide/16 v2, 0x40

    const-string v4, "activityShowWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    # invokes: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_8
    const-wide/16 v2, 0x40

    const-string v4, "activityHideWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x0

    # invokes: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_9
    const-wide/16 v2, 0x40

    const-string v4, "activityResume"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_5
    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :sswitch_a
    const-wide/16 v2, 0x40

    const-string v4, "activityForceResume"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/ActivityThread;->handleForceCallResumeActivity(Landroid/os/IBinder;Z)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_b
    const-wide/16 v2, 0x40

    const-string v4, "activityDeliverResult"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ResultData;

    # invokes: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_c
    const-wide/16 v2, 0x40

    const-string v4, "activityDestroy"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    # invokes: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v4, v2, v3, v5, v6}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    :sswitch_d
    const-wide/16 v2, 0x40

    const-string v4, "bindApplication"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$AppBindData;

    .local v11, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    # invokes: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v2, v11}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .end local v11    # "data":Landroid/app/ActivityThread$AppBindData;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->onTerminate()V

    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :sswitch_f
    const-wide/16 v2, 0x40

    const-string v4, "activityNewIntent"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$NewIntentData;

    # invokes: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_10
    const-wide/16 v2, 0x40

    const-string v4, "broadcastReceiveComp"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ReceiverData;

    # invokes: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_11
    const-wide/16 v2, 0x40

    const-string v4, "serviceCreate"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateServiceData;

    # invokes: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_12
    const-wide/16 v2, 0x40

    const-string v4, "serviceBind"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    # invokes: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_13
    const-wide/16 v2, 0x40

    const-string v4, "serviceUnbind"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    # invokes: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_14
    const-wide/16 v2, 0x40

    const-string v4, "serviceStart"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ServiceArgsData;

    # invokes: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_15
    const-wide/16 v2, 0x40

    const-string v4, "serviceStop"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_16
    const-wide/16 v2, 0x40

    const-string v4, "configChanged"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v3, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityThread$ContextCleanupInfo;

    .local v8, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v2, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v3, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v4, v8, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    :sswitch_1a
    const-wide/16 v2, 0x40

    const-string v4, "lowMemory"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->handleLowMemory()V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_1b
    const-wide/16 v2, 0x40

    const-string v4, "activityConfigChanged"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityConfigChangeData;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/util/Pair;

    .local v16, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/app/ActivityThread$H;->handleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    goto/16 :goto_0

    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    :sswitch_1d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$H;->handleMultiWindowConfigurationChanaged(I)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/ActivityThread$MultiWindowFocusChangeData;

    .local v18, "param":Landroid/app/ActivityThread$MultiWindowFocusChangeData;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->activityToken:Landroid/os/IBinder;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->notifyReason:I

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->focus:Z

    move-object/from16 v0, v18

    iget-boolean v5, v0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->keepInputMethod:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/ActivityThread$H;->handleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V

    goto/16 :goto_0

    .end local v18    # "param":Landroid/app/ActivityThread$MultiWindowFocusChangeData;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$H;->handleMultiWindowExitByCloseBtn(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/app/ActivityThread;->handleActivityDisplayIdChanged(Landroid/os/IBinder;I)V
    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpContextRelationInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .local v10, "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v10}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Configuration;

    .local v9, "config":Landroid/content/res/Configuration;
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    iget v3, v9, Landroid/content/res/Configuration;->displayId:I

    iget v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .end local v9    # "config":Landroid/content/res/Configuration;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Landroid/app/ActivityThread;->handleConfigurationsChanged(Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_0

    .end local v10    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/app/ActivityThread;->handleApplicationDisplayIdChanged(I)V
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;I)V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/Pair;

    .local v17, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Landroid/app/ActivityThread;->handleSendExpandRequest(Landroid/os/IBinder;I)V
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V

    goto/16 :goto_0

    .end local v17    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/Integer;>;"
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/util/Pair;

    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/app/ActivityThread;->handleSendShrinkRequest(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    invoke-static {v4, v2, v3, v5}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V

    goto/16 :goto_0

    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;>;"
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_8

    :sswitch_27
    const-wide/16 v2, 0x40

    const-string v4, "backupCreateAgent"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    # invokes: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_28
    const-wide/16 v2, 0x40

    const-string v4, "backupDestroyAgent"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    # invokes: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-wide/16 v2, 0x40

    const-string v4, "providerRemove"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    :sswitch_2c
    const-wide/16 v2, 0x40

    const-string v4, "broadcastPackage"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_2d
    new-instance v3, Landroid/app/RemoteServiceException;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_2e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move v3, v2

    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    goto :goto_9

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    :sswitch_31
    const-wide/16 v2, 0x40

    const-string v4, "sleeping"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_a
    # invokes: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->access$3600(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_a

    :sswitch_32
    const-wide/16 v2, 0x40

    const-string v4, "setCoreSettings"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3700(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$UpdateCompatibilityData;

    # invokes: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    :sswitch_34
    const-wide/16 v2, 0x40

    const-string v4, "trimMemory"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto :goto_b

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    :sswitch_39
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/util/Pair;

    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_d

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_c

    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$3900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/util/Pair;

    .local v20, "pathPackagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .local v19, "path":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v19

    # invokes: Landroid/app/ActivityThread;->handleUpdateOverlayPath(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v0, v13, v3}, Landroid/app/ActivityThread;->access$4000(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v13    # "packageName":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "pathPackagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/DisplayInfo;

    # invokes: Landroid/app/ActivityThread;->handleDisplayMetricsChanged(Landroid/view/DisplayInfo;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$4100(Landroid/app/ActivityThread;Landroid/view/DisplayInfo;)V

    goto/16 :goto_0

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    # invokes: Landroid/app/ActivityThread;->checkAppLockState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$4200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x72 -> :sswitch_11
        0x73 -> :sswitch_14
        0x74 -> :sswitch_15
        0x76 -> :sswitch_16
        0x77 -> :sswitch_17
        0x78 -> :sswitch_18
        0x79 -> :sswitch_12
        0x7a -> :sswitch_13
        0x7b -> :sswitch_19
        0x7c -> :sswitch_1a
        0x7d -> :sswitch_1b
        0x7e -> :sswitch_2
        0x7f -> :sswitch_26
        0x80 -> :sswitch_27
        0x81 -> :sswitch_28
        0x82 -> :sswitch_29
        0x83 -> :sswitch_2a
        0x84 -> :sswitch_2b
        0x85 -> :sswitch_2c
        0x86 -> :sswitch_2d
        0x87 -> :sswitch_2e
        0x88 -> :sswitch_2f
        0x89 -> :sswitch_31
        0x8a -> :sswitch_32
        0x8b -> :sswitch_33
        0x8c -> :sswitch_34
        0x8d -> :sswitch_30
        0x8e -> :sswitch_35
        0x8f -> :sswitch_36
        0x90 -> :sswitch_37
        0x91 -> :sswitch_38
        0x92 -> :sswitch_39
        0x93 -> :sswitch_3a
        0x94 -> :sswitch_3b
        0x95 -> :sswitch_3c
        0x96 -> :sswitch_3d
        0x97 -> :sswitch_a
        0xf6 -> :sswitch_0
        0x3e8 -> :sswitch_1c
        0x3e9 -> :sswitch_1d
        0x3ea -> :sswitch_1e
        0x3eb -> :sswitch_1f
        0x44c -> :sswitch_3e
        0x7d0 -> :sswitch_20
        0x7d1 -> :sswitch_21
        0x7d2 -> :sswitch_22
        0x7d3 -> :sswitch_23
        0x7d4 -> :sswitch_24
        0x7d5 -> :sswitch_25
        0xbb8 -> :sswitch_3f
    .end sparse-switch
.end method
