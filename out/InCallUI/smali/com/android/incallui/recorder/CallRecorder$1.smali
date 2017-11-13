.class Lcom/android/incallui/recorder/CallRecorder$1;
.super Ljava/lang/Object;
.source "CallRecorder.java"

# interfaces
.implements Lcom/android/incallui/recorder/StorageMonitor$Listener;


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
    .line 52
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorder$1;->this$0:Lcom/android/incallui/recorder/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorder$1;->this$0:Lcom/android/incallui/recorder/CallRecorder;

    invoke-virtual {v0, p1}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord(I)V

    .line 56
    return-void
.end method
