.class public Lcom/android/server/QuickConnectService;
.super Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_AFW_TOAST:I = 0x7d1

.field private static final MSG_SHOW_KNOX_TOAST:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "QuickConnectService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedProfileFocused:Z

.field private final mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z

    new-instance v1, Lcom/android/server/QuickConnectService$1;

    invoke-direct {v1, p0}, Lcom/android/server/QuickConnectService$1;-><init>(Lcom/android/server/QuickConnectService;)V

    iput-object v1, p0, Lcom/android/server/QuickConnectService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/QuickConnectService$2;

    invoke-direct {v1, p0}, Lcom/android/server/QuickConnectService$2;-><init>(Lcom/android/server/QuickConnectService;)V

    iput-object v1, p0, Lcom/android/server/QuickConnectService;->mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    iput-object p1, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QuickConnectService;->mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickConnectService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/QuickConnectService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/QuickConnectService;->startSconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/QuickConnectService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    iget-object v0, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    iget-object v0, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/QuickConnectService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/QuickConnectService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z

    return p1
.end method

.method private getSubDisplayTopActivityComponentName()Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v5, v5}, Landroid/app/ActivityManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private startSconnect()V
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "sConnectIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.sconnect"

    const-string v3, "com.samsung.android.sconnect.central.ui.SconnectDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "QuickConnectService"

    const-string v3, "startSconnect - Start S-Connect!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sConnectIntent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception - ActivityNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v3

    if-nez p1, :cond_0

    :try_start_0
    const-string v4, "QuickConnectService"

    const-string v5, "registerCallback >>> binder is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string v4, "QuickConnectService"

    const-string v5, "registerCallback >>> componentName is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback >>> Input listener ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .local v1, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v1, :cond_3

    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback >>> Compare listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback >>> binder equal listener token : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto/16 :goto_0

    :cond_3
    const-string v4, "QuickConnectService"

    const-string v5, "registerCallback >>> Compare listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    new-instance v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .end local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;-><init>(Lcom/android/server/QuickConnectService;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .restart local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-nez v1, :cond_5

    const-string v4, "QuickConnectService"

    const-string v5, "registerCallback >>> QuickConnectListenerInfo return null. Do not register."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public selectedItemCallback()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/PersonaManager;->isKnoxAppRunning(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/QuickConnectService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v6, "QuickConnectService"

    const-string v7, "Preventing launch of QuickConnect from KNOX"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/QuickConnectService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v6, "QuickConnectService"

    const-string v7, "Preventing launch of QuickConnect from Managed profile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v7

    const/4 v1, 0x0

    .local v1, "isDualDispaly":Z
    const/4 v3, 0x0

    .local v3, "subDisplayTopComponentName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, "subListener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/QuickConnectService;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .local v5, "topComponentName":Landroid/content/ComponentName;
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedItemCallback - topComponentName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DUAL_DISPLAY"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/QuickConnectService;->getSubDisplayTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedItemCallback - subDisplayTopComponentName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .local v2, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-nez v2, :cond_4

    const-string v6, "QuickConnectService"

    const-string v8, "selectedItemCallback - listener is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v5    # "topComponentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .restart local v5    # "topComponentName":Landroid/content/ComponentName;
    :cond_4
    :try_start_1
    iget-object v6, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    if-nez v6, :cond_5

    const-string v6, "QuickConnectService"

    const-string v8, "selectedItemCallback - listener.component is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedItemCallback : Search List "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedItemCallback - Start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->callback()V

    monitor-exit v7

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v2

    goto/16 :goto_1

    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_7
    if-eqz v4, :cond_8

    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedItemCallback(subDisplay) - Start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->callback()V

    monitor-exit v7

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/server/QuickConnectService;->startSconnect()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    monitor-enter v4

    if-nez p1, :cond_0

    :try_start_0
    const-string v5, "QuickConnectService"

    const-string v6, "unregisterCallback >>> binder is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    const-string v5, "QuickConnectService"

    const-string v6, "unregisterCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    iget-object v5, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .local v1, "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v1, :cond_2

    const-string v5, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unregisterCallback >>> Compare listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_2
    const-string v5, "QuickConnectService"

    const-string v6, "unregisterCallback >>> Compare listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_3
    if-nez v2, :cond_4

    :try_start_1
    const-string v5, "QuickConnectService"

    const-string v6, "unregisterCallback >>> listener is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterCallback >>> Removed listener ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_6
    iget-object v3, p0, Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    const/4 v3, 0x1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
