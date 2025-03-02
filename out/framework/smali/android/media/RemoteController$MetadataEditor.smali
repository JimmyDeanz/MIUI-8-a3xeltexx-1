.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .locals 3
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 513
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 514
    iput-object p2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 515
    iput-wide p3, p0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 517
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 519
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0, v2}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    .line 523
    :cond_0
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 524
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    .line 526
    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteController$MetadataEditor;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController$MetadataEditor;
    .param p1, "x1"    # I

    .prologue
    .line 504
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 529
    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 4

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 562
    :goto_0
    monitor-exit p0

    return-void

    .line 546
    :cond_0
    :try_start_1
    # getter for: Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;
    invoke-static {v1}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    const v1, 0x10000001

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 552
    .local v0, "rating":Landroid/media/Rating;
    if-eqz v0, :cond_1

    .line 553
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;
    invoke-static {v1}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 557
    .end local v0    # "rating":Landroid/media/Rating;
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 561
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 557
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
