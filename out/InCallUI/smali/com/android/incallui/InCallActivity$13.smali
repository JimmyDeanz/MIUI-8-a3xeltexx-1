.class Lcom/android/incallui/InCallActivity$13;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->videoUpgradeRequestCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1218
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1219
    .local v0, "videoUpgradeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1221
    const-string v1, "processVideoUpgradeRequestCall: User accept."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getModifyToVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    .line 1227
    :goto_0
    const-string v1, "video_call"

    const-string v2, "video_call_agreen_video"

    invoke-static {v1, v2}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void

    .line 1225
    :cond_0
    const v1, 0x7f0c00cb

    invoke-static {v1}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    goto :goto_0
.end method
