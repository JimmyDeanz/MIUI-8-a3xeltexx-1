.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataBitmap"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private transient mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .locals 24
    .param p1, "src"    # Ljava/io/FileInputStream;
    .param p2, "dest"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v7, 0x5

    .local v7, "compareCount":I
    const/16 v8, 0x80

    .local v8, "compareSize":I
    const/4 v2, 0x0

    .local v2, "Result":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    .local v19, "srcSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v9, v0

    .local v9, "destSize":I
    move/from16 v0, v19

    if-ne v0, v9, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_1

    :cond_0
    const/16 v21, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9    # "destSize":I
    .end local v19    # "srcSize":I
    :goto_0
    return v21

    .restart local v9    # "destSize":I
    .restart local v19    # "srcSize":I
    :catch_0
    move-exception v11

    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v11    # "e1":Ljava/io/IOException;
    :cond_1
    const/16 v21, 0x80

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    move/from16 v6, v19

    .local v6, "buffSize":I
    :goto_1
    :try_start_2
    div-int v20, v19, v6

    .local v20, "tmp":I
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    const/4 v14, 0x5

    .local v14, "iCnt":I
    :goto_2
    mul-int v21, v6, v14

    sub-int v20, v19, v21

    div-int v15, v20, v14

    .local v15, "offset":I
    const/4 v3, 0x1

    .local v3, "bSameData":Z
    const/4 v5, 0x0

    .local v5, "bisSrc":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .local v4, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .local v16, "position":I
    new-array v0, v6, [B

    move-object/from16 v18, v0

    .local v18, "readSrcData":[B
    new-array v0, v6, [B

    move-object/from16 v17, v0

    .local v17, "readDestData":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .local v12, "i1":I
    :goto_3
    if-ge v12, v14, :cond_6

    if-eqz v3, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    add-int v21, v6, v15

    add-int v16, v16, v21

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    const/4 v13, 0x0

    .local v13, "i2":I
    :goto_4
    if-ge v13, v6, :cond_5

    if-eqz v3, :cond_5

    aget-byte v21, v18, v13

    aget-byte v22, v17, v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v12    # "i1":I
    .end local v13    # "i2":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v20    # "tmp":I
    :cond_2
    const/16 v6, 0x80

    goto :goto_1

    .restart local v6    # "buffSize":I
    .restart local v20    # "tmp":I
    :cond_3
    move/from16 v14, v20

    goto :goto_2

    .restart local v3    # "bSameData":Z
    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v12    # "i1":I
    .restart local v13    # "i2":I
    .restart local v14    # "iCnt":I
    .restart local v15    # "offset":I
    .restart local v16    # "position":I
    .restart local v17    # "readDestData":[B
    .restart local v18    # "readSrcData":[B
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v13    # "i2":I
    :cond_6
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v9    # "destSize":I
    .end local v12    # "i1":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v19    # "srcSize":I
    .end local v20    # "tmp":I
    :goto_6
    move/from16 v21, v2

    goto/16 :goto_0

    .restart local v3    # "bSameData":Z
    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v6    # "buffSize":I
    .restart local v9    # "destSize":I
    .restart local v12    # "i1":I
    .restart local v14    # "iCnt":I
    .restart local v15    # "offset":I
    .restart local v16    # "position":I
    .restart local v17    # "readDestData":[B
    .restart local v18    # "readSrcData":[B
    .restart local v19    # "srcSize":I
    .restart local v20    # "tmp":I
    :catch_1
    move-exception v11

    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v9    # "destSize":I
    .end local v11    # "e1":Ljava/io/IOException;
    .end local v12    # "i1":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v19    # "srcSize":I
    .end local v20    # "tmp":I
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v11

    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    throw v21

    :catch_4
    move-exception v11

    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method private compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v3, 0x0

    .local v3, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    invoke-direct {p0, v4, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v5

    move-object v1, v2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v1    # "fisDest":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    invoke-direct {p0, v4, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v5

    move-object v1, v2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v1    # "fisDest":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "f1"    # Ljava/lang/String;
    .param p2, "f2"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetExtraDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public HasExtraData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v1

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    move-object v1, p2

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "HtmlUrl"    # Ljava/lang/String;
    .param p3, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public SetExtraDataPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraDataPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    instance-of v6, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v6, :cond_2

    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0

    .end local v2    # "result":I
    :cond_2
    move-object v4, p1

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    .local v3, "trgBmp":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getInitBasePath()Ljava/lang/String;

    move-result-object v5

    .local v5, "trgInitBasePath":Ljava/lang/String;
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0

    .end local v2    # "result":I
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getInitBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mClipdata:Landroid/content/ClipData;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mIsProtected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    :cond_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardDataBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFromSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBitmapPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "Result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_2

    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_4
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardDataBitmap"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "HtmlUrl"    # Ljava/lang/String;
    .param p3, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardDataBitmap"

    const-string v5, "setBitmapPath"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .local v1, "Result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    :cond_1
    move v2, v1

    .end local v1    # "Result":Z
    .local v2, "Result":I
    :goto_0
    return v2

    .end local v2    # "Result":I
    .restart local v1    # "Result":Z
    :cond_2
    iget-boolean v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v4, :cond_3

    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    :cond_3
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ClipboardDataBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtmlUrl ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object p2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ClipboardDataBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtraDataPath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object p3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "ExtraDataFile":Ljava/io/File;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_8
    :goto_1
    move v2, v1

    .restart local v2    # "Result":I
    goto :goto_0

    .end local v2    # "Result":I
    .restart local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_9
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "ClipboardDataBitmap"

    const-string v5, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    :cond_b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "ClipboardDataBitmap"

    const-string v5, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setExtraDataPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "Result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_3
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardDataBitmap"

    const-string v4, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataBitmap"

    const-string v3, "Bitmap write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "text/uri-list"

    aput-object v2, v1, v4

    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mClipdata:Landroid/content/ClipData;

    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
