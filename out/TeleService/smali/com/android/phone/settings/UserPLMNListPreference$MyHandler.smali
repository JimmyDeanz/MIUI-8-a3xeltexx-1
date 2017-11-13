.class Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
.super Landroid/os/Handler;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UserPLMNListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;Lcom/android/phone/settings/UserPLMNListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/UserPLMNListPreference$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    return-void
.end method


# virtual methods
.method public handleGetUPLMNList(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 474
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleGetUPLMNList: done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$400(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    .line 483
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 484
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 485
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetUPLMNList with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$500(Lcom/android/phone/settings/UserPLMNListPreference;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$502(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;

    .line 493
    :cond_0
    :goto_1
    return-void

    .line 480
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$400(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 491
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I
    invoke-static {v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$600(Lcom/android/phone/settings/UserPLMNListPreference;)I

    move-result v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/phone/PhoneAdapter;->convertPlmnList(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/android/phone/settings/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$700(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_0
    return-void

    .line 460
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->handleGetUPLMNList(Landroid/os/Message;)V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->handleSetPLMNDone(Landroid/os/Message;)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleSetPLMNDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 497
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleSetEFDone: done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 500
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 501
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetEFDone with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # invokes: Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V
    invoke-static {v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$800(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 509
    return-void

    .line 505
    :cond_0
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleSetEFDone: with OK result!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
