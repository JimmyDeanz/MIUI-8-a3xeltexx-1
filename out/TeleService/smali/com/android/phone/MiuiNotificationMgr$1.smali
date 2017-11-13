.class Lcom/android/phone/MiuiNotificationMgr$1;
.super Landroid/os/Handler;
.source "MiuiNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiNotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiNotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiNotificationMgr;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/MiuiNotificationMgr;->showVoiceRoamingOn()V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 61
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 62
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/android/phone/PhoneProxy;->getServiceStateTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 63
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/android/phone/PhoneAdapter;->getVoiceRoaming(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v2    # "serviceState":Landroid/telephony/ServiceState;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/MiuiNotificationMgr;->hideVoiceRoamingOn()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
