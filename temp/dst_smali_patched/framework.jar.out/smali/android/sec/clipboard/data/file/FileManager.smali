.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# static fields
.field private static final CLEAR_DELETE_LIST_TIMER:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Clipboard.FileManager"


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->updateList()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$500(Landroid/sec/clipboard/data/file/FileManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager;->updateCategory()V

    return-void
.end method

.method static synthetic access$600(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private clearDeleteList()V
    .locals 4

    .prologue
    const-string v0, "Clipboard.FileManager"

    const-string v1, "clearDeleteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/sec/clipboard/data/file/FileManager$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/file/FileManager$1;-><init>(Landroid/sec/clipboard/data/file/FileManager;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private deleteDirectoryContent(Ljava/io/File;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateCategory()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x44c

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x4aa

    if-gt v0, v1, :cond_2

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RS: FileManager, add: knox case, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v2, v2, -0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager, add: GOOD CATEGORY, adding clip, cat value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard/secontainer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0xc9

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager, add: GENERIC CONTAINER CATEGORY, mHandleID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/clipboard/secontainer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    return-void
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Clipboard.FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add data..file system, handleid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandleId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    return v0
.end method

.method public getNonDeletedClips(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method public getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reAddForKnox(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->reAddForKnox()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Clipboard.FileManager"

    const-string v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .restart local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Clipboard.FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed removing data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(ZII)Landroid/sec/clipboard/data/ClipboardData;
    .locals 8
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I
    .param p3, "index"    # I

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    .local v3, "retData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, 0x0

    .local v1, "realIndex":I
    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v4, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "realIndex":I
    .local v2, "realIndex":I
    if-ne p3, v1, :cond_3

    const-string v5, "Clipboard.FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    move v1, v2

    .end local v2    # "realIndex":I
    .restart local v1    # "realIndex":I
    goto :goto_0

    .end local v1    # "realIndex":I
    .restart local v2    # "realIndex":I
    :cond_3
    move v1, v2

    .end local v2    # "realIndex":I
    .restart local v1    # "realIndex":I
    goto :goto_1
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(ZI)Z
    .locals 9
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "bRes":Z
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .local v1, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v7, 0x0

    .local v7, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "dataListSize":I
    move v5, v3

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v7, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .restart local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v4

    .local v4, "dir":Ljava/io/File;
    if-nez v4, :cond_0

    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    const/4 v0, 0x1

    .end local v4    # "dir":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v1    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "dataListSize":I
    .end local v5    # "i":I
    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v2, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    const/4 v0, 0x1

    goto :goto_1

    .end local v2    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v0, :cond_5

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_5
    return v0
.end method

.method public removeClipboardDB()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    :cond_0
    return-void
.end method

.method public resetOwnerClips(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->resetOwnerClips(I)V

    goto :goto_0

    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    return-void
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sharedSize(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "sharedSize":I
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .local v2, "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateList()V
    .locals 16

    .prologue
    const/4 v9, 0x0

    .local v9, "updated":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    .local v4, "dir":Ljava/io/File;
    const-wide/16 v10, 0x0

    .local v10, "timestamp":J
    const/4 v2, 0x0

    .local v2, "clipboard":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v3, 0x0

    .local v3, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "listSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-object v3, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v4

    instance-of v12, v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v12, :cond_1

    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v12, v0

    invoke-direct {v6, v12}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>(Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;)V

    .local v6, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v10

    :cond_0
    invoke-virtual {v6, v10, v11}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setTimestamp(J)V

    invoke-virtual {v3, v6}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    const/4 v13, 0x1

    invoke-virtual {v12, v3, v13}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z

    const-wide/32 v12, 0x186a0

    sub-long/2addr v10, v12

    move-object v2, v6

    const/4 v9, 0x1

    .end local v6    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_1
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->isValidData()Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    const-string v12, "Clipboard.FileManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateList invalid data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getStateToSave()Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_4

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v10

    :cond_4
    invoke-virtual {v2, v10, v11}, Landroid/sec/clipboard/data/ClipboardData;->setTimestamp(J)V

    const-wide/32 v12, 0x186a0

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "Clipboard.FileManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateList timestamp : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    const/4 v13, 0x1

    invoke-virtual {v12, v3, v13}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    const-string v12, "Clipboard.FileManager"

    const-string v13, "updateList null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    goto :goto_1

    .end local v7    # "i":I
    .end local v8    # "listSize":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v9, :cond_7

    const-string v12, "Clipboard.FileManager"

    const-string v13, "updateList update!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v12}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->updateForced()V

    invoke-direct/range {p0 .. p0}, Landroid/sec/clipboard/data/file/FileManager;->clearDeleteList()V

    :cond_7
    return-void
.end method
