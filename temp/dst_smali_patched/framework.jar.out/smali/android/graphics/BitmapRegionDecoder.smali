.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "decoder"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v1, 0x4000

    new-array v0, v1, [B

    .local v0, "tempStorage":[B
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 14
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v9, 0x0

    .local v9, "stream":Ljava/io/InputStream;
    const-string v11, ".dcf"

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v1, Landroid/drm/DrmManagerClient;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v11, 0x7

    invoke-virtual {v1, p0, v11}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v7

    .local v7, "rightStatus":I
    if-nez v7, :cond_3

    const-string v3, "application/vnd.oma.drm.content"

    .local v3, "mimeType":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    .local v4, "fileLength":J
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0xa

    invoke-direct {v2, v11, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v2, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    invoke-virtual {v2, v11, p0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v6

    .local v6, "resultInfo":Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v6, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "status":Ljava/lang/String;
    const-string v11, "BitmapRegionDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newInstance acquireDrmInfo status is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "success"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    if-eqz v11, :cond_1

    new-instance v9, Ljava/io/ByteArrayInputStream;

    .end local v9    # "stream":Ljava/io/InputStream;
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v9    # "stream":Ljava/io/InputStream;
    invoke-static {v9, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .end local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "fileLength":J
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->release()V

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v7    # "rightStatus":I
    :cond_0
    :goto_1
    return-object v0

    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v4    # "fileLength":J
    .restart local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "rightStatus":I
    .restart local v8    # "status":Ljava/lang/String;
    :cond_1
    const-string v11, "BitmapRegionDecoder"

    const-string v12, "newInstance acquireDrmInfo resultInfo is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v11, "BitmapRegionDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newInstance FAIL status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "INFO"

    invoke-virtual {v6, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "fileLength":J
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status":Ljava/lang/String;
    :cond_3
    const-string v11, "BitmapRegionDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newInstance Rights not present. rightStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v7    # "rightStatus":I
    :cond_4
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "stream":Ljava/io/InputStream;
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v10, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1

    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v9, :cond_5

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_3
    throw v11

    :catch_1
    move-exception v12

    goto :goto_3

    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :cond_6
    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .param p2, "isPreview"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    iget-object v7, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-wide v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(J)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(J)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
