.class public Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
.super Ljava/lang/Object;
.source "WrappedMessageData.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "WrappedMessageData"

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mPrefix:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    return-void
.end method


# virtual methods
.method extractInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-object v2

    .line 100
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "WrappedMessageData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractInteger - could not parse integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method extractString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 84
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 73
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/phone/vvm/omtp/OmtpConstants;->possibleValuesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 74
    .local v1, "possibleValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 78
    aget-object v4, v1, v0

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const-string v4, "WrappedMessageData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractString - value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" of field \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not allowed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 84
    goto :goto_0
.end method

.method extractTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-object v2

    .line 121
    :cond_0
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy HH:mm Z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/text/ParseException;
    const-string v3, "WrappedMessageData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractTime - could not parse time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrappedMessageData [mFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->mFields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
