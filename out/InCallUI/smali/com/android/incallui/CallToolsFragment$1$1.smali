.class Lcom/android/incallui/CallToolsFragment$1$1;
.super Ljava/lang/Object;
.source "CallToolsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallToolsFragment$1;->recordTimeCallback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallToolsFragment$1;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/android/incallui/CallToolsFragment$1;J)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/incallui/CallToolsFragment$1$1;->this$1:Lcom/android/incallui/CallToolsFragment$1;

    iput-wide p2, p0, Lcom/android/incallui/CallToolsFragment$1$1;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return InCallUI with call recording duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/CallToolsFragment$1$1;->val$duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1$1;->this$1:Lcom/android/incallui/CallToolsFragment$1;

    iget-object v0, v0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    iget-wide v2, p0, Lcom/android/incallui/CallToolsFragment$1$1;->val$duration:J

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallToolsFragment;->onCallRecordingStarted(J)V

    .line 259
    return-void
.end method
