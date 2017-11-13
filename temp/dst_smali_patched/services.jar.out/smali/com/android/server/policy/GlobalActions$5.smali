.class Lcom/android/server/policy/GlobalActions$5;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mShowConditionalEmergency:Z

.field telephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 7
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mIsFirstEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$5;->mShowConditionalEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$5;->mIsVT:Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$5;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mIsVT:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mIsVT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onPress()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-string v2, "GlobalActions"

    const-string v3, "in onPress of LongLifeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v3, "com.android.service.GlobalAction"

    const-string v4, "0002"

    const-string v5, "EmergencyMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$3100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mIsFirstEmergency:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$5;->showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mShowConditionalEmergency:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mIsFirstEmergency:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$5;->mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "domesticOtaStart":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GlobalActions"

    const-string v7, "EmergencyMode is disable on OTA mode"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "lock"

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "missing_phone_lock"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .local v2, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$5;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "kids_home_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v3, v5

    .local v3, "kidsModeEnabled":Z
    :goto_1
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x600

    invoke-virtual {v2, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    .local v4, "upsmModeEnabled":Z
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->canSetMode()Z

    move-result v0

    .local v0, "canSetMode":Z
    const-string v7, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kidsModeEnabled ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "upsmModeEnabled ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "canSetMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    move v6, v5

    goto/16 :goto_0

    .end local v0    # "canSetMode":Z
    .end local v3    # "kidsModeEnabled":Z
    .end local v4    # "upsmModeEnabled":Z
    :cond_2
    move v3, v6

    goto :goto_1

    .restart local v3    # "kidsModeEnabled":Z
    :cond_3
    move v4, v6

    goto :goto_2

    .end local v3    # "kidsModeEnabled":Z
    :cond_4
    const-string v5, "GlobalActions"

    const-string v7, "mEmergency : emMgr is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_5
    const-string v5, "GlobalActions"

    const-string v7, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
