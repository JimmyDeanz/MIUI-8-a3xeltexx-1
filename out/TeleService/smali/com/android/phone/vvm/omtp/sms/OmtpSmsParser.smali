.class public Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;
.super Ljava/lang/Object;
.source "OmtpSmsParser.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "OmtpSmsParser"

    sput-object v0, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    .locals 5
    .param p0, "smsBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    if-nez p0, :cond_1

    move-object v0, v2

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    .local v0, "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    const-string v3, "//VVM:SYNC:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    new-instance v0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    .end local v0    # "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    const-string v3, "//VVM:SYNC:"

    const-string v4, "//VVM:SYNC:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parseSmsBody(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .restart local v0    # "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    const-string v3, "ev"

    invoke-virtual {v0, v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "triggerEvent":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 46
    sget-object v3, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->TAG:Ljava/lang/String;

    const-string v4, "Missing mandatory field: ev"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 47
    goto :goto_0

    .line 49
    .end local v1    # "triggerEvent":Ljava/lang/String;
    :cond_2
    const-string v2, "//VVM:STATUS:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    .end local v0    # "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    const-string v2, "//VVM:STATUS:"

    const-string v3, "//VVM:STATUS:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parseSmsBody(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .restart local v0    # "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    goto :goto_0
.end method

.method private static parseSmsBody(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    .local v5, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "entries":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 71
    .local v2, "entry":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "keyValue":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 70
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    .end local v2    # "entry":Ljava/lang/String;
    .end local v4    # "keyValue":[Ljava/lang/String;
    :cond_1
    return-object v5
.end method
