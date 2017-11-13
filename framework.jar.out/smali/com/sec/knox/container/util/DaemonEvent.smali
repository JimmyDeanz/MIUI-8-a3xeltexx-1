.class public Lcom/sec/knox/container/util/DaemonEvent;
.super Ljava/lang/Object;
.source "DaemonEvent.java"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    .line 41
    iput p2, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    .line 42
    iput-object p3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static filterMessageList([Lcom/sec/knox/container/util/DaemonEvent;I)[Ljava/lang/String;
    .locals 6
    .param p0, "events"    # [Lcom/sec/knox/container/util/DaemonEvent;
    .param p1, "matchCode"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 220
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 221
    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 222
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static isClassUnsolicited(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 153
    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 12
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v10, " "

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "parsed":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 176
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Insufficient arguments"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 179
    :cond_0
    const/4 v9, 0x0

    .line 183
    .local v9, "skiplength":I
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, "code":I
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 189
    const/4 v2, -0x1

    .line 190
    .local v2, "cmdNumber":I
    invoke-static {v3}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 191
    array-length v10, v8

    const/4 v11, 0x3

    if-ge v10, v11, :cond_1

    .line 192
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Insufficient arguemnts"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    .end local v2    # "cmdNumber":I
    .end local v3    # "code":I
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "problem parsing code"

    invoke-direct {v10, v11, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 195
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "cmdNumber":I
    .restart local v3    # "code":I
    :cond_1
    const/4 v10, 0x1

    :try_start_1
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    .line 202
    :cond_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "message":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 205
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v1, v5

    .line 206
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 205
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 198
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "problem parsing cmdNumber"

    invoke-direct {v10, v11, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 211
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "message":Ljava/lang/String;
    :cond_4
    new-instance v10, Lcom/sec/knox/container/util/DaemonEvent;

    invoke-direct {v10, v2, v3, v7, p0}, Lcom/sec/knox/container/util/DaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x22

    const/16 v13, 0x20

    const/4 v12, -0x1

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "DEBUG_ROUTINE":Z
    const-string v1, "unescapeArgs"

    .line 246
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 248
    .local v3, "length":I
    const/4 v2, 0x0

    .line 249
    .local v2, "current":I
    const/4 v9, -0x1

    .line 250
    .local v9, "wordEnd":I
    const/4 v7, 0x0

    .line 254
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_0

    .line 255
    const/4 v7, 0x1

    .line 256
    add-int/lit8 v2, v2, 0x1

    .line 258
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_7

    .line 260
    if-eqz v7, :cond_4

    .line 261
    move v9, v2

    .line 262
    :goto_1
    invoke-virtual {p0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 263
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_3

    .line 274
    :cond_1
    :goto_2
    if-ne v9, v12, :cond_2

    .line 275
    move v9, v3

    .line 276
    :cond_2
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "word":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v2, v10

    .line 278
    if-nez v7, :cond_5

    .line 279
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 284
    :goto_3
    const-string v10, "\\\\"

    const-string v11, "\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 285
    const-string v10, "\\\""

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 289
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 293
    .local v5, "nextSpace":I
    const-string v10, " \""

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, "nextQuote":I
    if-le v4, v12, :cond_6

    if-gt v4, v5, :cond_6

    .line 298
    const/4 v7, 0x1

    .line 299
    add-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 266
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 270
    :cond_4
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_2

    .line 281
    .restart local v8    # "word":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_6
    const/4 v7, 0x0

    .line 302
    if-le v5, v12, :cond_0

    .line 303
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 312
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    if-eq v0, p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearMessage()V

    .line 61
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearRawEvent()V

    .line 62
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearParsed()V

    .line 63
    return-void
.end method

.method public clearMessage()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 69
    :cond_0
    return-void
.end method

.method public clearParsed()V
    .locals 5

    .prologue
    .line 78
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 81
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 80
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clearRawEvent()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 75
    :cond_0
    return-void
.end method

.method public getCmdNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 237
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 238
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "errorCode":I
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 94
    .local v1, "i":I
    if-lez v1, :cond_0

    .line 96
    :goto_1
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 97
    mul-int/lit8 v0, v0, 0xa

    .line 98
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v0, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 100
    :cond_2
    if-lez v0, :cond_0

    .line 101
    mul-int/lit8 v3, v0, -0x1

    goto :goto_0
.end method

.method public isClassClientError()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassContinue()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassOk()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassServerError()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method
