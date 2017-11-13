.class public Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupService;
.super Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.source "PhoneSettingsCloudBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;

    invoke-direct {v0}, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;-><init>()V

    return-object v0
.end method
