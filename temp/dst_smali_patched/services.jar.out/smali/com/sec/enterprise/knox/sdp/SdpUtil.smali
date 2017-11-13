.class public Lcom/sec/enterprise/knox/sdp/SdpUtil;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/sdp/SdpUtil$1;,
        Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;,
        Lcom/sec/enterprise/knox/sdp/SdpUtil$EngineRemovedEvent;,
        Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;,
        Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;
    }
.end annotation


# static fields
.field private static final ANDROID_DEFAULT_ALIAS:Ljava/lang/String; = "android_"

.field private static final ANDROID_DEFAULT_ALIAS_MAX:Ljava/lang/String; = "android_999"

.field private static final ANDROID_DEFAULT_USER_ID_MAX:I = 0x3e7

.field private static final ANDROID_DEFAULT_USER_ID_MIN:I = 0x0

.field private static final SDK_CURRENT_VERSION:D = 1.1

.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final SDK_VERSION_1_0:D = 1.0

.field private static final SDK_VERSION_1_1:D = 1.1

.field public static final SERVICE_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SdpUtil"

.field private static mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

.field private static final runAllConvert:Z


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mBinderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    const/16 v1, -0x63

    .local v1, "res":I
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpUtil"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public static extractAndroidDefaultUserId(Ljava/lang/String;)I
    .locals 14
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const-string v6, "android_999"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    const-string v6, "android_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    const-string v6, "android_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "android_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v1, v6, v7

    .local v1, "digitNum":I
    const-string v6, "android_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "strUserId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "chrArrayUserId":[C
    const/4 v5, 0x0

    .local v5, "userId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v6, v0, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-char v6, v0, v2

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    .local v3, "num":I
    const-string v6, "SdpUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_0

    add-int/2addr v5, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-double v6, v5

    int-to-double v8, v3

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    sub-int v12, v1, v2

    add-int/lit8 v12, v12, -0x1

    int-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    goto :goto_1

    .end local v3    # "num":I
    :cond_1
    const/4 v5, -0x1

    .end local v0    # "chrArrayUserId":[C
    .end local v1    # "digitNum":I
    .end local v2    # "i":I
    .end local v4    # "strUserId":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_2
    :goto_2
    return v5

    :cond_3
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public static getAndroidDefaultAlias(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mSdpUtil:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    return-object v0
.end method

.method public static isAndroidDefaultAlias(Ljava/lang/String;)Z
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v0

    .local v0, "userId":I
    const-string v2, "SdpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detecected userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_2

    const/16 v2, 0x3e7

    if-le v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAndroidDefaultUser(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxWorkspace(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->enforcePermission()V

    const/4 v0, 0x0

    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "SdpUtil"

    const-string v4, "getEngineInfo :: Failed to call getEngineInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "SdpUtil"

    const-string v4, "getEngineInfo :: Failed to talk with sdp service..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v3

    :cond_1
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "ret":D
    const-string v4, "sdp"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v1

    .local v1, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/sec/sdp/ISdpManagerService;->getSupportedSDKVersion()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v4

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "SdpUtil"

    const-string v5, "Failed to talk with sdp service... The device may not support SDP..."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public isSdpSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/sec/sdp/ISdpManagerService;->isSdpSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpUtil"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Ljava/lang/String;Lcom/sec/enterprise/knox/sdp/SdpStateListener;)Z
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    .prologue
    const/4 v4, 0x0

    const-string v5, "sdp"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v3

    .local v3, "service":Lcom/sec/sdp/ISdpManagerService;
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p2, v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;Lcom/sec/enterprise/knox/sdp/SdpStateListener;Lcom/sec/enterprise/knox/sdp/SdpUtil$1;)V

    .local v0, "bl":Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;
    invoke-interface {v3, p1, v0}, Lcom/sec/sdp/ISdpManagerService;->registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I

    move-result v2

    .local v2, "ret":I
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "bl":Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "SdpUtil"

    const-string v6, "RemoteException from call registerListener"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/sec/enterprise/knox/sdp/SdpStateListener;)Z
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    .prologue
    const/4 v6, 0x0

    const-string v7, "sdp"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v4

    .local v4, "service":Lcom/sec/sdp/ISdpManagerService;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v7, p0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;

    .local v0, "bl":Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;
    # invokes: Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/sec/enterprise/knox/sdp/SdpStateListener;
    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;->access$100(Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    move-result-object v7

    if-ne v7, p2, :cond_2

    iget-object v7, p0, Lcom/sec/enterprise/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v4, p1, v0}, Lcom/sec/sdp/ISdpManagerService;->unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "ret":I
    if-nez v3, :cond_0

    .end local v3    # "ret":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "SdpUtil"

    const-string v8, "RemoteException from call unregisterListener"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "bl":Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method
