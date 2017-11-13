.class public Lcom/android/server/wifi/p2p/common/GUIUtil;
.super Ljava/lang/Object;
.source "GUIUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GUIUtil"

.field private static volatile mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeDimen"    # I
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 178
    const/4 v6, 0x0

    .line 179
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 180
    .local v2, "mask":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 182
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 185
    .local v8, "size":I
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .local v3, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 188
    .local v4, "maskPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    const v9, -0x50506

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 194
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 195
    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 197
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 199
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_1
    if-eqz v7, :cond_2

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    .end local v3    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v4    # "maskPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    return-object v6

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_3
    if-eqz v7, :cond_2

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_4
    if-eqz v7, :cond_5

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v9
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    const/16 v26, 0x0

    .local v26, "phones":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 72
    .local v18, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 73
    .local v16, "clsInputStream":Ljava/io/InputStream;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v17, v6

    const/4 v6, 0x1

    const-string v8, "display_name"

    aput-object v8, v17, v6

    const/4 v6, 0x2

    const-string v8, "lookup"

    aput-object v8, v17, v6

    .line 74
    .local v17, "contactProjection":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 75
    .local v12, "ID_INDEX":I
    const/4 v14, 0x1

    .line 76
    .local v14, "NAME_INDEX":I
    const/4 v13, 0x2

    .line 78
    .local v13, "LOOKUP_KEY_INDEX":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 79
    .local v4, "cr":Landroid/content/ContentResolver;
    if-eqz v4, :cond_10

    .line 80
    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 81
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "photo_uri"

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 85
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 86
    .local v7, "uri2":Landroid/net/Uri;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    move-object/from16 v8, v17

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 87
    const/16 v19, 0x0

    .line 88
    .local v19, "displayName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 89
    .local v24, "lookupKey":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 90
    .local v22, "id":J
    const/16 v29, 0x0

    .line 91
    .local v29, "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 93
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 94
    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 95
    new-instance v29, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    .end local v29    # "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    const/4 v6, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    .restart local v29    # "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    :cond_0
    if-eqz v26, :cond_a

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 99
    const-string v6, "photo_uri"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 101
    .local v28, "photoString":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 102
    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 103
    .local v27, "photo":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 104
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 135
    if-eqz v26, :cond_1

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    if-eqz v18, :cond_2

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_2
    if-eqz v16, :cond_3

    .line 143
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "uri2":Landroid/net/Uri;
    .end local v19    # "displayName":Ljava/lang/String;
    .end local v22    # "id":J
    .end local v24    # "lookupKey":Ljava/lang/String;
    .end local v27    # "photo":Landroid/net/Uri;
    .end local v28    # "photoString":Ljava/lang/String;
    .end local v29    # "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    :cond_3
    :goto_0
    return-object v15

    .line 144
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v7    # "uri2":Landroid/net/Uri;
    .restart local v19    # "displayName":Ljava/lang/String;
    .restart local v22    # "id":J
    .restart local v24    # "lookupKey":Ljava/lang/String;
    .restart local v27    # "photo":Landroid/net/Uri;
    .restart local v28    # "photoString":Ljava/lang/String;
    .restart local v29    # "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    :catch_0
    move-exception v21

    .line 145
    .local v21, "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v21    # "e":Ljava/io/IOException;
    .end local v27    # "photo":Landroid/net/Uri;
    :cond_4
    if-eqz v29, :cond_7

    .line 107
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/wifi/p2p/common/GUIUtil;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 108
    .local v25, "myDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_7

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10502b1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v30, v0

    .line 110
    .local v30, "size":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->dpTopx(Landroid/content/Context;I)I

    move-result v20

    .line 111
    .local v20, "dpInpx":I
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/p2p/common/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 135
    .local v15, "bm":Landroid/graphics/Bitmap;
    if-eqz v26, :cond_5

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_5
    if-eqz v18, :cond_6

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_6
    if-eqz v16, :cond_3

    .line 143
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v15    # "bm":Landroid/graphics/Bitmap;
    .end local v20    # "dpInpx":I
    .end local v21    # "e":Ljava/io/IOException;
    .end local v25    # "myDrawable":Landroid/graphics/drawable/Drawable;
    .end local v30    # "size":I
    :cond_7
    const/4 v15, 0x0

    .line 135
    if-eqz v26, :cond_8

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_8
    if-eqz v18, :cond_9

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_9
    if-eqz v16, :cond_3

    .line 143
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 144
    :catch_2
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v21    # "e":Ljava/io/IOException;
    .end local v28    # "photoString":Ljava/lang/String;
    :cond_a
    if-eqz v29, :cond_d

    .line 120
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/wifi/p2p/common/GUIUtil;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 121
    .restart local v25    # "myDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_d

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10502b1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v30, v0

    .line 123
    .restart local v30    # "size":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->dpTopx(Landroid/content/Context;I)I

    move-result v20

    .line 124
    .restart local v20    # "dpInpx":I
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/p2p/common/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v15

    .line 135
    .restart local v15    # "bm":Landroid/graphics/Bitmap;
    if-eqz v26, :cond_b

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_b
    if-eqz v18, :cond_c

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_c
    if-eqz v16, :cond_3

    .line 143
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 144
    :catch_3
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 129
    .end local v15    # "bm":Landroid/graphics/Bitmap;
    .end local v20    # "dpInpx":I
    .end local v21    # "e":Ljava/io/IOException;
    .end local v25    # "myDrawable":Landroid/graphics/drawable/Drawable;
    .end local v30    # "size":I
    :cond_d
    const/4 v15, 0x0

    .line 135
    if-eqz v26, :cond_e

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_e
    if-eqz v18, :cond_f

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_f
    if-eqz v16, :cond_3

    .line 143
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 144
    :catch_4
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "uri2":Landroid/net/Uri;
    .end local v19    # "displayName":Ljava/lang/String;
    .end local v21    # "e":Ljava/io/IOException;
    .end local v22    # "id":J
    .end local v24    # "lookupKey":Ljava/lang/String;
    .end local v29    # "request":Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    :cond_10
    if-eqz v26, :cond_11

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_11
    if-eqz v18, :cond_12

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_12
    if-eqz v16, :cond_13

    .line 143
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 149
    .end local v4    # "cr":Landroid/content/ContentResolver;
    :cond_13
    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 144
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :catch_5
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v21    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v21

    .line 133
    .local v21, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 135
    if-eqz v26, :cond_14

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_14
    if-eqz v18, :cond_15

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_15
    if-eqz v16, :cond_13

    .line 143
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 144
    :catch_7
    move-exception v21

    .line 145
    .local v21, "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v21    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v26, :cond_16

    .line 136
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_16
    if-eqz v18, :cond_17

    .line 139
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_17
    if-eqz v16, :cond_18

    .line 143
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 146
    :cond_18
    :goto_2
    throw v6

    .line 144
    :catch_8
    move-exception v21

    .line 145
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, "phones":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 156
    .local v6, "contactName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 158
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 170
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v8, :cond_1

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v6

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    if-eqz v8, :cond_1

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getDefaultAvatar(Landroid/content/res/Resources;ZZZJ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "hires"    # Z
    .param p2, "darkTheme"    # Z
    .param p3, "isCircular"    # Z
    .param p4, "contactId"    # J

    .prologue
    .line 275
    const-wide/16 v6, 0x5

    rem-long v6, p4, v6

    long-to-int v2, v6

    .line 276
    .local v2, "defaultImageKey":I
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 277
    const v5, 0x10802a3

    .line 284
    .local v5, "resId":I
    :goto_0
    const/4 v4, 0x0

    .line 286
    .local v4, "image":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 287
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 291
    :cond_0
    invoke-static {p4, p5}, Lcom/android/server/wifi/p2p/common/Util;->getDefaultPhotoBackgroundColor(J)I

    move-result v1

    .line 292
    .local v1, "colorId":I
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 294
    .local v0, "color":I
    new-instance v3, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 295
    .local v3, "drawable":Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 296
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 298
    if-eqz p3, :cond_1

    .line 299
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/server/wifi/p2p/common/Util;->getCornerRadius(Landroid/content/res/Resources;I)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setCornerRadius(F)V

    .line 302
    :cond_1
    return-object v3

    .line 280
    .end local v0    # "color":I
    .end local v1    # "colorId":I
    .end local v3    # "drawable":Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v5    # "resId":I
    :cond_2
    const v5, 0x10802a4

    .restart local v5    # "resId":I
    goto :goto_0
.end method

.method public static getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "defaultImageRequest"    # Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
    .param p2, "contactId"    # J

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getIconBackground(III)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "iconSize"    # I
    .param p1, "circleSize"    # I
    .param p2, "color"    # I

    .prologue
    .line 60
    mul-int/lit8 v3, p0, 0x2

    mul-int/lit8 v4, p0, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, "colorIcon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    int-to-float v3, p0

    int-to-float v4, p0

    int-to-float v5, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/p2p/common/GUIUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/android/server/wifi/p2p/common/GUIUtil;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/wifi/p2p/common/GUIUtil;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/common/GUIUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getValueFromAttr(Landroid/content/Context;[I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .prologue
    .line 230
    const/4 v3, 0x0

    .line 231
    .local v3, "valueFromAttr":I
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 233
    .local v2, "typedValue":Landroid/util/TypedValue;
    :try_start_0
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v3

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHorizentalDisplay(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 222
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
