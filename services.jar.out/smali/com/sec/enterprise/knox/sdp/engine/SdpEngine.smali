.class public Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
.super Ljava/lang/Object;
.source "SdpEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpEngine"

.field private static _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    .line 130
    return-void
.end method

.method private static enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 486
    const/16 v1, -0x63

    .line 487
    .local v1, "res":I
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 489
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    .line 491
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpEngine"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->enforcePermission()V

    .line 55
    sget-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    .line 58
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;
        }
    .end annotation

    .prologue
    .line 85
    const/16 v1, -0xf

    .line 86
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sparse-switch v1, :sswitch_data_0

    .line 115
    :cond_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call addEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 104
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;-><init>()V

    throw v2

    .line 106
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 108
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v2

    .line 110
    :sswitch_4
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 112
    :sswitch_5
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x6 -> :sswitch_1
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_5
    .end sparse-switch
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
        }
    .end annotation

    .prologue
    .line 426
    const/16 v1, -0xf

    .line 427
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->allow(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 435
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    packed-switch v1, :pswitch_data_0

    .line 442
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call allow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 438
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 440
    :pswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 445
    :cond_1
    return-void

    .line 436
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
        }
    .end annotation

    .prologue
    .line 464
    const/16 v1, -0xf

    .line 465
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->disallow(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 473
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disallow failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    packed-switch v1, :pswitch_data_0

    .line 480
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call disallow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 476
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 478
    :pswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 483
    :cond_1
    return-void

    .line 474
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v1, -0x7

    .line 399
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->exists(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    :cond_0
    :goto_0
    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call exists"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 406
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public lock(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 227
    const/16 v1, -0xf

    .line 228
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->lock(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 236
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sparse-switch v1, :sswitch_data_0

    .line 251
    :cond_1
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 246
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 248
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public migrate(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 365
    const/16 v1, -0xf

    .line 366
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->migrate(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 373
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 374
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrate failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sparse-switch v1, :sswitch_data_0

    .line 389
    :cond_1
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call migrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 382
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 384
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 386
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 375
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeEngine(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 143
    const/16 v1, -0xf

    .line 144
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->removeEngine(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 152
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sparse-switch v1, :sswitch_data_0

    .line 167
    :cond_1
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call removeEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 162
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 164
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;
        }
    .end annotation

    .prologue
    .line 321
    const/16 v1, -0xf

    .line 322
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 329
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 330
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sparse-switch v1, :sswitch_data_0

    .line 349
    :cond_1
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 340
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 342
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 344
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2

    .line 346
    :sswitch_4
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 331
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_4
        -0x7 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;
        }
    .end annotation

    .prologue
    .line 272
    const/16 v1, -0xf

    .line 273
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->setPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 280
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 281
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sparse-switch v1, :sswitch_data_0

    .line 301
    :cond_1
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call setPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 292
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 294
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v2

    .line 296
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 298
    :sswitch_4
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 282
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_4
        -0x7 -> :sswitch_1
        -0x5 -> :sswitch_2
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 185
    const/16 v1, -0xf

    .line 186
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->unlock(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 194
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sparse-switch v1, :sswitch_data_0

    .line 214
    :cond_1
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call unlock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 205
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 207
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 211
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method
