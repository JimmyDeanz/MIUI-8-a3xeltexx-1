.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    const/16 v0, 0x2ab

    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    const/16 v0, 0x2ae

    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "ctor DirEncryptService....."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    move-result v0

    return v0
.end method

.method private authByUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .local v0, "myUID":I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSystemUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const-string v0, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findRequester(I)Ljava/lang/String;
    .locals 5
    .param p1, "uidApp"    # I

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, "myUID":I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callingPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_2
    if-eq v1, p1, :cond_3

    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    if-nez v0, :cond_4

    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_4
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v3, "user"

    goto :goto_0

    :cond_5
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v3, "dm"

    goto :goto_0
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    return-object v4
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private moveDumpstate()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v1, "trigger_restart_min_framework"

    .local v1, "ENCRYPTING_STATE":Ljava/lang/String;
    const-string v0, "trigger_restart_min_framework"

    .local v0, "ENCRYPTED_STATE":Ljava/lang/String;
    const-string v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "cryptState":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "ret":Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v7, v5

    :goto_1
    return v7

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_2

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->moveDumpstates()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const-string v8, "Can\'t get mount service"

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 4
    .param p1, "in"    # Z

    .prologue
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->SetMountSDcardToHelper(Z)V

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    const-string v1, "SetMountSDcardToHelper error: invalid uid"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check the state of external SD card mount path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v2, 0xc8

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "requester":I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, "Invalid requester"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v2, 0xcc

    goto :goto_0

    :cond_2
    const/16 v2, 0xc9

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .local v0, "dew":Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    .local v3, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v2, 0xd

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    const-string v6, "HiddenMount"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v2, 0xd

    goto :goto_1

    :cond_4
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v2, 0xca

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v2, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_0
    return-object v2

    .end local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EncPrefs found"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v1

    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_0

    .end local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const-string v3, "EncPrefs not found"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "getSDCardEncryptionPrefs error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 4

    .prologue
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const-string v1, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    const-string v0, " onCheckHoldWakeLock ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventcode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " raw: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cooked "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v1, 0x2ae

    if-ne p1, v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v2, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_1
    const/16 v1, 0x2ab

    if-ne p1, v1, :cond_0

    const/4 v1, 0x3

    aget-object v7, p3, v1

    .local v7, "status":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "reqEnc":I
    const-string v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v6, v0, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Decrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    return-void
.end method

.method public revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "container_id"    # I

    .prologue
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    const-string v1, "revertSecureStorageForKnoxMigration error: invalid uid"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setNeedToCreateKey(Z)V
    .locals 4
    .param p1, "in"    # Z

    .prologue
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    const-string v1, "setNeedToCreateKey error: invalid uid"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setNullSDCardPassword()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .local v1, "instMountService":Landroid/os/storage/IMountService;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "requester":I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "setNullSDCardPassword error: invalid uid"

    invoke-static {v5}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v5, ""

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->setNullSDCardPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "DirEncryptService"

    const-string v6, "Error while setting null password for sdcard."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v5, "Can\'t set nullpassword!"

    invoke-static {v5}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc8

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    const/4 v0, 0x1

    .local v0, "allowRequest":Z
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".*android.uid.systemui.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v3, 0xd

    goto :goto_0

    :cond_2
    const-string v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 18
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    const/16 v15, 0xc8

    .local v15, "result":I
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v4, v15

    :goto_1
    return v4

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStorageCardEncryption: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v4, v15

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v4, v15

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v4, v15

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x6

    move/from16 v0, p3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x7

    move/from16 v0, p3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v4, v15

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .local v14, "requesterid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    new-instance v11, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .local v11, "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v12

    .local v12, "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    iput v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v4, 0x4

    iput v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_8
    invoke-virtual {v12, v11}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    const/16 v4, 0xf

    monitor-exit v5

    goto/16 :goto_1

    .end local v10    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v12    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v13    # "requester":Ljava/lang/String;
    .end local v14    # "requesterid":I
    .end local v16    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v10    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v12    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v13    # "requester":Ljava/lang/String;
    .restart local v14    # "requesterid":I
    .restart local v16    # "token":J
    :cond_9
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called by: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "user"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v11}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v15, 0x8

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    move v4, v15

    goto/16 :goto_1

    :cond_a
    const/16 v15, 0x9

    goto :goto_4

    :cond_b
    iget v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v11}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v15, 0x8

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_4

    :cond_c
    const/16 v15, 0x9

    goto :goto_4

    :cond_d
    const-string v4, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v4, "setStorageCardEncryptionPolicy error: invalid uid"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const/16 v15, 0x9

    goto :goto_4

    :cond_f
    const-string v4, "Policy has already been saved."

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v15, 0xa

    goto :goto_4
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_1
.end method

.method public unmountSDCardByAdmin()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    return-void
.end method
