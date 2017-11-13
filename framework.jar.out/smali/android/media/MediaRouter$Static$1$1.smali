.class Landroid/media/MediaRouter$Static$1$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$1;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$Static$1;

.field final synthetic val$AudioRoutesChangedTime:J

.field final synthetic val$newRoutes:Landroid/media/AudioRoutesInfo;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static$1;JLandroid/media/AudioRoutesInfo;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Landroid/media/MediaRouter$Static$1$1;->this$1:Landroid/media/MediaRouter$Static$1;

    iput-wide p2, p0, Landroid/media/MediaRouter$Static$1$1;->val$AudioRoutesChangedTime:J

    iput-object p4, p0, Landroid/media/MediaRouter$Static$1$1;->val$newRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Landroid/media/MediaRouter$Static$1$1;->val$AudioRoutesChangedTime:J

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-wide v2, v2, Landroid/media/MediaRouter$Static;->mLastDispatchAudioRoutesChangedTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static$1$1;->val$newRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$Static$1$1;->this$1:Landroid/media/MediaRouter$Static$1;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$1;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The invalid updateAudioRoutes is skipped. Current Bluetooth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$Static$1$1;->this$1:Landroid/media/MediaRouter$Static$1;

    iget-object v2, v2, Landroid/media/MediaRouter$Static$1;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static$1$1;->this$1:Landroid/media/MediaRouter$Static$1;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$1;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$1$1;->val$newRoutes:Landroid/media/AudioRoutesInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    goto :goto_0
.end method
