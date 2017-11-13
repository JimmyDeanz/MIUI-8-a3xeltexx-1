.class Lcom/movial/ipphone/EmergencyCallController$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/EmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/EmergencyCallController;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/EmergencyCallController;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    const-string v4, "EmergencyCallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.movial.ims_emergency_fail"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    const-string v4, "canceled_by_user"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 269
    .local v1, "canceledByUser":Z
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I
    invoke-static {v4}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v4

    if-ne v4, v8, :cond_1

    if-nez v1, :cond_1

    .line 270
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v5, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v4, v5}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 271
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v4}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v2, "dial":Landroid/content/Intent;
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/movial/ipphone/EmergencyCallController;->access$700(Lcom/movial/ipphone/EmergencyCallController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    :try_start_0
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "canceledByUser":Z
    .end local v2    # "dial":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v1    # "canceledByUser":Z
    .restart local v2    # "dial":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 280
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "EmergencyCallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v2    # "dial":Landroid/content/Intent;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v5, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v4, v5}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    goto :goto_0

    .line 285
    .end local v1    # "canceledByUser":Z
    :cond_2
    const-string v4, "com.movial.ims_emergency_start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v5, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v4, v5}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    goto :goto_0

    .line 287
    :cond_3
    const-string v4, "com.movial.IMS_REGISTRATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const-string v5, "IMS_REG_STATUS"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mIMSRegistered:Z
    invoke-static {v4, v5}, Lcom/movial/ipphone/EmergencyCallController;->access$902(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    goto :goto_0
.end method
