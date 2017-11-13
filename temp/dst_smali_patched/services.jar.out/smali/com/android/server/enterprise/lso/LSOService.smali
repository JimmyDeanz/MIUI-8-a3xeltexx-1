.class public Lcom/android/server/enterprise/lso/LSOService;
.super Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mItemData:[Landroid/app/enterprise/lso/LSOItemData;

.field private mOverlayAdminUid:I

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/enterprise/lso/LSOItemData;

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const-string v9, "/data/system/enterprise/temp"

    invoke-static {v9}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v1, v8

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/enterprise/temp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "candidatePath":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .local v0, "buffer":[B
    const/4 v3, 0x0

    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .end local v7    # "length":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v9, "LSO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to copy image from parcel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_4
    move-object v1, v8

    goto :goto_0

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "length":I
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    if-eqz v6, :cond_0

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    const-string v8, "LSO"

    const-string v9, "failed to close outputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v8, "LSO"

    const-string v9, "failed to close inputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "length":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_8
    throw v8

    :catch_5
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    :catch_7
    move-exception v2

    goto/16 :goto_2

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private declared-synchronized deleteFiles(I)V
    .locals 6
    .param p1, "layer"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "token":J
    if-eqz p1, :cond_1

    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    :try_start_3
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private deleteWallpaperFiles()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotfication(I)V
    .locals 7
    .param p1, "enable"    # I

    .prologue
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendConfigChangeNotfication: enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mdm_wallpaper_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, p1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "mdm_wallpaper_enabled"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while updating setting or sending intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public canConfigure(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "allowedCnt":I
    const/4 v2, 0x0

    .local v2, "featureCnt":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v4, "uid":I
    const/4 p2, -0x1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v5, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .end local v4    # "uid":I
    :cond_3
    :goto_0
    if-lez v2, :cond_4

    if-ne v2, v0, :cond_4

    const/4 v3, 0x1

    .local v3, "result":Z
    :goto_1
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled exception in canConfigure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/app/enterprise/lso/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "destFile":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    .locals 7
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    const-string v5, "LSO"

    const-string v6, "copyFiles()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "retVal":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "token":J
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    const-string v5, "/data/system/enterprise"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    :try_start_3
    const-string v5, "/data/system/enterprise/lso"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "layerDir":Ljava/lang/String;
    .end local v1    # "retVal":Z
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "layerDir":Ljava/lang/String;
    .restart local v1    # "retVal":Z
    .restart local v2    # "token":J
    :cond_1
    :try_start_5
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v1

    const/4 v1, 0x1

    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_3
    move v4, v1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public declared-synchronized copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    .locals 15
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    monitor-enter p0

    if-nez p1, :cond_1

    const/4 v9, 0x1

    :cond_0
    :goto_0
    monitor-exit p0

    return v9

    :cond_1
    :try_start_0
    const-string v12, "LSO"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copyFiles() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, "breadth":Ljava/lang/Integer;
    const/4 v9, 0x1

    .local v9, "retVal":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v11

    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    .local v2, "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v2, :cond_0

    const-string v12, "android:src"

    invoke-virtual {v2, v12}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const-string v13, "android:src"

    invoke-virtual {v2, v13}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_8

    const-string v12, "LSO"

    const-string v13, "copyFiles - attrSet ATTR_IMAGE_SRC : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    .end local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer;

    move-object v7, v0

    .local v7, "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_3

    const-string v12, "LSO"

    const-string v13, "copyFiles - LSO_ITEM_TYPE_CONTAINER : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .local v6, "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v6, :cond_4

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v12

    if-ge v5, v12, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v7, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v12

    add-int/lit8 v13, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z

    move-result v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v7    # "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemImage;

    move-object v8, v0

    .local v8, "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_6

    const-string v12, "LSO"

    const-string v13, "copyFiles - LSO_ITEM_TYPE_IMAGE : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v6, :cond_7

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v8, v6}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v8    # "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v6, :cond_9

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v12, "android:src"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v3    # "breadth":Ljava/lang/Integer;
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v9    # "retVal":Z
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData(Landroid/app/enterprise/ContextInfo;I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LSO"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getPreferences(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConfigured("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .local v0, "featureCnt":I
    const/4 v2, 0x0

    .local v2, "resultCnt":I
    if-eqz p2, :cond_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    :cond_1
    :goto_1
    if-nez p2, :cond_5

    if-lez v2, :cond_4

    .local v1, "result":Z
    :goto_2
    return v1

    .end local v1    # "result":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    if-ne v0, v2, :cond_6

    .restart local v1    # "result":Z
    :goto_3
    goto :goto_2

    .end local v1    # "result":Z
    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    :cond_1
    return-void
.end method

.method public resetData(Landroid/app/enterprise/ContextInfo;I)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "LSO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .local v10, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-ltz p2, :cond_0

    if-le p2, v5, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 0...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LSO"

    const-string v1, "Not allowed to reset Overlay"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_4
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v0, p2

    :cond_5
    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has reset banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "psToken":J
    :cond_6
    if-eqz v10, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication(I)V

    goto :goto_0

    :cond_7
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    if-gt v7, v5, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetWallpaper(Landroid/app/enterprise/ContextInfo;)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LSO"

    const-string v1, "resetWallpaper()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LSO"

    const-string v1, "Not allowed to reset Wallpaper"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    const/4 v7, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has reset banner wallpaper."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "userId":I
    .end local v8    # "token":J
    :cond_2
    if-eqz v7, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication(I)V

    goto :goto_0

    .restart local v6    # "userId":I
    .restart local v8    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public declared-synchronized setData(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOItemData;I)I
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "LSO"

    const-string v3, "setData()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v11, "uid":I
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid layer. Layer must be 1...3"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v11    # "uid":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v11    # "uid":I
    :cond_1
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LSO"

    const-string v3, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, -0x1

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .local v10, "telMgr":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "LSO"

    const-string v3, "Telephony is not supported"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, -0x3

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :cond_4
    :try_start_7
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, -0x4

    :try_start_8
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_9
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v4, v11

    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v9

    .local v9, "result":Z
    if-nez v9, :cond_7

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x0

    aput-object v3, v2, p3

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    :cond_6
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, -0x4

    :try_start_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :cond_7
    :try_start_b
    iput v11, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object p2, v2, p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication(I)V

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v12

    .local v12, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " has changed banner settings."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public setPreferences(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x6

    const/4 v4, 0x1

    const/4 v7, 0x1

    .local v7, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v2, v3, :cond_2

    const-string v0, "LSO"

    const-string v2, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "psToken":J
    :cond_4
    if-eqz v7, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .end local v8    # "psToken":J
    :cond_5
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setWallpaper(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWallpaper("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v15, "uid":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "LSO"

    const-string v5, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const-string v4, "LSO"

    const-string v5, "imageFilePath or image is null, please check path"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "tempFilePath":Ljava/lang/String;
    if-nez v14, :cond_3

    const-string v4, "LSO"

    const-string v5, "file not created"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x4

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    const/4 v11, 0x0

    .local v11, "bCopied":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "LSO"

    const-string v5, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x3

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v4, "/data/system/enterprise"

    invoke-static {v4}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, -0x4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v4, "/data/system/enterprise/lso"

    invoke-static {v4}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, -0x4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v5, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {v14, v4, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v4, "LSO"

    const-string v5, "Create Ripple image"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v6, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v4, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    if-nez v11, :cond_8

    const-string v4, "LSO"

    const-string v5, "Error in copying file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const/4 v4, -0x4

    goto/16 :goto_0

    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v6, v15

    invoke-virtual {v4, v6, v7, v14}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v13

    .local v13, "result":Z
    if-nez v13, :cond_9

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    const/4 v4, -0x4

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication(I)V

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .local v10, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "LSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, " has changed banner wallpaper to file "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
