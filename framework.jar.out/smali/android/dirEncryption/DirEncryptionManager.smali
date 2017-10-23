.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final CHANGE_ECRYPTFS_PASSWORD:I = 0xb

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/efs/"

.field public static final FLE_KEY_STORE_LEGACY:Ljava/lang/String; = "/data/system/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final IS_SUPPORT_SDCARD_SLOT:Z

.field public static final MOUNT_PATH_STATUS:I = 0xc

.field public static final MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xd

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "com.sec.app.action.START_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field public static final STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "HiddenMount"

.field private static mPolicyChanged:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->IS_SUPPORT_SDCARD_SLOT:Z

    .line 69
    const v0, -0x35014542    # -8346975.0f

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 148
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 157
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 160
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 162
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->IS_SUPPORT_SDCARD_SLOT:Z

    if-nez v0, :cond_1

    .line 166
    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 167
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 169
    :cond_1
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 2
    .param p1, "in"    # Z

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_0

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->SetMountSDcardToHelper(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 518
    const/16 v1, 0xc8

    .line 520
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 528
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 524
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 528
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 525
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 526
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 4

    .prologue
    .line 579
    const/16 v1, 0xc8

    .line 581
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 592
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 584
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 585
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 588
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 592
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 589
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 590
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentStatus()I
    .locals 4

    .prologue
    .line 536
    const/16 v1, 0xc8

    .line 538
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 550
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 541
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 542
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 545
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 550
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 546
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 547
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentUserID()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    .line 558
    const/16 v1, 0xc8

    .line 560
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 571
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 563
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 564
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 567
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 571
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 568
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 569
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPolicyChanged()Z
    .locals 1

    .prologue
    .line 676
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 3

    .prologue
    .line 601
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    .line 604
    :cond_0
    const/4 v0, 0x0

    .line 606
    .local v0, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_0
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v0

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v0

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionAppliedSDCard()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 618
    const-string v0, ".MetaEcfsFile"

    .line 619
    .local v0, "SDCARD_ENC_PREFERENCES_FILE":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "sdpath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v3

    .line 623
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v4, ".MetaEcfsFile"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalSDRemovable()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 482
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 474
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_1

    move v2, v1

    .line 475
    .restart local v2    # "result":I
    goto :goto_0

    .line 478
    .end local v2    # "result":I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_2

    move v1, v3

    :goto_1
    move v2, v1

    .line 482
    .restart local v2    # "result":I
    goto :goto_0

    .line 478
    .end local v2    # "result":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mountVolume()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 179
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "container_id"    # I

    .prologue
    .line 383
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 384
    const-string v1, "No DirEncSvc for Knox migration."

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IDirEncryptService;->revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNeedToCreateKey(Z)V
    .locals 2
    .param p1, "in"    # Z

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->setNeedToCreateKey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNullSDCardPassword()I
    .locals 4

    .prologue
    .line 651
    const/16 v1, 0xc8

    .line 652
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 660
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 656
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->setNullSDCardPassword()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 660
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 657
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 658
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 493
    const/16 v1, 0xc8

    .line 495
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 507
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 498
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 499
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 502
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 507
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 503
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 504
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPolicyChanged(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 668
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    .line 669
    return-void
.end method

.method public setSavedUserID(I)V
    .locals 1
    .param p1, "in"    # I

    .prologue
    .line 329
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 330
    return-void
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 5
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 435
    const/16 v1, 0xc8

    .line 437
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 458
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 440
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 441
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 444
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 451
    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 452
    :cond_2
    const-string/jumbo v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->unmountSDCardByAdmin()V

    .line 456
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    move v2, v1

    .line 458
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 445
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 446
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUserDiff(Z)V
    .locals 1
    .param p1, "in"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 310
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 2

    .prologue
    .line 636
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 640
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1}, Landroid/os/storage/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 291
    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 295
    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_1

    .line 296
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    move-result v1

    .line 298
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 196
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSDcardState()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->updateSDcardState()V

    .line 358
    return-void
.end method
