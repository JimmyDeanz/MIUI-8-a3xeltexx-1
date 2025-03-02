.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 996
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 997
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 998
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1012
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyChangeProfileReqToRIL(ILandroid/os/Message;)Z

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendDataSettingToRIL()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$300(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1017
    return-void

    .line 1011
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1003
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1007
    return-void
.end method
