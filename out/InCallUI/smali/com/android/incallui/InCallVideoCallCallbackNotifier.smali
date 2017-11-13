.class public Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallCallbackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;


# instance fields
.field private final mSessionModificationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public callDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 238
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallDataUsageChange(J)V

    goto :goto_0

    .line 240
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 177
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    .line 179
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 227
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 229
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public downgradeToAudio(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 166
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 168
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 214
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 216
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 155
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 157
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVideoRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 133
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 135
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 144
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 146
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public videoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 201
    .local v1, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onVideoQualityChanged(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 203
    .end local v1    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method
