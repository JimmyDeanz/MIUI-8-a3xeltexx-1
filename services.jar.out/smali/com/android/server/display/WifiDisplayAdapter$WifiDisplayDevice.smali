.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayDevice"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mFlags:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mMode:Landroid/view/Display$Mode;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V
    .locals 2
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "flags"    # I
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1637
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 1638
    iput p4, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 1639
    iput p5, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 1640
    iput p6, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 1641
    iput p7, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 1642
    iput-object p8, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    .line 1643
    iput-object p9, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 1644
    invoke-static {p4, p5, p6}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 1645
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 1652
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 1653
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 6

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    .line 1670
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1671
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 1672
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1673
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1674
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1675
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 1676
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 1677
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Display$Mode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1678
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-wide/32 v2, 0x3b9aca00

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    float-to-int v1, v1

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 1679
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 1680
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 1681
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 1682
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 1683
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 1665
    :cond_0
    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 1657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1658
    return-void
.end method
