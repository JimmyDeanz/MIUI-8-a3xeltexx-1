.class Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
.super Landroid/os/Handler;
.source "PreferredNetworkTypeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v4

    # setter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v2, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$102(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)I

    .line 255
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->setValue(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type, exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    const-string v2, ""

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$200(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 270
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 272
    invoke-direct {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    .line 275
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->finish()V

    .line 298
    return-void

    .line 278
    :cond_0
    const-string v1, "PreferedNetworkTypeListPreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->isMtkPlatform()Z
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$700(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 293
    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I
    invoke-static {v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$800(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->setNetworkModeInDb(Ljava/util/List;II)V

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$200(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Ljava/lang/String;)V

    .line 222
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 232
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$500(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
