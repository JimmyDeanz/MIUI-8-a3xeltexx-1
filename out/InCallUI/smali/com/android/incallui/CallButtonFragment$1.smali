.class Lcom/android/incallui/CallButtonFragment$1;
.super Lcom/android/incallui/view/OnEffectiveClickListener;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Lcom/android/incallui/view/OnEffectiveClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectiveClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 153
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClick()V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    new-array v3, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_call_conference_show_tools"

    :goto_1
    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video_call_show_tools"

    :goto_2
    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "video_call_voice_show_tools"

    :goto_3
    aput-object v1, v3, v6

    # invokes: Lcom/android/incallui/CallButtonFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v2, v4, v4, v3}, Lcom/android/incallui/CallButtonFragment;->access$100(Lcom/android/incallui/CallButtonFragment;ZZ[Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->onToolButtonClicked()V

    goto :goto_0

    .line 160
    :cond_0
    const-string v1, "video_call_conference_show_dialpad"

    goto :goto_1

    :cond_1
    const-string v1, "video_call_show_dialpad"

    goto :goto_2

    :cond_2
    const-string v1, "video_call_voice_show_dialpad"

    goto :goto_3

    .line 174
    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    .line 175
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "video_call_conference_end_call"

    aput-object v3, v2, v5

    const-string v3, "video_call_end_call"

    aput-object v3, v2, v4

    const-string v3, "video_call_voice_end_call"

    aput-object v3, v2, v6

    # invokes: Lcom/android/incallui/CallButtonFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallButtonFragment;->access$100(Lcom/android/incallui/CallButtonFragment;ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
