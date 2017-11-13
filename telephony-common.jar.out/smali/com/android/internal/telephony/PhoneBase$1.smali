.class Lcom/android/internal/telephony/PhoneBase$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 159
    if-nez p2, :cond_1

    .line 160
    const-string v4, "PhoneBase"

    const-string v5, "Intent is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImsIntentReceiver: action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "android:phone_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    const-string v4, "android:phone_id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, "extraPhoneId":I
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eq v1, v7, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 175
    .end local v1    # "extraPhoneId":I
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v5

    .line 176
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 178
    sget-boolean v4, Lcom/android/internal/telephony/PhoneBase;->mUsedLegacyIms:Z

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 180
    monitor-exit v5

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 183
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V

    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    iget v6, v6, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 196
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneBase;->INTENT_CHAMELEON_TELEPHONY_UPDATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const-string v4, "brandalpha"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "brandAlpha":Ljava/lang/String;
    const-string v4, "networkcode"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "networkCode":Ljava/lang/String;
    const-string v4, "resellerid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "resellerId":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 204
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CscChameleonParser] Set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 208
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CscChameleonParser] Set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_6
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CscChameleonParser] Set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_RESELLERID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_RESELLERID:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "brandAlpha":Ljava/lang/String;
    .end local v2    # "networkCode":Ljava/lang/String;
    .end local v3    # "resellerId":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    sget-boolean v4, Lcom/android/internal/telephony/PhoneBase;->mUsedLegacyIms:Z

    if-eqz v4, :cond_8

    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 190
    monitor-exit v5

    goto/16 :goto_0

    .line 193
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
