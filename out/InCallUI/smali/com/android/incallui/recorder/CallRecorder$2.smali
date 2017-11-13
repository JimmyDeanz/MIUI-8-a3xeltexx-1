.class Lcom/android/incallui/recorder/CallRecorder$2;
.super Ljava/lang/Object;
.source "CallRecorder.java"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/recorder/CallRecorder;->startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/recorder/CallRecorder;


# direct methods
.method constructor <init>(Lcom/android/incallui/recorder/CallRecorder;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorder$2;->this$0:Lcom/android/incallui/recorder/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 2
    .param p1, "mr"    # Lmiui/media/Mp3Recorder;
    .param p2, "err"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorder$2;->this$0:Lcom/android/incallui/recorder/CallRecorder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord(I)V

    .line 114
    return-void
.end method
