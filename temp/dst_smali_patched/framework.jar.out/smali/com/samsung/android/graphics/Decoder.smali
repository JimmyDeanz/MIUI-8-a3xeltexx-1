.class public Lcom/samsung/android/graphics/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/Decoder$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Decoder"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "MMCodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    if-eqz p0, :cond_1

    if-lez p2, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "tmp":[I
    const-string v2, "nofile"

    move-object/from16 v0, p0

    array-length v5, v0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/graphics/Decoder;->nativedecinstance(Ljava/lang/String;[BIII[I)J

    move-result-wide v12

    .local v12, "secmmfd":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    array-length v11, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {v9 .. v15}, Lcom/samsung/android/graphics/Decoder;->nativeDecodeByteArray([BIIJILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v7    # "tmp":[I
    .end local v12    # "secmmfd":J
    :goto_0
    return-object v2

    .restart local v7    # "tmp":[I
    .restart local v12    # "secmmfd":J
    :cond_0
    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .end local v7    # "tmp":[I
    .end local v12    # "secmmfd":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    if-eqz p0, :cond_1

    if-lez p2, :cond_1

    if-ge p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/graphics/Decoder;->nativeCreateFds()J

    move-result-wide v2

    .local v2, "secmmfd":J
    const/4 v5, 0x2

    new-array v4, v5, [I

    .local v4, "tmp":[I
    array-length v5, p0

    invoke-static {v2, v3, p0, p1, v5}, Lcom/samsung/android/graphics/Decoder;->nativecopybytebuffer(J[BII)I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/graphics/Decoder;->nativegetImageinfo(J[I)I

    invoke-static {v2, v3, v4, p3}, Lcom/samsung/android/graphics/Decoder;->doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "mBm":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/samsung/android/graphics/Decoder;->nativefreeFds(J)I

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/samsung/android/graphics/Decoder;->getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p3, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p3, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "mBm":Landroid/graphics/Bitmap;
    .end local v2    # "secmmfd":J
    .end local v4    # "tmp":[I
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v5, v0, [I

    .local v5, "tmp":[I
    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/Decoder;->nativedecinstance(Ljava/lang/String;[BIII[I)J

    move-result-wide v6

    .local v6, "secmmfd":J
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    invoke-static {p0, v6, v7, v4, v1}, Lcom/samsung/android/graphics/Decoder;->nativeDecodeFile(Ljava/lang/String;JILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v5    # "tmp":[I
    .end local v6    # "secmmfd":J
    :cond_0
    :goto_0
    return-object v1

    .restart local v5    # "tmp":[I
    .restart local v6    # "secmmfd":J
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/graphics/Decoder;->nativeCreateFds()J

    move-result-wide v2

    .local v2, "secmmfd":J
    const/4 v5, 0x2

    new-array v4, v5, [I

    .local v4, "tmp":[I
    invoke-static {v2, v3, p0}, Lcom/samsung/android/graphics/Decoder;->nativecopyfilename(JLjava/lang/String;)I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/graphics/Decoder;->nativegetImageinfo(J[I)I

    invoke-static {v2, v3, v4, p1}, Lcom/samsung/android/graphics/Decoder;->doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "mBm":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/samsung/android/graphics/Decoder;->nativefreeFds(J)I

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/graphics/Decoder;->getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p1, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p1, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "mBm":Landroid/graphics/Bitmap;
    .end local v2    # "secmmfd":J
    .end local v4    # "tmp":[I
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "secmmfd"    # J
    .param p2, "tmp"    # [I
    .param p3, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v4, 0x0

    aget v1, p2, v4

    .local v1, "img_wid":I
    const/4 v4, 0x1

    aget v0, p2, v4

    .local v0, "img_hei":I
    if-eq v1, v6, :cond_0

    if-eq v0, v6, :cond_0

    iget-boolean v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_2

    iput v1, p3, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    iput v0, p3, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    iget-object v2, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget v3, p3, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    .local v3, "samplesize":I
    if-nez v3, :cond_3

    const/4 v3, 0x1

    :cond_3
    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    div-int v1, v4, v3

    add-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    div-int v0, v4, v3

    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v1, :cond_4

    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_5

    :cond_4
    const-string v4, "Decoder"

    const-string v5, "inBitmap Erraneous\n"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "mBm":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v2, :cond_0

    invoke-static {p0, p1, v2}, Lcom/samsung/android/graphics/Decoder;->nativelockBitmap(JLandroid/graphics/Bitmap;)I

    invoke-static {p0, p1, v3}, Lcom/samsung/android/graphics/Decoder;->nativeDecode(JI)I

    invoke-static {v2}, Lcom/samsung/android/graphics/Decoder;->nativeunlockBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_0

    .end local v2    # "mBm":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v2, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    .restart local v2    # "mBm":Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v2    # "mBm":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {v1, v0}, Lcom/samsung/android/graphics/Decoder;->nativeCreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "mBm":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method protected static getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p0, "options"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inMutable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->isPreview:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    :cond_0
    return-object v0
.end method

.method private static native nativeCreateBitmap(II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFds()J
.end method

.method private static native nativeDecode(JI)I
.end method

.method private static native nativeDecodeByteArray([BIIJILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;JILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method private static native nativecopybytebuffer(J[BII)I
.end method

.method private static native nativecopyfilename(JLjava/lang/String;)I
.end method

.method private static native nativedecinstance(Ljava/lang/String;[BIII[I)J
.end method

.method private static native nativefreeFds(J)I
.end method

.method private static native nativegetImageinfo(J[I)I
.end method

.method private static native nativelockBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeunlockBitmap(Landroid/graphics/Bitmap;)I
.end method
