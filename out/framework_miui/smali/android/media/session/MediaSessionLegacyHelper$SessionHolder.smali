.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
    }
.end annotation


# instance fields
.field public mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

.field public mFlags:I

.field public mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

.field public final mPi:Landroid/app/PendingIntent;

.field public mRccListener:Landroid/media/session/MediaSession$Callback;

.field public final mSession:Landroid/media/session/MediaSession;

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "session"    # Landroid/media/session/MediaSession;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 468
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 470
    iput-object p3, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    .line 471
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-nez v1, :cond_1

    .line 475
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 476
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 477
    iput-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 478
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->access$200(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 481
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 482
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    goto :goto_0
.end method
