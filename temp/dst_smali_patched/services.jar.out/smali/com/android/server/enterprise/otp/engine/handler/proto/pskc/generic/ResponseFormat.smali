.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
.super Ljava/lang/Object;
.source "ResponseFormat.java"


# instance fields
.field private mCheckDigit:Z

.field private mEncoding:I

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodingToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "encoding"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x141

    if-ne p1, v1, :cond_1

    const-string v0, "DECIMAL"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x201

    if-ne p1, v1, :cond_2

    const-string v0, "HEXADECIMAL"

    goto :goto_0

    :cond_2
    const/16 v1, 0x202

    if-ne p1, v1, :cond_3

    const-string v0, "ALPHANUMERIC"

    goto :goto_0

    :cond_3
    const/16 v1, 0x203

    if-ne p1, v1, :cond_4

    const-string v0, "BASE64"

    goto :goto_0

    :cond_4
    const/16 v1, 0x204

    if-ne p1, v1, :cond_0

    const-string v0, "BINARY"

    goto :goto_0
.end method

.method public getCheckDigit()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mCheckDigit:Z

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mLength:I

    return v0
.end method

.method public setCheckDigit(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkDigit"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mCheckDigit:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mCheckDigit:Z

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const-string v0, "DECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x141

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HEXADECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x201

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    goto :goto_0

    :cond_2
    const-string v0, "ALPHANUMERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x202

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    goto :goto_0

    :cond_3
    const-string v0, "BASE64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x203

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    goto :goto_0

    :cond_4
    const-string v0, "BINARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x204

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mEncoding:I

    goto :goto_0
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 1
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->mLength:I

    :cond_0
    return-void
.end method
