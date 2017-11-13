.class public Lcom/android/incallui/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public static getCircleAvatarBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-nez v12, :cond_1

    .line 170
    :cond_0
    const/4 v5, 0x0

    .line 218
    :goto_0
    return-object v5

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08004e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 175
    .local v2, "diameter":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 176
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 182
    .local v3, "height":I
    if-le v9, v3, :cond_2

    .line 183
    move v7, v2

    .line 184
    .local v7, "targetHeight":I
    mul-int v12, v7, v9

    :try_start_0
    div-int v8, v12, v3

    .line 185
    .local v8, "targetWidth":I
    sub-int v12, v8, v2

    div-int/lit8 v10, v12, 0x2

    .line 186
    .local v10, "x":I
    const/4 v11, 0x0

    .line 194
    .local v11, "y":I
    :goto_1
    const/4 v12, 0x1

    invoke-static {v0, v8, v7, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 201
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 204
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v1, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v12, v2, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v2, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v2, 0x2

    int-to-float v14, v14

    invoke-virtual {v1, v12, v13, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 209
    neg-int v12, v10

    int-to-float v12, v12

    neg-int v13, v11

    int-to-float v13, v13

    invoke-virtual {v1, v0, v12, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 212
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060021

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    div-int/lit8 v12, v2, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v2, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v2, 0x2

    int-to-float v14, v14

    invoke-virtual {v1, v12, v13, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 188
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "output":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "targetHeight":I
    .end local v8    # "targetWidth":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_2
    move v8, v2

    .line 189
    .restart local v8    # "targetWidth":I
    mul-int v12, v8, v3

    :try_start_1
    div-int v7, v12, v9

    .line 190
    .restart local v7    # "targetHeight":I
    const/4 v10, 0x0

    .line 191
    .restart local v10    # "x":I
    sub-int v12, v7, v2

    div-int/lit8 v11, v12, 0x2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v11    # "y":I
    goto :goto_1

    .line 195
    .end local v7    # "targetHeight":I
    .end local v8    # "targetWidth":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :catch_0
    move-exception v4

    .line 196
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string v12, "InCall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CircleAvatarBitmap cause OutOfMemoryError:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static getDefaultInCallWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getInCallWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFullScreenLargePhotoBlurBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    const/4 v2, 0x0

    .line 263
    :goto_0
    return-object v2

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 260
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 261
    .local v0, "blurRadius":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 262
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 263
    goto :goto_0
.end method

.method public static getLockWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 239
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 240
    const/4 v0, 0x0

    .line 249
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-object v0

    .line 242
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    .local v1, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v3, v4}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, "nbm":Landroid/graphics/Bitmap;
    if-eq v1, v2, :cond_0

    .line 247
    invoke-static {v1, v2}, Lcom/android/incallui/ImageUtils;->recycleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 248
    invoke-static {}, Lmiui/content/res/ThemeResources;->clearLockWallpaperCache()V

    .line 249
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitMap"    # Landroid/graphics/Bitmap;
    .param p1, "newBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    :cond_0
    return-void
.end method
