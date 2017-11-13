.class Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->setEnabled(Z)V

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 92
    .local v1, "enable":I
    iget-object v4, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 108
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
