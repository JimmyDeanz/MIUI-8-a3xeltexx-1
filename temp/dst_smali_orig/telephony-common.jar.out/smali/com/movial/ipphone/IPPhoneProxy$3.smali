.class Lcom/movial/ipphone/IPPhoneProxy$3;
.super Lcom/movial/ipphone/IPStateListener;
.source "IPPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhoneProxy;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {p0}, Lcom/movial/ipphone/IPStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisteredStateChanged(ZI)V
    .locals 8
    .param p1, "status"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .local v4, "result":Z
    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "IMS_REGISTERED"

    invoke-static {v6, v7, v1}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v6

    if-eq p1, v6, :cond_0

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "IMS_REGISTERED"

    invoke-static {v6, v7, p1}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    if-eqz p1, :cond_1

    if-ne p2, v5, :cond_1

    const/4 v4, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;
    invoke-static {v6}, Lcom/movial/ipphone/IPPhoneProxy;->access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhone;->getService()Lcom/movial/ipphone/IIPService;

    move-result-object v3

    .local v3, "mIPService":Lcom/movial/ipphone/IIPService;
    new-instance v6, Landroid/os/Messenger;

    iget-object v7, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v3, v6}, Lcom/movial/ipphone/IIPService;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v2

    .local v2, "mCSEmergencyPref":Z
    if-eqz v2, :cond_4

    .local v1, "emergencyCallPref":I
    :goto_0
    const-string v5, "IPPhoneProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set mEmergencyCallPref to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;
    invoke-static {v5}, Lcom/movial/ipphone/IPPhoneProxy;->access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "emergencyCallPref":I
    .end local v2    # "mCSEmergencyPref":Z
    .end local v3    # "mIPService":Lcom/movial/ipphone/IIPService;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V
    invoke-static {v5, p1}, Lcom/movial/ipphone/IPPhoneProxy;->access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z
    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->access$600()Z

    move-result v5

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V
    invoke-static {v5, v4}, Lcom/movial/ipphone/IPPhoneProxy;->access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V

    :cond_2
    # setter for: Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z
    invoke-static {v4}, Lcom/movial/ipphone/IPPhoneProxy;->access$602(Z)Z

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z
    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->access$600()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V
    invoke-static {v5}, Lcom/movial/ipphone/IPPhoneProxy;->access$800(Lcom/movial/ipphone/IPPhoneProxy;)V

    :cond_3
    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z
    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->access$600()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    sget-object v6, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    invoke-virtual {v5, v6}, Lcom/movial/ipphone/IPPhoneProxy;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRegisteredStateChanged. mRegistered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z
    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->access$600()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/movial/ipphone/IPPhoneProxy;->access$900(Ljava/lang/String;)V

    return-void

    .restart local v2    # "mCSEmergencyPref":Z
    .restart local v3    # "mIPService":Lcom/movial/ipphone/IIPService;
    :cond_4
    move v1, v5

    goto :goto_0

    .end local v2    # "mCSEmergencyPref":Z
    .end local v3    # "mIPService":Lcom/movial/ipphone/IIPService;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "IPPhoneProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "register EmergencyCallPref fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy$3;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    sget-object v6, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    invoke-virtual {v5, v6}, Lcom/movial/ipphone/IPPhoneProxy;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    goto :goto_2
.end method
