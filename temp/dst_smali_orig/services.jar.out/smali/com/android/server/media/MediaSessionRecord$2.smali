.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustStreamVolume(IIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$streamType:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$streamType:I

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iput-object p5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$callingPackage:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$streamType:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$callingPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V

    return-void
.end method
