.class public final enum Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
.super Ljava/lang/Enum;
.source "TrustedCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/TrustedCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrustedCertificateSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

.field public static final enum LOCAL:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

.field public static final enum SYSTEM:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

.field public static final enum USER:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;


# instance fields
.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    const-string v1, "SYSTEM"

    const-string/jumbo v2, "system:"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->SYSTEM:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    .line 24
    new-instance v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    const-string v1, "USER"

    const-string/jumbo v2, "user:"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->USER:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    .line 25
    new-instance v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    const-string v1, "LOCAL"

    const-string/jumbo v2, "local:"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->LOCAL:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    sget-object v1, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->SYSTEM:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->USER:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->LOCAL:Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->$VALUES:[Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->mPrefix:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    return-object v0
.end method

.method public static values()[Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->$VALUES:[Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    invoke-virtual {v0}, [Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;

    return-object v0
.end method
