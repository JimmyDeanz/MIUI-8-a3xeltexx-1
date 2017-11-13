.class Lcom/android/incallui/StatusBarNotifier$1$1;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/StatusBarNotifier$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$1$1;->this$1:Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return v2

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1$1;->this$1:Lcom/android/incallui/StatusBarNotifier$1;

    # invokes: Lcom/android/incallui/StatusBarNotifier$1;->fire()V
    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier$1;->access$000(Lcom/android/incallui/StatusBarNotifier$1;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1$1;->this$1:Lcom/android/incallui/StatusBarNotifier$1;

    iget-object v0, v0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotificationToStatusBar(ZLcom/android/incallui/CallList;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
