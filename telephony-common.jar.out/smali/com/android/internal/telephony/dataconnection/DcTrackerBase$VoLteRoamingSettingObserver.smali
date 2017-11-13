.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoLteRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1046
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1047
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 1048
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hd_voice_roaming_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1063
    .local v0, "isVoLteRoamingOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoLteRoamingSettingObserver: onChange :: isVoLteRoamingOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoLteRoamingOn()V

    .line 1065
    return-void

    .line 1061
    .end local v0    # "isVoLteRoamingOn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "hd_voice_roaming_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1053
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1057
    return-void
.end method
