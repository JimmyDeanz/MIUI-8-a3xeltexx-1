.class public Lcom/android/phone/common/mail/internet/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/android/phone/common/mail/Body;


# instance fields
.field mBody:Ljava/lang/String;


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/TextBody;->mBody:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 39
    .local v0, "bytes":[B
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    return-void
.end method
