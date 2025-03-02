.class Lcom/android/server/fingerprint/FingerprintsUserState;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mFingerprints:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$1;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 64
    invoke-static {p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    .line 65
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->readStateSyncLocked()V

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintsUserState;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->doWriteState()V

    return-void
.end method

.method private doWriteState()V
    .locals 12

    .prologue
    .line 162
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 166
    .local v1, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v5, 0x0

    .line 172
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 174
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 175
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 176
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 177
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    const/4 v8, 0x0

    const-string v9, "fingerprints"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 182
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 184
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    const/4 v8, 0x0

    const-string v9, "fingerprint"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const/4 v8, 0x0

    const-string v9, "fingerId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    const/4 v8, 0x0

    const-string v9, "groupId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const/4 v8, 0x0

    const-string v9, "deviceId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const/4 v8, 0x0

    const-string v9, "fingerprint"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "count":I
    .end local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "i":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 194
    .restart local v0    # "count":I
    .restart local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v4    # "i":I
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    const-string v9, "fingerprints"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 196
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 206
    return-void

    .line 199
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v7

    .line 200
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v8, "FingerprintState"

    const-string v9, "Failed to write settings, restoring backup"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 202
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Failed to write fingerprints"

    invoke-direct {v8, v9, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method

.method private getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 154
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 155
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 158
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    return-object v8
.end method

.method private static getFileForUser(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings_fingerprint.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUniqueName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 115
    const/4 v0, 0x1

    .line 118
    .local v0, "guess":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    const v3, 0x10401c1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return-object v1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 124
    goto :goto_0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 129
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x0

    .line 133
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 255
    .local v9, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_2

    const/4 v0, 0x3

    if-ne v11, v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 256
    :cond_1
    const/4 v0, 0x3

    if-eq v11, v0, :cond_0

    const/4 v0, 0x4

    if-eq v11, v0, :cond_0

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, "tagName":Ljava/lang/String;
    const-string v0, "fingerprint"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    const-string v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v2, "groupId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "groupId":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v2, "fingerId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "fingerId":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v2, "deviceId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "deviceId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "fingerId":Ljava/lang/String;
    .end local v8    # "groupId":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 237
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 238
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 242
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "fingerprints"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 247
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readStateSyncLocked()V
    .locals 7

    .prologue
    .line 210
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    :goto_0
    return-void

    .line 214
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 221
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 215
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "FingerprintState"

    const-string v5, "No fingerprint state"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing settings file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 224
    :catch_2
    move-exception v4

    move-object v0, v4

    goto :goto_1
.end method

.method private scheduleWriteStateLocked()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method


# virtual methods
.method public addFingerprint(II)V
    .locals 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFingerprint(I)V
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    .line 87
    :cond_0
    monitor-exit p0

    .line 88
    return-void

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public renameFingerprint(ILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 95
    .local v7, "old":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    .line 101
    .end local v7    # "old":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    monitor-exit p0

    .line 102
    return-void

    .line 92
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
