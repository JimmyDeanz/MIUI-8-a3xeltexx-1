.class Lcom/android/server/notification/ManagedServices$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 634
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 631
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lcom/android/server/notification/ManagedServices$1;

    .prologue
    .line 630
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices$SettingsObserver;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->observe()V

    return-void
.end method

.method private observe()V
    .locals 4

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 641
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 642
    return-void
.end method

.method private update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 650
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting changed: mSecureSettingsUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    # invokes: Lcom/android/server/notification/ManagedServices;->rebindServices()V
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$600(Lcom/android/server/notification/ManagedServices;)V

    .line 655
    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 646
    invoke-direct {p0, p2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 647
    return-void
.end method
