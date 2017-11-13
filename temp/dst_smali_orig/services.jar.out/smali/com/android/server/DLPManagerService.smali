.class public Lcom/android/server/DLPManagerService;
.super Landroid/content/IDLPManager$Stub;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DLPManagerService$DLPHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DLPManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    :try_start_0
    const-string v1, "dlp_sdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/IDLPManager$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    iput-object v0, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    sput-object p1, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DLPManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/DLPManagerService$DLPHandler;

    iget-object v1, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DLPManagerService$DLPHandler;-><init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    return-void
.end method

.method public static native Native_Dlp_LockDLP(I)I
.end method

.method public static native Native_Dlp_SetDLPExpiry(II)I
.end method

.method public static native Native_Dlp_UnlockDLP(I)I
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const-string v1, "DLPManagerService"

    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkisSystemCaller()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    const-string v4, "DLPManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLP : checkisSystemCaller : calling uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->getCallerPackage()Ljava/lang/String;

    move-result-object v0

    .local v0, "callerPackage":Ljava/lang/String;
    sget-object v4, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    const-string v4, "android"

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v4, Lcom/android/server/DLPManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallerPackage()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callerPid":I
    const/4 v2, 0x0

    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportedDevice()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public lockDLP(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_lockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DLPManagerService"

    const-string v4, "DLP : DLP_lockDLP : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/DLPManagerService;->Native_Dlp_LockDLP(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DLPManagerService"

    const-string v4, "Error to handle DLP_lockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in Lock DLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method

.method public setDLPExpiry(II)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "expiry"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DLPManagerService"

    const-string v4, "DLP : DLP_SetDLPExpiry : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/DLPManagerService;->Native_Dlp_SetDLPExpiry(II)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in setting expiry time"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DLPManagerService"

    const-string v2, "systemReady DLP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "DLPManagerService"

    const-string v2, "DLPManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "DLPManagerService"

    const-string v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/DLPManagerService$DLPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DLPManagerService$DLPHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "DLPManagerService"

    const-string v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlockDLP(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_unlockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DLPManagerService"

    const-string v4, "DLP : DLP_unlockDLP : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/DLPManagerService;->Native_Dlp_UnlockDLP(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DLPManagerService"

    const-string v4, "Error to handle SDP_unlockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in Unlock DLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method
