.class public Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secvision/sef/SEF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioJPEGData"
.end annotation


# instance fields
.field public audio_count:I

.field public endOffset:Ljava/util/ArrayList;

.field public filename:Ljava/lang/String;

.field public startOffset:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    .line 2241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    .line 2242
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    .line 2243
    invoke-direct {p0}, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->resetAudioJpegData()V

    .line 2244
    return-void
.end method

.method private resetAudioJpegData()V
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2180
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2181
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    .line 2182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->filename:Ljava/lang/String;

    .line 2183
    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .locals 1

    .prologue
    .line 2198
    iget v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 2222
    if-gez p1, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return v0

    .line 2224
    :cond_1
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getStartOffset(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 2207
    if-gez p1, :cond_1

    .line 2212
    :cond_0
    :goto_0
    return v0

    .line 2209
    :cond_1
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
