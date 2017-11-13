.class Landroid/media/MediaRouter$Static$1;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$Static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter$Static;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Landroid/media/MediaRouter$Static$1;->this$0:Landroid/media/MediaRouter$Static;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 4
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "AudioRoutesChangedTime":J
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-wide v0, v2, Landroid/media/MediaRouter$Static;->mLastDispatchAudioRoutesChangedTime:J

    .line 110
    iget-object v2, p0, Landroid/media/MediaRouter$Static$1;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/MediaRouter$Static$1$1;

    invoke-direct {v3, p0, v0, v1, p1}, Landroid/media/MediaRouter$Static$1$1;-><init>(Landroid/media/MediaRouter$Static$1;JLandroid/media/AudioRoutesInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
