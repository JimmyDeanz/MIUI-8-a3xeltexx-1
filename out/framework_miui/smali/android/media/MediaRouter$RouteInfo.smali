.class public Landroid/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x6

.field public static final STATUS_CONNECTING:I = 0x2

.field public static final STATUS_IN_USE:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NOT_AVAILABLE:I = 0x4

.field public static final STATUS_SCANNING:I = 0x1


# instance fields
.field final mCategory:Landroid/media/MediaRouter$RouteCategory;

.field mDescription:Ljava/lang/CharSequence;

.field mDeviceAddress:Ljava/lang/String;

.field mEnabled:Z

.field mGlobalRouteId:Ljava/lang/String;

.field mGroup:Landroid/media/MediaRouter$RouteGroup;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/CharSequence;

.field mNameResId:I

.field mPlaybackStream:I

.field mPlaybackType:I

.field mPresentationDisplay:Landroid/view/Display;

.field mPresentationDisplayId:I

.field private mRealStatusCode:I

.field final mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

.field private mResolvedStatusCode:I

.field private mStatus:Ljava/lang/CharSequence;

.field mSupportedTypes:I

.field private mTag:Ljava/lang/Object;

.field mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 3
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x1

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1478
    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1479
    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1480
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1481
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1484
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1487
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1950
    new-instance v0, Landroid/media/MediaRouter$RouteInfo$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    .line 1535
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 1536
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1467
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    return v0
.end method

.method private choosePresentationDisplay()Landroid/view/Display;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1867
    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    .line 1868
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v6}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 1873
    .local v2, "displays":[Landroid/view/Display;
    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ltz v6, :cond_3

    .line 1874
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/Display;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 1875
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget v7, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ne v6, v7, :cond_1

    .line 1898
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displays":[Landroid/view/Display;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    return-object v1

    .line 1874
    .restart local v0    # "arr$":[Landroid/view/Display;
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displays":[Landroid/view/Display;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "display":Landroid/view/Display;
    :cond_2
    move-object v1, v5

    .line 1879
    goto :goto_1

    .line 1883
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    iget-object v6, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1884
    move-object v0, v2

    .restart local v0    # "arr$":[Landroid/view/Display;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 1885
    .restart local v1    # "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/Display;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1884
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "display":Landroid/view/Display;
    :cond_5
    move-object v1, v5

    .line 1890
    goto :goto_1

    .line 1894
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_6
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v6, :cond_7

    array-length v6, v2

    if-lez v6, :cond_7

    .line 1895
    const/4 v5, 0x0

    aget-object v1, v2, v5

    goto :goto_1

    .end local v2    # "displays":[Landroid/view/Display;
    :cond_7
    move-object v1, v5

    .line 1898
    goto :goto_1
.end method


# virtual methods
.method public getCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Landroid/media/MediaRouter$RouteGroup;
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1549
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1564
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1568
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    if-eqz v0, :cond_0

    .line 1569
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getPlaybackStream()I
    .locals 1

    .prologue
    .line 1739
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 1731
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getPresentationDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    return v0
.end method

.method public getSupportedTypes()I
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVolume()I
    .locals 4

    .prologue
    .line 1750
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    .line 1751
    const/4 v1, 0x0

    .line 1753
    .local v1, "vol":I
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1759
    .end local v1    # "vol":I
    :goto_0
    return v1

    .line 1754
    .restart local v1    # "vol":I
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error getting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1759
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vol":I
    :cond_0
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    goto :goto_0
.end method

.method public getVolumeHandling()I
    .locals 1

    .prologue
    .line 1822
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .locals 4

    .prologue
    .line 1804
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    .line 1805
    const/4 v1, 0x0

    .line 1807
    .local v1, "volMax":I
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1813
    .end local v1    # "volMax":I
    :goto_0
    return v1

    .line 1808
    .restart local v1    # "volMax":I
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error getting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1813
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "volMax":I
    :cond_0
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    .prologue
    .line 1922
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 1932
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1912
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1927
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesTypes(I)Z
    .locals 1
    .param p1, "types"    # I

    .prologue
    .line 1675
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    .line 1768
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v1, :cond_0

    .line 1770
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, p1, v3, v4}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    return-void

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 6
    .param p1, "direction"    # I

    .prologue
    .line 1785
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    .line 1787
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1789
    .local v1, "volume":I
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    .end local v1    # "volume":I
    :goto_0
    return-void

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error setting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1795
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method resolveStatusCode()Z
    .locals 3

    .prologue
    .line 1612
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1613
    .local v1, "statusCode":I
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1614
    packed-switch v1, :pswitch_data_0

    .line 1627
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    if-ne v2, v1, :cond_1

    .line 1628
    const/4 v2, 0x0

    .line 1656
    :goto_1
    return v2

    .line 1623
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1631
    :cond_1
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    .line 1633
    packed-switch v1, :pswitch_data_1

    .line 1652
    const/4 v0, 0x0

    .line 1655
    .local v0, "resId":I
    :goto_2
    if-eqz v0, :cond_2

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 1656
    const/4 v2, 0x1

    goto :goto_1

    .line 1635
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x10404b9

    .line 1636
    .restart local v0    # "resId":I
    goto :goto_2

    .line 1638
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x10404ba

    .line 1639
    .restart local v0    # "resId":I
    goto :goto_2

    .line 1641
    .end local v0    # "resId":I
    :pswitch_4
    const v0, 0x10404bb

    .line 1642
    .restart local v0    # "resId":I
    goto :goto_2

    .line 1644
    .end local v0    # "resId":I
    :pswitch_5
    const v0, 0x10404bc

    .line 1645
    .restart local v0    # "resId":I
    goto :goto_2

    .line 1647
    .end local v0    # "resId":I
    :pswitch_6
    const v0, 0x10404bd

    .line 1648
    .restart local v0    # "resId":I
    goto :goto_2

    .line 1655
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1633
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method routeUpdated()V
    .locals 0

    .prologue
    .line 1969
    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1970
    return-void
.end method

.method public select()V
    .locals 2

    .prologue
    .line 1937
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1938
    return-void
.end method

.method setRealStatusCode(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 1600
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    if-eq v0, p1, :cond_0

    .line 1601
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1602
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v0

    .line 1604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setStatusInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1942
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 1943
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    .line 1946
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 1948
    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1714
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    .line 1715
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 1716
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1974
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, "supportedTypes":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentationDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updatePresentationDisplay()Z
    .locals 2

    .prologue
    .line 1858
    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1859
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eq v1, v0, :cond_0

    .line 1860
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 1861
    const/4 v1, 0x1

    .line 1863
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
