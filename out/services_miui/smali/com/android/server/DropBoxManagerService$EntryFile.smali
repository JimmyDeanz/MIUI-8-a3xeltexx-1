.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final file:Ljava/io/File;

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 584
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 585
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 586
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 588
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 541
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, p2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    int-to-long v8, p2

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 543
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "name":Ljava/lang/String;
    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 545
    .local v0, "at":I
    if-gez v0, :cond_0

    .line 546
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 547
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 548
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 576
    :goto_0
    return-void

    .line 552
    :cond_0
    const/4 v2, 0x0

    .line 553
    .local v2, "flags":I
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 554
    const-string v6, ".gz"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 555
    or-int/lit8 v2, v2, 0x4

    .line 556
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 558
    :cond_1
    const-string v6, ".lost"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 559
    or-int/lit8 v2, v2, 0x1

    .line 560
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 571
    :goto_1
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 574
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 575
    .local v4, "millis":J
    :goto_2
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    goto :goto_0

    .line 561
    .end local v4    # "millis":J
    :cond_2
    const-string v6, ".txt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 562
    or-int/lit8 v2, v2, 0x2

    .line 563
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 564
    :cond_3
    const-string v6, ".dat"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 565
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 567
    :cond_4
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 568
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v4, 0x0

    .restart local v4    # "millis":J
    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 4
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "flags"    # I
    .param p7, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 505
    :cond_0
    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 506
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 507
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 508
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    const-string v0, ".txt"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_2

    const-string v0, ".gz"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 512
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1
    const-string v0, ".dat"

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 516
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 527
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 528
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 529
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 531
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 532
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .locals 8
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 480
    iget-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v6, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    iget-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v6, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 482
    :cond_2
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0

    .line 483
    :cond_3
    iget-object v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 485
    :cond_4
    if-ne p0, p1, :cond_5

    move v0, v2

    goto :goto_0

    .line 486
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-le v0, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    .line 488
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 471
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result v0

    return v0
.end method
