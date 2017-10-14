.class public Lcom/android/internal/telephony/VisualVoicemailSmsParser;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    }
.end annotation


# static fields
.field private static final ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MBOXUPDATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z
    .locals 6
    .param p0, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .local v0, "event":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "event":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 8
    .param p0, "clientPrefix"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "prefixEnd":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_1

    return-object v7

    :cond_1
    const-string v5, ":"

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "eventTypeEnd":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    return-object v7

    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "eventType":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "fields":Landroid/os/Bundle;
    if-nez v3, :cond_3

    return-object v7

    :cond_3
    new-instance v5, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "eventTypeEnd":I
    .end local v3    # "fields":Landroid/os/Bundle;
    .end local v4    # "prefixEnd":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v7
.end method

.method public static parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 6
    .param p0, "smsBody"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    :try_start_0
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "eventTypeEnd":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-object v5

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "eventType":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "fields":Landroid/os/Bundle;
    if-nez v3, :cond_2

    return-object v5

    :cond_2
    new-instance v4, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v4, v1, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "eventTypeEnd":I
    .end local v3    # "fields":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v5
.end method

.method private static parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "keyValues":Landroid/os/Bundle;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "entries":[Ljava/lang/String;
    array-length v8, v0

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v0, v6

    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "separatorIndex":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v6, 0x0

    return-object v6

    :cond_2
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "separatorIndex":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    return-object v3
.end method
