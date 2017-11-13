.class public Lcom/android/server/policy/sec/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# static fields
.field private static final DEBUG:Z

.field public static final FEATURE_ENABLED:Z = false

.field private static final SETTING_GRIP_ENABLED:Ljava/lang/String; = "setting_grip_enabled"

.field private static final SETTING_GRIP_THRESHOLD:Ljava/lang/String; = "setting_grip_threshold"

.field private static final SETTING_GRIP_THRESHOLD_DEFAULT:Ljava/lang/String; = "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_tunning_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManager"

.field private static final TSP_STATE_VIEW_POLICY_LIST:I = 0x1

.field private static final TSP_STATE_VIEW_POLICY_NORMAL:I = 0x0

.field private static final TSP_STATE_WINDOW_POLICY_CUSTOM:I = 0x4

.field private static final TSP_STATE_WINDOW_POLICY_HOME:I = 0x1

.field private static final TSP_STATE_WINDOW_POLICY_INPUT_METHOD:I = 0x3

.field private static final TSP_STATE_WINDOW_POLICY_KEYGUARD:I = 0x2

.field private static final TSP_STATE_WINDOW_POLICY_MAX:I = 0x5

.field private static final TSP_STATE_WINDOW_POLICY_NORMAL:I


# instance fields
.field private final FEATURE_GRIP_ENABLED:Z

.field private mCustomeTspDeadzone:I

.field private final mThresholds:[Ljava/lang/String;

.field private mViewPolicy:I

.field private mWindowPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/TspStateManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManager;->mViewPolicy:I

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManager;->mCustomeTspDeadzone:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setting_grip_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManager;->FEATURE_GRIP_ENABLED:Z

    iget-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManager;->FEATURE_GRIP_ENABLED:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setting_grip_threshold"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "threshold":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104074e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "thresholds":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    .end local v0    # "threshold":Ljava/lang/String;
    .end local v1    # "thresholds":[Ljava/lang/String;
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    .restart local v0    # "threshold":Ljava/lang/String;
    .restart local v1    # "thresholds":[Ljava/lang/String;
    :cond_2
    const-string v2, "TspStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TspStateManager thresholds format was wrong. threshold ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    goto :goto_1

    .end local v0    # "threshold":Ljava/lang/String;
    .end local v1    # "thresholds":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTspState()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .local v4, "tspCommand":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_tunning_data,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/sec/TspStateManager;->mCustomeTspDeadzone:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    sget-boolean v5, Lcom/android/server/policy/sec/TspStateManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "TspStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTspState mWindowPolicy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cmd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "TspStateManager"

    const-string v6, "The file is not existed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .end local v2    # "fos":Ljava/io/OutputStream;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_tunning_data,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "TspStateManager"

    const-string v6, "The file cannot write."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_5
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_5
    throw v5

    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method public updateInputMethodPolicy()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManager;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/sec/TspStateManager;->updateTspState()V

    goto :goto_0
.end method

.method public updateViewPolicy(I)V
    .locals 3
    .param p1, "viewPolicy"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManager;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TspStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewPolicy viewPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mViewPolicy:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/policy/sec/TspStateManager;->mViewPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/sec/TspStateManager;->updateTspState()V

    goto :goto_0
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/policy/sec/TspStateManager;->FEATURE_GRIP_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mThresholds:[Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/sec/TspStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TspStateManager"

    const-string v2, "updateFocusedWindow : focusedWindow is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "tspStatePolicy":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getEdgeTspDeadzone()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mCustomeTspDeadzone:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManager;->mWindowPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/sec/TspStateManager;->updateTspState()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isHomeType()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/server/policy/sec/TspStateManager;->mCustomeTspDeadzone:I

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_1
.end method
