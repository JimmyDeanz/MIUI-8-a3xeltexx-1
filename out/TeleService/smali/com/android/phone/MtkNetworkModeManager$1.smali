.class Lcom/android/phone/MtkNetworkModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkNetworkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MtkNetworkModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MtkNetworkModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/MtkNetworkModeManager;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/phone/MtkNetworkModeManager$1;->this$0:Lcom/android/phone/MtkNetworkModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v5, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    :cond_0
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v4

    .line 31
    .local v4, "virtualSlot":I
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "NetworkModeManager onReceive virtualSlot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " defaultData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v4, v5, :cond_1

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 36
    :cond_1
    const-string v5, "NetworkModeManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "virtualSlot":I
    :cond_2
    :goto_0
    return-void

    .line 39
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "virtualSlot":I
    :cond_3
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v3

    .line 40
    .local v3, "subId":I
    invoke-static {v3}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 41
    const-string v5, "NetworkModeManager"

    const-string v6, " invalidSub="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {p1}, Landroid/provider/MiuiSettings$VirtualSim;->isSupport4G(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 45
    const-string v5, "NetworkModeManager"

    const-string v6, " support4G"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_5
    const/4 v1, 0x0

    .line 49
    .local v1, "networkMode":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    .line 50
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preferred_network_mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    :goto_1
    const-string v5, "NetworkModeManager"

    const-string v6, " setPreferredNetworkType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 55
    :cond_6
    const/4 v1, 0x3

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
