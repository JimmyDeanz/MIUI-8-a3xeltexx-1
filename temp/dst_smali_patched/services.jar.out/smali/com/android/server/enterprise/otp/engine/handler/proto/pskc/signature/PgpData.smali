.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;
.super Ljava/lang/Object;
.source "PgpData.java"


# instance fields
.field private mPgpKeyId:[B

.field private mPgpKeyPacket:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPgpKeyId()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->mPgpKeyId:[B

    return-object v0
.end method

.method public getPgpKeyPacket()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->mPgpKeyPacket:[B

    return-object v0
.end method

.method public setPgpKeyId([B)V
    .locals 0
    .param p1, "mPgpKeyId"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->mPgpKeyId:[B

    return-void
.end method

.method public setPgpKeyPacket([B)V
    .locals 0
    .param p1, "mPgpKeyPacket"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->mPgpKeyPacket:[B

    return-void
.end method
