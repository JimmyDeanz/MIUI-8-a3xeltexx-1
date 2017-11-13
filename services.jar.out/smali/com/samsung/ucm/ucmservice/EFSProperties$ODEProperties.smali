.class public Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 455
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 456
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 457
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 458
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 459
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 460
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 461
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 462
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 463
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 464
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 465
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 466
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 467
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 468
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 469
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 470
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 471
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 472
    return-void
.end method

.method public constructor <init>(I[BIIIIIIIII[BII[B[BI[B[B)V
    .locals 1
    .param p1, "enabledUCSInODE"    # I
    .param p2, "AID"    # [B
    .param p3, "storageType"    # I
    .param p4, "enabledSCP"    # I
    .param p5, "enabledWrap"    # I
    .param p6, "pinMinLength"    # I
    .param p7, "pinMaxLength"    # I
    .param p8, "authMode"    # I
    .param p9, "authMaxCnt"    # I
    .param p10, "pukMinLength"    # I
    .param p11, "pukMaxLength"    # I
    .param p12, "csName"    # [B
    .param p13, "CertAdminID"    # I
    .param p14, "CertUserID"    # I
    .param p15, "CertAlias"    # [B
    .param p16, "CertLocation"    # [B
    .param p17, "configuratorUid"    # I
    .param p18, "cofiguratorPkg"    # [B
    .param p19, "cofiguratorSign"    # [B

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 479
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 480
    iput p3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 481
    iput p4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 482
    iput p5, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 483
    iput p6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 484
    iput p7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 485
    iput p8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 486
    iput p9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 487
    iput p10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 488
    iput p11, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 489
    iput-object p12, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 490
    iput p13, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 491
    iput p14, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 492
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 493
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 494
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 495
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 496
    return-void
.end method

.method public static getSCPTypeIndex(Ljava/lang/String;)I
    .locals 6
    .param p0, "scpType"    # Ljava/lang/String;

    .prologue
    .line 520
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v2, v4

    .line 521
    .local v2, "length":I
    const/4 v1, -0x1

    .line 522
    .local v1, "index":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    :cond_0
    const-string v4, "EFSProperties"

    const-string v5, "SCP empty, set SCP_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v4, 0x0

    .line 536
    :goto_0
    return v4

    .line 527
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "lowerSCPType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 530
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 531
    move v1, v0

    move v4, v1

    .line 532
    goto :goto_0

    .line 529
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 536
    goto :goto_0
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .locals 7
    .param p0, "storageType"    # Ljava/lang/String;

    .prologue
    .line 499
    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v3, v5

    .line 500
    .local v3, "length":I
    const/4 v1, -0x1

    .line 501
    .local v1, "index":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v2, v1

    .line 515
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v2

    .line 505
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "lowerStorageType":Ljava/lang/String;
    const-string/jumbo v5, "uicc"

    const-string/jumbo v6, "sim"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 509
    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    move v1, v0

    move v2, v1

    .line 511
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 508
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 515
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method
