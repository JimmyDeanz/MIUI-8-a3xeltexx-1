.class Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppServFailedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p2, "x1"    # Lcom/android/incallui/InCallActivity$1;

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;-><init>(Lcom/android/incallui/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 1247
    if-eqz p2, :cond_0

    const-string v1, "org.codeaurora.ACTION_SUPP_SERVICE_FAILURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    const-string v1, "supp_serv_failure"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1249
    .local v0, "suppServiceFailure":I
    if-ne v0, v3, :cond_1

    .line 1250
    const-string v1, "SuppServFailedReceiver: Not support type of SuppService."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    .end local v0    # "suppServiceFailure":I
    :cond_0
    :goto_0
    return-void

    .line 1253
    .restart local v0    # "suppServiceFailure":I
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->onSuppServiceFailed(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/InCallActivity;->access$400(Lcom/android/incallui/InCallActivity;I)V

    goto :goto_0
.end method
