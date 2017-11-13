.class Lcom/android/incallui/CallerInfo$1$1;
.super Landroid/os/Handler;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfo$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallerInfo$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfo$1;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/incallui/CallerInfo$1$1;->this$0:Lcom/android/incallui/CallerInfo$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1$1;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v0, v0, Lcom/android/incallui/CallerInfo$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1$1;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v0, v0, Lcom/android/incallui/CallerInfo$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1$1;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$1$1;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v3, v3, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 637
    :cond_0
    return-void
.end method
