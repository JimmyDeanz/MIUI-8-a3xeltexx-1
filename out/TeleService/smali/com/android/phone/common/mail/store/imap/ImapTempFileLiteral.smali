.class public Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;
.super Lcom/android/phone/common/mail/store/imap/ImapString;
.source "ImapTempFileLiteral.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mFile:Ljava/io/File;

.field private final mSize:I


# direct methods
.method constructor <init>(Lcom/android/phone/common/mail/FixedLengthInputStream;)V
    .locals 4
    .param p1, "stream"    # Lcom/android/phone/common/mail/FixedLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;-><init>()V

    .line 38
    const-string v1, "ImapTempFileLiteral"

    iput-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/android/phone/common/mail/FixedLengthInputStream;->getLength()I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mSize:I

    .line 47
    const-string v1, "imap"

    const-string v2, ".tmp"

    invoke-static {}, Lcom/android/phone/common/mail/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v0, "out":Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->destroy()V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string v1, "ImapTempFileLiteral"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "ImapTempFileLiteral"

    const-string v2, "ImapTempFileLiteral: Temp file not found"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v4, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->getAsStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 92
    .local v0, "bytes":[B
    array-length v2, v0

    const/high16 v3, 0x200000

    if-le v2, v3, :cond_0

    .line 93
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ImapTempFileLiteral"

    const-string v3, "ImapTempFileLiteral: Error while reading temp file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    const-string v2, ""

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 95
    .restart local v0    # "bytes":[B
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/phone/common/mail/utils/Utility;->fromAscii([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "{%d byte literal(file)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
