.class public Lcom/android/phone/settings/localbackup/PhoneSettingsLocalBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "PhoneSettingsLocalBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p3, p2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 29
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/phone/settings/localbackup/PhoneSettingsLocalBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;

    invoke-direct {v1}, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V

    .line 23
    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 2
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/phone/settings/localbackup/PhoneSettingsLocalBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;

    invoke-direct {v1}, Lcom/android/phone/settings/cloudbackup/PhoneSettingsCloudBackupImpl;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .line 17
    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method
