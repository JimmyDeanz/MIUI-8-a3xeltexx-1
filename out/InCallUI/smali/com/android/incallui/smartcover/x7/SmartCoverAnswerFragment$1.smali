.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$1;
.super Landroid/os/Handler;
.source "SmartCoverAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$1;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$1;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCircleBounceAnimator()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
