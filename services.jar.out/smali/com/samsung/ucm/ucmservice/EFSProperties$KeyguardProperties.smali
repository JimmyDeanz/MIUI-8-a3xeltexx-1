.class public Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

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

    const/4 v0, -0x1

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 562
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 563
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 564
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 565
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 566
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 567
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 568
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 569
    return-void
.end method

.method public constructor <init>([B[BIIIIII)V
    .locals 0
    .param p1, "csName"    # [B
    .param p2, "AID"    # [B
    .param p3, "storageType"    # I
    .param p4, "enabledSCP"    # I
    .param p5, "pinMinLength"    # I
    .param p6, "pinMaxLength"    # I
    .param p7, "pukMinLength"    # I
    .param p8, "pukMaxLength"    # I

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 551
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 552
    iput p3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 553
    iput p4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 554
    iput p5, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 555
    iput p6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 556
    iput p7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 557
    iput p8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 558
    return-void
.end method
