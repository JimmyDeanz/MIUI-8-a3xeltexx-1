.class public Lcom/android/internal/app/AppLockPolicy;
.super Ljava/lang/Object;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLockPolicy$SettingsObserver;
    }
.end annotation


# static fields
.field public static final FLOATING_MESSAGE_REQUEST:Ljava/lang/String; = "FLOATING_MESSAGE_REQUEST"

.field public static final LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field public static final LAUNCH_FROM_RESUME:Ljava/lang/String; = "LAUNCH_FROM_RESUME"

.field public static final LAUNCH_FROM_SETTINGS:Ljava/lang/String; = "APPLOCK_APPS_FROM_SETTINGS"

.field public static final LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final LOCKED_PACKAGE_INTENT:Ljava/lang/String; = "LOCKED_PACKAGE_INTENT"

.field public static final LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field public static final LOCKED_PACKAGE_MULTIWINDOWSTYLE:Ljava/lang/String; = "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

.field public static final LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final LOCKED_PACKAGE_WINDOW_ATTRIBUTES:Ljava/lang/String; = "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

.field public static final REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field private static TAG:Ljava/lang/String;

.field private static isSupportAppLock:Z

.field private static mInstance:Lcom/android/internal/app/AppLockPolicy;


# instance fields
.field private final LOCKED_CLASSES:Ljava/lang/String;

.field private final LOCKED_PACKAGE:Ljava/lang/String;

.field private final LOCKED_TYPE:Ljava/lang/String;

.field private final PASSWORD_TYPE:Ljava/lang/String;

.field private final PATTERN_TYPE:Ljava/lang/String;

.field private mAppLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedLock:Ljava/lang/Object;

.field private mAppLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedVerifyingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLockedType:Ljava/lang/String;

.field private mLockedTypeInt:I

.field private mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "AppLockPolicy"

    sput-object v0, Lcom/android/internal/app/AppLockPolicy;->TAG:Ljava/lang/String;

    const-string v0, "applock"

    invoke-static {v0}, Lcom/android/internal/app/AppLockPolicy;->isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "smartmanager_locked_apps_packages"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->LOCKED_PACKAGE:Ljava/lang/String;

    const-string v0, "smartmanager_locked_apps_classes"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->LOCKED_CLASSES:Ljava/lang/String;

    const-string v0, "applock_lock_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->LOCKED_TYPE:Ljava/lang/String;

    const-string v0, "pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->PATTERN_TYPE:Ljava/lang/String;

    const-string v0, "password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->PASSWORD_TYPE:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;-><init>(Lcom/android/internal/app/AppLockPolicy;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/AppLockPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    iget v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/AppLockPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/AppLockPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/internal/app/AppLockPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/AppLockPolicy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isSupportAppLock()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock:Z

    return v0
.end method

.method private static isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "featureName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "features":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAppLockedUnLockedApp()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v4, 0x2c

    const-string v3, "AppLockPolicy dump start"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "LockedPackage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LockedClass["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HasUnLockedPackage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HasUnLockedClass["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v1    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mAppLockedVerifyingList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v1    # "str":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_9
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "AppLockPolicy dump end"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v3, 0x1

    return v3
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "checkAction":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "hasEnrolledFingers":Z
    iget v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v3

    if-lez v3, :cond_2

    move v1, v2

    :cond_0
    :goto_0
    const-string v2, "pattern_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "android.intent.action.CHECK_APPLOCK_PATTERN"

    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/app/AppLockPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppLockedCheckAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "password_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto :goto_1

    :cond_4
    const-string v2, "pincode_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "android.intent.action.CHECK_APPLOCK_PINCODE"

    goto :goto_1

    :cond_5
    const-string v2, "fingerprint_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT"

    goto :goto_1

    :cond_6
    const-string v2, "fingerprint_pattern_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_7

    const-string v0, "android.intent.action.CHECK_APPLOCK_PATTERN"

    goto :goto_1

    :cond_7
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

    goto :goto_1

    :cond_8
    const-string v2, "fingerprint_pincode_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v1, :cond_9

    const-string v0, "android.intent.action.CHECK_APPLOCK_PINCODE"

    goto :goto_1

    :cond_9
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

    goto :goto_1

    :cond_a
    const-string v2, "fingerprint_password_type"

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_b

    const-string v0, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto :goto_1

    :cond_b
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

    goto :goto_1
.end method

.method public getAppLockedClassList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v3, v3, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "st":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "st":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLockedPackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public isAppLockedClass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLockedActivity(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .local v2, "isLocked":Z
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v4, v4, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return v2

    .restart local v0    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isLockedPackage(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .local v1, "isLocked":Z
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v4, v4, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    return v1

    .restart local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setAppLockedUnLockClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "relatedClass":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "relatedClass":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "relatedPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "relatedPackage":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startCheckActivity(Landroid/content/Intent;Z)Z
    .locals 5
    .param p1, "blockedIntent"    # Landroid/content/Intent;
    .param p2, "isFromRecent"    # Z

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/internal/app/AppLockPolicy;->TAG:Ljava/lang/String;

    const-string v3, "startCheckActivity - unknown, skip!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "in":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v4, "pattern_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.intent.action.CHECK_APPLOCK_PATTERN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v3, 0x50000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "APPLOCK_APPS_INTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string v3, "APPLOCK_APPS_FROM_RECENTS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/android/internal/app/AppLockPolicy;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_APPLOCK_PASSWORD"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v4, "password_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v3, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
