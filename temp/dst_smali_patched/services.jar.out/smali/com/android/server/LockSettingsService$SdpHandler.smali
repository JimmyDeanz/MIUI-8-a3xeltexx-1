.class Lcom/android/server/LockSettingsService$SdpHandler;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LockSettingsService.SdpHandler"

    iput-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LockSettingsService$SdpHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$SdpHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsService$SdpHandler;->isPwdChangeRequested()Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LockSettingsService;->access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method enroll(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$5;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method enrollInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll :: enrolling user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/sdp/internal/SdpAuthenticator;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll :: Failed to enroll sdp user... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll :: Failed to enroll sdp user... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method lock(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$SdpHandler$4;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method migrateCredential(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$6;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method migrateCredentialInternal(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const-string v5, "LockSettingsService.SdpHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrateCredential :: migrating for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "result":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v5

    invoke-virtual {v5, v0, p2, p3}, Lcom/sec/sdp/internal/SdpAuthenticator;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v5, "LockSettingsService.SdpHandler"

    const-string v6, "migrateCredential :: Successful..!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :goto_1
    move v4, v3

    .restart local v4    # "result":I
    goto :goto_0

    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LockSettingsService.SdpHandler"

    const-string v6, "migrateCredential :: Failed to migrate backup pin... "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method notifyVerified(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method notifyVerified(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LockSettingsService$SdpHandler;->notifyVerified(II)V

    return-void
.end method

.method removeKeyPair(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "res":Z
    iget-object v1, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "LockSettingsService.SdpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeKeyPair :: User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "LockSettingsService.SdpHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeKeyPair :: Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/LockSettingsService$SdpHandler$1;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setPasswordInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPassword :: Set new credential for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPassword :: SUCCESS!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPassword :: Failed to set new password... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService.SdpHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPassword :: Failed to set new password... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method unlock(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$SdpHandler$2;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method unlock(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/LockSettingsService$SdpHandler$3;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method verifyInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlock :: Unlocking user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/LockSettingsService$SdpHandler;->isPwdChangeRequested()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/sdp/internal/SdpAuthenticator;->getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/sdp/internal/SdpAuthenticator;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->notifyVerified(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlock :: Failed to unlock engine... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService.SdpHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlock :: Failed to unlock engine... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
