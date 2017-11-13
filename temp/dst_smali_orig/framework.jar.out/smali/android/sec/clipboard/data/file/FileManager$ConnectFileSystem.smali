.class Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/file/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectFileSystem"
.end annotation


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private fileHelper:Landroid/sec/clipboard/util/FileHelper;

.field private gcLifeCount:I

.field private infoFile:Ljava/io/File;

.field private infoTempFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private rootPath:Ljava/io/File;

.field final synthetic this$0:Landroid/sec/clipboard/data/file/FileManager;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V
    .locals 3
    .param p2, "infoFile"    # Ljava/io/File;

    .prologue
    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;-><init>(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .prologue
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    return v0
.end method

.method static synthetic access$400(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z

    move-result v0

    return v0
.end method

.method private deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;
    .locals 8
    .param p2, "_result"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;[",
            "Ljava/io/File;",
            ")[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .local p1, "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p2}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    .local v3, "result":[Ljava/io/File;
    array-length v4, v3

    .local v4, "size":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v5, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .local v0, "base_path":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_1

    aget-object v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .end local v0    # "base_path":Ljava/io/File;
    .end local v1    # "i":I
    .end local v5    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_4
    return-object v3
.end method

.method private loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method private makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 22
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v14

    .local v14, "temp_clip":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :pswitch_0
    move-object v15, v14

    check-cast v15, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .local v15, "text":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v15}, Landroid/sec/clipboard/data/list/ClipboardDataText;->toSave()V

    const/16 v17, 0x1

    goto :goto_0

    .end local v15    # "text":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_1
    move-object v3, v14

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v3, "bitmapClip":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v11

    .local v11, "path":Ljava/lang/String;
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .local v12, "separatorIndex":I
    if-gez v12, :cond_7

    move-object v8, v11

    .local v8, "fileName":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, "createFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_0

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_1
    sget-boolean v17, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v17, :cond_2

    const-string v17, "Clipboard.FileManager"

    const-string v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v17, v0

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/sec/clipboard/data/file/FileManager;->access$600(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v19, v0

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/data/file/FileManager;->access$600(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x105019f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v20, v0

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Landroid/sec/clipboard/data/file/FileManager;->access$600(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105019e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;II)Z

    :goto_2
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "ExtraDataPath":Ljava/lang/String;
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .local v13, "separatorIndexForExtraData":I
    if-gez v13, :cond_9

    move-object v9, v2

    .local v9, "fileNameForExtraData":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, "createFileForExtraData":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v17

    check-cast v17, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .local v6, "extraFD":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_3

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_3
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    sget-boolean v17, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "Clipboard.FileManager"

    const-string v18, "ok ExtraDataPath change.."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetExtraDataPath(Ljava/lang/String;)Z

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .end local v2    # "ExtraDataPath":Ljava/lang/String;
    .end local v5    # "createFileForExtraData":Ljava/io/File;
    .end local v6    # "extraFD":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "fileNameForExtraData":Ljava/lang/String;
    .end local v13    # "separatorIndexForExtraData":I
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "fileName":Ljava/lang/String;
    :cond_8
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    goto/16 :goto_2

    .restart local v2    # "ExtraDataPath":Ljava/lang/String;
    .restart local v13    # "separatorIndexForExtraData":I
    :cond_9
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .end local v2    # "ExtraDataPath":Ljava/lang/String;
    .end local v3    # "bitmapClip":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "separatorIndex":I
    .end local v13    # "separatorIndexForExtraData":I
    :pswitch_2
    move-object v10, v14

    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .local v10, "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "path":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_f

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .restart local v12    # "separatorIndex":I
    if-gez v12, :cond_e

    move-object v8, v11

    .restart local v8    # "fileName":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "createFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_a

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_a
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_b
    sget-boolean v17, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v17, :cond_c

    const-string v17, "Clipboard.FileManager"

    const-string v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v17, "previewhtemlclipboarditem"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .end local v12    # "separatorIndex":I
    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v10    # "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    .end local v11    # "path":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v16, v14

    check-cast v16, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .local v16, "uriClip":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "path":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_14

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .restart local v12    # "separatorIndex":I
    if-gez v12, :cond_13

    move-object v8, v11

    .restart local v8    # "fileName":Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "createFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_10

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_11

    :cond_10
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_11
    sget-boolean v17, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v17, :cond_12

    const-string v17, "Clipboard.FileManager"

    const-string v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_13
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .end local v12    # "separatorIndex":I
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v11    # "path":Ljava/lang/String;
    .end local v16    # "uriClip":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveInfoFile()Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private saveTempInfoFile()Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public allDelete()V
    .locals 0

    .prologue
    return-void
.end method

.method public createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    new-instance v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-direct {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;-><init>(Landroid/sec/clipboard/data/ClipboardData;)V

    return-object v0
.end method

.method public createDataList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public dump()V
    .locals 5

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Clipboard.FileManager"

    const-string v3, "==========================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Clipboard.FileManager"

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Clipboard.FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Clipboard.FileManager"

    const-string v3, "==========================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public gc()V
    .locals 6

    .prologue
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Clipboard.FileManager"

    const-string v4, "run gc()1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v4}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public load()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Clipboard.FileManager"

    const-string v3, "load ...info file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Clipboard.FileManager"

    const-string v3, "failed load ...clips.info file"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Clipboard.FileManager"

    const-string v3, "load ...clips.info_temp file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :cond_4
    :goto_1
    if-nez v1, :cond_6

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Clipboard.FileManager"

    const-string v3, "failed to load info file. create new list."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v1

    :cond_6
    :try_start_2
    invoke-direct {p0, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    return-object v2

    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .restart local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .restart local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeDB()V
    .locals 3

    .prologue
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDB()_rootPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    return-void
.end method

.method public removeKNOXClipFilder()V
    .locals 5

    .prologue
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Clipboard.FileManager"

    const-string v4, "run removeKNOXClipFilder()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v4}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clips.info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_1
.end method

.method public declared-synchronized save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 1
    .param p1, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z
    .locals 7
    .param p1, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;
    .param p2, "isForced"    # Z

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v2

    .local v2, "fh":Landroid/sec/clipboard/util/FileHelper;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/sec/clipboard/util/StringHelper;->getUniqueString()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "dir":Ljava/io/File;
    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Clipboard.FileManager"

    const-string v6, "Saving WrapFileClipData, folder already exists"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    :cond_2
    invoke-direct {p0, v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/clip"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "cfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "Clipboard.FileManager"

    const-string v5, "ok Wrap saveData"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setDir(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setFile(Ljava/io/File;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "Clipboard.FileManager"

    const-string v6, "Can\'t Save File, Delete Directory"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "cfile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fh":Landroid/sec/clipboard/util/FileHelper;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public update()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateForced()V
    .locals 3

    .prologue
    const-string v0, "Clipboard.FileManager"

    const-string v1, "updateForced()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gc()V

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # invokes: Landroid/sec/clipboard/data/file/FileManager;->updateCategory()V
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager;->access$500(Landroid/sec/clipboard/data/file/FileManager;)V

    :cond_1
    return-void
.end method
