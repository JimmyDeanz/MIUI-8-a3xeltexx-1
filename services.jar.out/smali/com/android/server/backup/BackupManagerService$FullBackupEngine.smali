.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mBackupSize:J

.field mExtraFlag:I

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutput:Ljava/io/OutputStream;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field mPrivilegeApp:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;ZIZ)V
    .locals 3
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p5, "alsoApks"    # Z
    .param p6, "extraFlag"    # I
    .param p7, "privilegeApp"    # Z

    .prologue
    .line 3592
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3593
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 3594
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 3595
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    .line 3596
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 3597
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 3598
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 3599
    iput p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mExtraFlag:I

    .line 3600
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mBackupSize:J

    .line 3601
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPrivilegeApp:Z

    .line 3602
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3508
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 19
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3714
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 3715
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3716
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3724
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3725
    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 3726
    .local v16, "obbDir":Ljava/io/File;
    if-eqz v16, :cond_0

    .line 3728
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 3729
    .local v17, "obbFiles":[Ljava/io/File;
    if-eqz v17, :cond_0

    .line 3730
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3731
    .local v9, "obbDirName":Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, "arr$":[Ljava/io/File;
    array-length v14, v12

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v15, v12, v13

    .line 3732
    .local v15, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3731
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3737
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "obb":Ljava/io/File;
    .end local v17    # "obbFiles":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3752
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3753
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3755
    .local v6, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3756
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3757
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3758
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3760
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3761
    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .end local v3    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3763
    if-eqz p3, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3764
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_3

    .line 3765
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3773
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3774
    .local v5, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 3775
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3782
    const-wide/16 v8, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 3783
    return-void

    .line 3761
    .end local v5    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "installerName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 3763
    .end local v3    # "installerName":Ljava/lang/String;
    :cond_2
    const-string v8, "0"

    goto :goto_1

    .line 3767
    :cond_3
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3768
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 3769
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3768
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3803
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3804
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3805
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3806
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3808
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3809
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3810
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3811
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3813
    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    .line 3814
    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3815
    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3816
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3818
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3819
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 3823
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3824
    return-void
.end method


# virtual methods
.method public backupOnePackage(Landroid/content/pm/PackageInfo;)I
    .locals 24
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3609
    const/16 v19, 0x0

    .line 3610
    .local v19, "result":I
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding to full backup agent : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    const/4 v7, 0x0

    .line 3613
    .local v7, "agent":Landroid/app/IBackupAgent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mExceptionList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3616
    const-string v5, "BackupManagerService"

    const-string v6, "changing backup agent name to null for edm restore request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    new-instance v15, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v15, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3618
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    iput-object v5, v15, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v15, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    .line 3625
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v7, :cond_c

    .line 3626
    const/16 v18, 0x0

    .line 3629
    .local v18, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-eqz v5, :cond_0

    .line 3630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v19

    .line 3637
    :cond_0
    if-nez v19, :cond_3

    .line 3638
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 3640
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3641
    .local v14, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 3642
    .local v17, "isSharedStorage":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    if-eqz v5, :cond_7

    if-nez v17, :cond_1

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPrivilegeApp:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mExtraFlag:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_7

    :cond_2
    const/4 v10, 0x1

    .line 3649
    .local v10, "sendApk":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v12

    .line 3652
    .local v12, "widgetBlob":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v9

    .line 3653
    .local v9, "token":I
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    const/4 v5, 0x1

    aget-object v8, v18, v5

    if-nez v17, :cond_8

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mExtraFlag:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[BI)V

    .line 3655
    .local v4, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3656
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v18, v5

    .line 3657
    new-instance v20, Ljava/lang/Thread;

    const-string v5, "app-data-runner"

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3658
    .local v20, "t":Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3662
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    aget-object v6, v18, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v0, p0
 
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;
 
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I
 
    move-result v8

    invoke-static {v2, v3, v5, v8}, Lcom/android/server/backup/BackupManagerServiceInjector;->routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V

    move-result-wide v22

    move-wide/from16 v0, v22
    invoke-static {v4, v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z
 
    move-result v2
 
    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mBackupSize:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3669
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v9}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3670
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup failed on package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3674
    const/16 v19, -0x3eb

    .line 3690
    .end local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v9    # "token":I
    .end local v10    # "sendApk":Z
    .end local v12    # "widgetBlob":[B
    .end local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "isSharedStorage":Z
    .end local v20    # "t":Ljava/lang/Thread;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 3691
    if-eqz v18, :cond_5

    .line 3692
    const/4 v5, 0x0

    aget-object v5, v18, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3693
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v18, v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3707
    .end local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5
    :goto_4
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    :goto_miui_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 3708
    return v19

    .line 3622
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    goto/16 :goto_0

    .line 3642
    .restart local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "isSharedStorage":Z
    .restart local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 3653
    .restart local v9    # "token":I
    .restart local v10    # "sendApk":Z
    .restart local v12    # "widgetBlob":[B
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3663
    .restart local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v20    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v16

    .line 3664
    .local v16, "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "BackupManagerService"

    const-string v6, "Caught exception reading from agent"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3665
    const/16 v19, -0x3eb

    .line 3666
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mBackupSize:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 3681
    .end local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v9    # "token":I
    .end local v10    # "sendApk":Z
    .end local v12    # "widgetBlob":[B
    .end local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "isSharedStorage":Z
    .end local v20    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v16

    .line 3682
    .restart local v16    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error backing up "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3684
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3686
    const/16 v19, -0x3eb

    .line 3690
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 3691
    if-eqz v18, :cond_5

    .line 3692
    const/4 v5, 0x0

    aget-object v5, v18, v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3693
    :cond_9
    const/4 v5, 0x1

    aget-object v5, v18, v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3695
    :catch_2
    move-exception v16

    .line 3696
    const-string v5, "BackupManagerService"

    const-string v6, "Error bringing down backup stack"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    const/16 v19, -0x3e8

    .line 3699
    goto/16 :goto_4

    .line 3695
    .end local v16    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v16

    .line 3696
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Error bringing down backup stack"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    const/16 v19, -0x3e8

    .line 3699
    goto/16 :goto_4

    .line 3688
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3690
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 3691
    if-eqz v18, :cond_b

    .line 3692
    const/4 v6, 0x0

    aget-object v6, v18, v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    aget-object v6, v18, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3693
    :cond_a
    const/4 v6, 0x1

    aget-object v6, v18, v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    aget-object v6, v18, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3698
    :cond_b
    :goto_5
    throw v5

    .line 3695
    :catch_4
    move-exception v16

    .line 3696
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    const-string v8, "Error bringing down backup stack"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    const/16 v19, -0x3e8

    goto :goto_5

    .line 3701
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_c
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to bind to full agent for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 3705
    const/16 v19, -0x3eb

    goto/16 :goto_miui_0
.end method

.method public getBackupSize()J
    .locals 2

    .prologue
    .line 3605
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mBackupSize:J

    return-wide v0
.end method
