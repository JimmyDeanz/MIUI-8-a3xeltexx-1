.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final DEBUG_NATIVE:Z = false

.field private static final HAS_NATIVE_BRIDGE:Z

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 427
    const-string v0, "0"

    const-string/jumbo v1, "ro.dalvik.vm.native.bridge"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 11
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 174
    iget-object v6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v6, "arr$":[J
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-wide v0, v6, v7

    .line 175
    .local v0, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    sget-boolean v5, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v9

    .line 177
    .local v9, "res":I
    if-eq v9, v10, :cond_0

    .line 181
    .end local v0    # "apkHandle":J
    .end local v9    # "res":I
    :goto_1
    return v9

    .line 174
    .restart local v0    # "apkHandle":J
    .restart local v9    # "res":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "apkHandle":J
    .end local v9    # "res":I
    :cond_1
    move v9, v10

    .line 181
    goto :goto_1
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 300
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "abi":I
    if-ltz v0, :cond_1

    .line 306
    aget-object v5, p2, v0

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 309
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v3, "isaSubdir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 311
    move-object v4, v3

    .line 316
    .end local v3    # "isaSubdir":Ljava/io/File;
    .local v4, "subDir":Ljava/io/File;
    :goto_0
    aget-object v5, p2, v0

    invoke-static {p0, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "copyRet":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 322
    .end local v1    # "copyRet":I
    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v4    # "subDir":Ljava/io/File;
    :goto_1
    return v1

    .line 313
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .restart local v4    # "subDir":Ljava/io/File;
    goto :goto_0

    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v4    # "subDir":Ljava/io/File;
    :cond_1
    move v1, v0

    .line 322
    goto :goto_1
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;

    .prologue
    const/16 v8, -0x71

    const/16 v7, -0x72

    const/4 v4, 0x1

    .line 328
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v5, :cond_2

    .line 332
    if-eqz p2, :cond_0

    const-string v5, "-"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 333
    const-string v5, "NativeHelper"

    const-string v6, "Ignoring abiOverride for multi arch application."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    const/16 v1, -0x72

    .line 337
    .local v1, "copyRet":I
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 338
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, p1, v5, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 340
    if-gez v1, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v8, :cond_1

    .line 342
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "copyRet":I
    :goto_0
    return v1

    .line 347
    .restart local v1    # "copyRet":I
    :cond_1
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 348
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, p1, v5, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 350
    if-gez v1, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v8, :cond_7

    .line 352
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    .end local v1    # "copyRet":I
    :catch_0
    move-exception v3

    .line 381
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NativeHelper"

    const-string v5, "Copying native libraries failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    const/16 v1, -0x6e

    goto :goto_0

    .line 357
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    .line 358
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    :try_start_1
    const-string v5, "-"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 359
    const/4 v2, 0x0

    .line 364
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    .line 366
    .local v0, "abiList":[Ljava/lang/String;
    :goto_2
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 368
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 371
    :cond_4
    const/4 v5, 0x1

    invoke-static {p0, p1, v0, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 373
    .restart local v1    # "copyRet":I
    if-gez v1, :cond_7

    if-eq v1, v7, :cond_7

    .line 374
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying native libraries [errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v0    # "abiList":[Ljava/lang/String;
    .end local v1    # "copyRet":I
    :cond_5
    if-eqz p2, :cond_3

    .line 361
    move-object v2, p2

    goto :goto_1

    .line 364
    :cond_6
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .restart local v1    # "copyRet":I
    :cond_7
    move v1, v4

    .line 379
    goto/16 :goto_0
.end method

.method private static createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    sget v3, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_1
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 278
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_2
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    .prologue
    .line 192
    const/16 v3, -0x72

    .line 193
    .local v3, "finalRes":I
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-wide v0, v2, v4

    .line 194
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;)I

    move-result v6

    .line 195
    .local v6, "res":I
    const/16 v7, -0x72

    if-ne v6, v7, :cond_1

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const/16 v7, -0x71

    if-ne v6, v7, :cond_2

    .line 200
    if-gez v3, :cond_0

    .line 201
    const/16 v3, -0x71

    goto :goto_1

    .line 203
    :cond_2
    if-ltz v6, :cond_5

    .line 205
    if-ltz v3, :cond_3

    if-ge v6, v3, :cond_0

    .line 206
    :cond_3
    move v3, v6

    goto :goto_1

    .end local v0    # "apkHandle":J
    .end local v6    # "res":I
    :cond_4
    move v6, v3

    .line 213
    :cond_5
    return v6
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 433
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-wide v0, v2, v3

    .line 434
    .local v0, "apkHandle":J
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v5

    .line 435
    .local v5, "res":I
    if-gez v5, :cond_0

    .line 436
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error scanning APK, code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 437
    :cond_0
    if-ne v5, v6, :cond_1

    .line 441
    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :goto_1
    return v6

    .line 433
    .restart local v0    # "apkHandle":J
    .restart local v5    # "res":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 241
    const/4 v1, 0x0

    .local v1, "nn":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 246
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 241
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const-string v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    .end local v1    # "nn":I
    :cond_2
    if-eqz p1, :cond_3

    .line 256
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 257
    const-string v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 158
    const-wide/16 v6, 0x0

    .line 159
    .local v6, "sum":J
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 160
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "apkHandle":J
    :cond_0
    return-wide v6
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 4
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "abi":I
    if-ltz v0, :cond_0

    .line 286
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    .line 288
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const-wide/16 v2, 0x0

    .line 389
    .local v2, "sum":J
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v4, :cond_3

    .line 393
    if-eqz p1, :cond_0

    const-string v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    const-string v4, "NativeHelper"

    const-string v5, "Ignoring abiOverride for multi arch application."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 398
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 401
    :cond_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 402
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 421
    :cond_2
    :goto_0
    return-wide v2

    .line 405
    :cond_3
    const/4 v1, 0x0

    .line 406
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 407
    const/4 v1, 0x0

    .line 412
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 414
    .local v0, "abiList":[Ljava/lang/String;
    :goto_2
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_5

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 416
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 419
    :cond_5
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 408
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_4

    .line 409
    move-object v1, p1

    goto :goto_1

    .line 412
    :cond_7
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_2
.end method
