.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataBitmapUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "urlname"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 85
    .local v0, "Result":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    .line 87
    .local v5, "sampleSize":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 88
    .local v1, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 95
    :try_start_0
    const-string v9, "ClipboardDataBitmapUrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "url : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 99
    .local v2, "connection":Ljava/net/URLConnection;
    const/16 v9, 0x7d0

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 100
    const/16 v9, 0xbb8

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 101
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 103
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v4, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v0

    .line 115
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :goto_0
    if-eqz v1, :cond_0

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v9, v12, :cond_1

    :cond_0
    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v9, v12, :cond_2

    .line 116
    :cond_1
    const-string v8, "ClipboardDataBitmapUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bitmapOption.outHeight :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    move-object v8, v0

    .line 149
    :goto_1
    return-object v8

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/net/MalformedURLException;
    :goto_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    move-object v7, v6

    .line 113
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    .line 107
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 108
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 112
    const/4 v0, 0x0

    move-object v7, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    .line 120
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_5
    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v9, v5

    if-lt v9, p1, :cond_3

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v9, v5

    if-lt v9, p2, :cond_3

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 123
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 124
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 127
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    if-nez v7, :cond_4

    .line 130
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5

    .line 132
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_6
    :try_start_3
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 133
    .restart local v2    # "connection":Ljava/net/URLConnection;
    const/16 v9, 0x7d0

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 134
    const/16 v9, 0xbb8

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 135
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 137
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v4, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    move-object v8, v0

    .line 149
    goto :goto_1

    .line 138
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v6, v7

    .line 139
    .end local v7    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_7
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_4
    move-exception v3

    move-object v6, v7

    .line 142
    .end local v7    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_5
    move-exception v3

    move-object v6, v7

    .line 145
    .end local v7    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_9
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v3

    goto :goto_9

    .line 141
    :catch_7
    move-exception v3

    goto :goto_8

    .line 138
    :catch_8
    move-exception v3

    goto :goto_7

    .line 110
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_4

    .line 107
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_3

    .line 104
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_b
    move-exception v3

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_2

    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_4
    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_6
.end method

.method private static findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 14
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, -0x1

    .line 233
    const/4 v11, -0x1

    .line 234
    .local v11, "orientation":I
    const/4 v6, 0x0

    .line 236
    .local v6, "_data":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    const/4 v7, 0x0

    .line 240
    .local v7, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 244
    .local v8, "columnIdx":I
    if-eq v8, v13, :cond_0

    .line 245
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 249
    :cond_0
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 250
    if-eq v8, v13, :cond_1

    .line 252
    :try_start_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 260
    .end local v8    # "columnIdx":I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-ne v11, v13, :cond_3

    .line 269
    if-nez v6, :cond_6

    .line 270
    const/4 v11, 0x0

    .line 280
    :cond_3
    :goto_2
    return v11

    .line 253
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "columnIdx":I
    :catch_0
    move-exception v10

    .line 254
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 257
    .end local v8    # "columnIdx":I
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 258
    .local v12, "sqle":Landroid/database/SQLException;
    :try_start_3
    invoke-virtual {v12}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    if-eqz v7, :cond_2

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 260
    .end local v12    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 264
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_5
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 273
    :cond_6
    :try_start_4
    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getExifOrientation(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v11

    goto :goto_2

    .line 274
    :catch_2
    move-exception v9

    .line 275
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private static getExifOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 287
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 291
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 292
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, "orientation":I
    if-eq v4, v6, :cond_0

    .line 296
    packed-switch v4, :pswitch_data_0

    .line 309
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 299
    goto :goto_1

    .line 301
    :pswitch_2
    const/16 v0, 0xb4

    .line 302
    goto :goto_1

    .line 304
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 155
    const/4 v3, 0x2

    .line 156
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 158
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 168
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_1

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardDataBitmapUrl"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    const/4 v4, 0x0

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 178
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 180
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    move-object v4, v1

    .line 188
    goto :goto_1

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getResizeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 52
    const/4 v3, 0x2

    .line 53
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 54
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 59
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    invoke-static {p0, v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_0

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v4, 0x0

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 68
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 69
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 72
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    move-object v4, v1

    .line 77
    goto :goto_1

    .line 74
    :catch_1
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    const/4 v4, 0x2

    .line 193
    .local v4, "sampleSize":I
    const/4 v1, 0x0

    .line 195
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 199
    if-nez p0, :cond_0

    .line 229
    :goto_0
    return-object v5

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_1
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    if-lt v5, p2, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-lt v5, p3, :cond_1

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 215
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 224
    :goto_2
    invoke-static {p0, p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 225
    .local v2, "degree":I
    if-eqz v2, :cond_2

    .line 226
    invoke-static {v1, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v5, v1

    .line 229
    goto :goto_0

    .line 220
    .end local v2    # "degree":I
    :catch_1
    move-exception v3

    .line 221
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 313
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 314
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 318
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 319
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    move-object p0, v7

    .line 327
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 323
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 324
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
