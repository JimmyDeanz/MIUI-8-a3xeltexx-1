.class Lcom/android/phone/settings/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 148
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$000(Lcom/android/phone/settings/NetworkSetting;)V

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$100(Lcom/android/phone/settings/NetworkSetting;)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const v3, 0x7f0802e5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 158
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$200(Lcom/android/phone/settings/NetworkSetting;)V

    .line 159
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z
    invoke-static {v2, v4}, Lcom/android/phone/settings/NetworkSetting;->access$302(Lcom/android/phone/settings/NetworkSetting;Z)Z

    goto :goto_0

    .line 163
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/settings/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/settings/NetworkSetting;->access$400(Lcom/android/phone/settings/NetworkSetting;Ljava/util/List;I)V

    goto :goto_0

    .line 168
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/NetworkSetting;->removeDialog(I)V

    .line 169
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/settings/NetworkSetting;->access$500(Lcom/android/phone/settings/NetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$600(Lcom/android/phone/settings/NetworkSetting;)V

    goto :goto_0

    .line 186
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/NetworkSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/settings/NetworkSetting;->access$500(Lcom/android/phone/settings/NetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/NetworkSetting;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[NetworksList] Fail to dismiss auto select dialog"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 201
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$600(Lcom/android/phone/settings/NetworkSetting;)V

    .line 202
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$900(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/NetworkSetting$1$1;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/NetworkSetting$1$1;-><init>(Lcom/android/phone/settings/NetworkSetting$1;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 211
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->startNetworkQuery()V
    invoke-static {v2}, Lcom/android/phone/settings/NetworkSetting;->access$1000(Lcom/android/phone/settings/NetworkSetting;)V

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_5
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method
