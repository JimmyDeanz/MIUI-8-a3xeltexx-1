.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
.super Ljava/lang/Thread;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthenticationThread"
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field authStatus:I

.field context:Landroid/content/Context;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

.field userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1260
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->CLASS_NAME:Ljava/lang/String;

    .line 1261
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->authStatus:I

    .line 1267
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->context:Landroid/content/Context;

    .line 1268
    iput-object p3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 1269
    iput-object p4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .line 1270
    return-void
.end method


# virtual methods
.method public getAuthStatus()I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->authStatus:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Thread running!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->authStatus:I

    .line 1277
    iget v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->authStatus:I

    if-nez v1, :cond_1

    .line 1278
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Authentication successful!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1287
    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 1290
    :cond_0
    :goto_1
    return-void

    .line 1280
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Something went wrong!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1285
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1287
    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    .line 1285
    .end local v0    # "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_2

    .line 1286
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1287
    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->latch:Ljava/util/concurrent/CountDownLatch;

    :cond_2
    throw v1
.end method
