.class public Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;
.super Ljava/lang/Object;
.source "PhoneSettingsCloudBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 14
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "start phone settings cloud backup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    if-nez p2, :cond_0

    .line 16
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "onBackupSettings dataPackage is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;->backupCallRecord(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 20
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->backupTelocation(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 21
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AutoIpBackupHelper;->backupAutoIp(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 22
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;->backupCallAdvanced(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 23
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->backupRespondViaSms(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 24
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;->backupAnswerState(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 25
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->backupAutoAnswer(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 26
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->backupSip(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 27
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "end phone settings cloud backup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "start phone settings cloud restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-nez p2, :cond_0

    .line 34
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreSettings dataPackage is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;->restoreFromCloud(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 38
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->restoreTelocation(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 39
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AutoIpBackupHelper;->restoreAutoIp(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 40
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;->restoreCallAdvanced(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 41
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->restoreRespondViaSms(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 42
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;->restoreAnswerState(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 43
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->restoreAutoAnswer(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 44
    invoke-static {p1, p2}, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->restoreSip(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 45
    sget-object v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "end phone settings cloud restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
