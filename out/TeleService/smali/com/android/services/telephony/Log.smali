.class public final Lcom/android/services/telephony/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static DEBUG:Z

.field public static final ERROR:Z

.field public static final INFO:Z

.field public static VERBOSE:Z

.field public static final WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/services/telephony/Log;->DEBUG:Z

    .line 36
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->INFO:Z

    .line 39
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/services/telephony/Log;->VERBOSE:Z

    .line 40
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->WARN:Z

    .line 41
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->ERROR:Z

    return-void

    :cond_3
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    if-eqz p2, :cond_0

    :try_start_0
    array-length v2, p2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 181
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 174
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ife":Ljava/util/IllegalFormatException;
    const-string v2, "Log"

    const-string v3, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/android/services/telephony/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (An error occurred while formatting the message.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/services/telephony/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_0
    return-void
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/16 v4, 0x10

    .line 154
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 156
    .local v1, "hex":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 157
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 158
    .local v0, "byteIntValue":I
    if-ge v0, v4, :cond_0

    .line 159
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "byteIntValue":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    if-nez p0, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/services/telephony/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 46
    const-string v0, "Telephony"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "pii"    # Ljava/lang/Object;

    .prologue
    .line 135
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static secureHash([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 144
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 148
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 150
    .local v2, "result":[B
    invoke-static {v2}, Lcom/android/services/telephony/Log;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "Telephony"

    invoke-static {p0, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/services/telephony/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/services/telephony/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "Telephony"

    invoke-static {p0, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Telephony"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    const-string v0, "Telephony"

    invoke-static {p0, p2, p3}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-void
.end method
