.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 225
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 226
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 227
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 235
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 237
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 202
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 204
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 248
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 215
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 217
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 263
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 264
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 265
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 266
    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    const-string/jumbo v22, "text/*"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 494
    .local v19, "types":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 495
    .local v9, "hasHtml":Z
    const/4 v10, 0x0

    .line 496
    .local v10, "hasText":Z
    if-eqz v19, :cond_2

    .line 497
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_2

    aget-object v18, v4, v11

    .line 498
    .local v18, "type":Ljava/lang/String;
    const-string/jumbo v20, "text/html"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 499
    const/4 v9, 0x1

    .line 497
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const-string/jumbo v20, "text/"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 501
    const/4 v10, 0x1

    goto :goto_1

    .line 507
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "type":Ljava/lang/String;
    :cond_2
    if-nez v9, :cond_3

    if-eqz v10, :cond_4

    .line 508
    :cond_3
    const/16 v16, 0x0

    .line 511
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    if-eqz v9, :cond_6

    const-string/jumbo v20, "text/html"

    :goto_2
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 514
    .local v7, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 515
    new-instance v15, Ljava/io/InputStreamReader;

    const-string v20, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 518
    .local v15, "reader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v20, 0x80

    move/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 519
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/16 v20, 0x2000

    move/from16 v0, v20

    new-array v5, v0, [C

    .line 521
    .local v5, "buffer":[C
    :goto_3
    invoke-virtual {v15, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, "len":I
    if-lez v12, :cond_7

    .line 522
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v5, v0, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 551
    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v20

    .line 561
    if-eqz v16, :cond_4

    .line 563
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 573
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_4
    if-eqz p2, :cond_e

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 591
    .end local v9    # "hasHtml":Z
    .end local v10    # "hasText":Z
    .end local v19    # "types":[Ljava/lang/String;
    :cond_5
    :goto_5
    return-object v17

    .line 511
    .restart local v9    # "hasHtml":Z
    .restart local v10    # "hasText":Z
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "types":[Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v20, "text/plain"

    goto :goto_2

    .line 524
    .restart local v5    # "buffer":[C
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v12    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .line 525
    .local v17, "text":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 526
    if-eqz p2, :cond_a

    .line 530
    :try_start_3
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 531
    .local v14, "newText":Ljava/lang/CharSequence;
    if-eqz v14, :cond_9

    .line 561
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :goto_6
    if-eqz v16, :cond_8

    .line 563
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_8
    :goto_7
    move-object/from16 v17, v14

    .line 565
    goto :goto_5

    .restart local v14    # "newText":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v14, v17

    .line 531
    goto :goto_6

    .line 532
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    .line 561
    .local v8, "e":Ljava/lang/RuntimeException;
    if-eqz v16, :cond_5

    .line 563
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 564
    :catch_2
    move-exception v20

    goto :goto_5

    .line 538
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v17

    .line 561
    .end local v17    # "text":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 563
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 564
    :catch_3
    move-exception v20

    goto :goto_5

    .line 541
    .restart local v17    # "text":Ljava/lang/String;
    :cond_b
    if-eqz p2, :cond_c

    .line 561
    if-eqz v16, :cond_5

    .line 563
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 564
    :catch_4
    move-exception v20

    goto :goto_5

    .line 548
    :cond_c
    :try_start_9
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v17

    .line 561
    .end local v17    # "text":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 563
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    .line 564
    :catch_5
    move-exception v20

    goto :goto_5

    .line 555
    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v8

    .line 557
    .local v8, "e":Ljava/io/IOException;
    :try_start_b
    const-string v20, "ClippedData"

    const-string v21, "Failure loading text"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v17

    .line 561
    if-eqz v16, :cond_5

    .line 563
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_5

    .line 564
    :catch_7
    move-exception v20

    goto :goto_5

    .line 561
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    if-eqz v16, :cond_d

    .line 563
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 565
    :cond_d
    :goto_8
    throw v20

    .line 576
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 582
    .end local v9    # "hasHtml":Z
    .end local v10    # "hasText":Z
    .end local v19    # "types":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 583
    if-eqz p2, :cond_10

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    goto/16 :goto_5

    .line 586
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 591
    :cond_11
    const-string v17, ""

    goto/16 :goto_5

    .line 564
    .restart local v5    # "buffer":[C
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "hasHtml":Z
    .restart local v10    # "hasText":Z
    .restart local v12    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "text":Ljava/lang/String;
    .restart local v19    # "types":[Ljava/lang/String;
    :catch_8
    move-exception v20

    goto/16 :goto_7

    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v17    # "text":Ljava/lang/String;
    :catch_9
    move-exception v20

    goto/16 :goto_4

    :catch_a
    move-exception v21

    goto :goto_8
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 596
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 605
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 606
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 607
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 609
    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 483
    .end local v0    # "htmlText":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 474
    .restart local v0    # "htmlText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 475
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 476
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 477
    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 394
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 412
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v2

    .line 397
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 400
    :try_start_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    .local v1, "newText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 402
    goto :goto_0

    .line 404
    .end local v1    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 409
    :cond_2
    if-nez v2, :cond_0

    .line 412
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public coerceToStyledTextForEditor(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 418
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 436
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v2

    .line 421
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 424
    :try_start_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 425
    .local v1, "newText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 426
    goto :goto_0

    .line 428
    .end local v1    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 433
    :cond_2
    if-nez v2, :cond_0

    .line 436
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 321
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    .line 380
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v8

    .line 326
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 327
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_5

    .line 332
    const/4 v7, 0x0

    .line 335
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "text/*"

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 337
    .local v2, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    .line 338
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 341
    .local v6, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x2000

    new-array v0, v10, [C

    .line 344
    .local v0, "buffer":[C
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_3

    .line 345
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 349
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v10

    .line 359
    if-eqz v7, :cond_2

    .line 361
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 369
    :cond_2
    :goto_2
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 347
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "len":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 359
    .end local v8    # "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 361
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 362
    :catch_1
    move-exception v10

    goto :goto_0

    .line 353
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :catch_2
    move-exception v3

    .line 355
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v10, "ClippedData"

    const-string v11, "Failure loading text"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 359
    .end local v8    # "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 361
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 362
    :catch_3
    move-exception v10

    goto :goto_0

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_4

    .line 361
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 363
    :cond_4
    :goto_3
    throw v10

    .line 374
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_5
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 375
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_6

    .line 376
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 380
    :cond_6
    const-string v8, ""

    goto :goto_0

    .line 362
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    goto :goto_2

    :catch_5
    move-exception v11

    goto :goto_3
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 625
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 629
    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 632
    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 635
    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    .line 638
    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 644
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 647
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 649
    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 652
    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    .line 655
    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 616
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    .line 618
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
