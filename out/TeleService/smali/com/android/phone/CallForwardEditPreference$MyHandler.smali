.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallForwardEditPreference;
    .param p2, "x1"    # Lcom/android/phone/CallForwardEditPreference$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x190

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 193
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eq v7, v8, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v10, v11, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput-object v13, v7, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 198
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 200
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    if-eqz v7, :cond_2

    .line 201
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v8, v9, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 261
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # invokes: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$300(Lcom/android/phone/CallForwardEditPreference;)V

    .line 262
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    move v7, v9

    .line 193
    goto :goto_0

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v9, 0x12c

    invoke-interface {v7, v8, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 211
    :cond_3
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 212
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v10, v12}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 214
    :cond_4
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v7

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 215
    .local v2, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_5

    .line 217
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 218
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v8, v12}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 220
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v2

    .local v5, "length":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 223
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v7

    aget-object v9, v2, v3

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_6

    .line 225
    aget-object v4, v2, v3

    .line 226
    .local v4, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v4}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 232
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v8, :cond_6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_6

    iget v7, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v8, :cond_6

    .line 236
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v7, :pswitch_data_0

    .line 244
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f080117

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 246
    .local v6, "s":Ljava/lang/CharSequence;
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080123

    invoke-virtual {v1, v7, v13}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f08011b

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 220
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v6    # "s":Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 238
    .restart local v4    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f08010d

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 239
    .restart local v6    # "s":Ljava/lang/CharSequence;
    goto :goto_3

    .line 241
    .end local v6    # "s":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f080112

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 242
    .restart local v6    # "s":Ljava/lang/CharSequence;
    goto :goto_3

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 267
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CallForwardEditPreference;->access$400(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 274
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 182
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
