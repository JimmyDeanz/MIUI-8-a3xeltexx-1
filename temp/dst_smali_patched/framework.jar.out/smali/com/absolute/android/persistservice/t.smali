.class public Lcom/absolute/android/persistservice/t;
.super Lcom/absolute/android/persistence/IABTLogIterator$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/absolute/android/persistservice/v;

.field private b:I

.field private c:Ljava/io/File;

.field private d:J

.field private e:Z


# direct methods
.method protected constructor <init>(ILcom/absolute/android/persistservice/v;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTLogIterator$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/t;->e:Z

    iput p1, p0, Lcom/absolute/android/persistservice/t;->b:I

    iput-object p2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/absolute/android/persistservice/t;->d:J

    return-void
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-wide v4, p0, Lcom/absolute/android/persistservice/t;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget v6, p0, Lcom/absolute/android/persistservice/t;->b:I

    invoke-virtual {v5, v4, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-wide v6, p0, Lcom/absolute/android/persistservice/t;->d:J

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/absolute/android/persistservice/v;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/absolute/android/persistservice/t;->d:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got FileNotFoundException reading log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got IO exception reading log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getNext(I)[Lcom/absolute/android/persistence/LogEntry;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-boolean v1, p0, Lcom/absolute/android/persistservice/t;->e:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    :cond_1
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_7

    iput-boolean v2, p0, Lcom/absolute/android/persistservice/t;->e:Z

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/absolute/android/persistence/LogEntry;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/absolute/android/persistence/LogEntry;

    :cond_4
    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/absolute/android/persistservice/v;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/absolute/android/persistservice/t;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    invoke-direct {p0, v3, p1}, Lcom/absolute/android/persistservice/t;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    goto :goto_0

    :cond_7
    iput-object v1, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    iput-wide v6, p0, Lcom/absolute/android/persistservice/t;->d:J

    goto :goto_1
.end method
