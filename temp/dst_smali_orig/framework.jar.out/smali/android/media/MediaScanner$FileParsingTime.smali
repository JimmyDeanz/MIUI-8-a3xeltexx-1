.class Landroid/media/MediaScanner$FileParsingTime;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileParsingTime"
.end annotation


# instance fields
.field mExtention:Ljava/lang/String;

.field mNumber:J

.field mTotalTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "extention"    # Ljava/lang/String;
    .param p2, "parsingTime"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    iput-wide p2, p0, Landroid/media/MediaScanner$FileParsingTime;->mTotalTime:J

    iput-object p1, p0, Landroid/media/MediaScanner$FileParsingTime;->mExtention:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addParsingTime(J)V
    .locals 5
    .param p1, "parsingTime"    # J

    .prologue
    iget-wide v0, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    iget-wide v0, p0, Landroid/media/MediaScanner$FileParsingTime;->mTotalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner$FileParsingTime;->mTotalTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .local v0, "averageTime":J
    iget-wide v2, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/media/MediaScanner$FileParsingTime;->mTotalTime:J

    iget-wide v4, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    div-long v0, v2, v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/MediaScanner$FileParsingTime;->mExtention:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/media/MediaScanner$FileParsingTime;->mNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/media/MediaScanner$FileParsingTime;->mTotalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
