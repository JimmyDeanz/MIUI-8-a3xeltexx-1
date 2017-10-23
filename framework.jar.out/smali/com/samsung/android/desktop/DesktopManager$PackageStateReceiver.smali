.class Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktop/DesktopManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktop/DesktopManager;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p2, "x1"    # Lcom/samsung/android/desktop/DesktopManager$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;-><init>(Lcom/samsung/android/desktop/DesktopManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "data":Ljava/lang/String;
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageStateReceiver, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z
    invoke-static {v2}, Lcom/samsung/android/desktop/DesktopManager;->access$600(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z
    invoke-static {v2, v5}, Lcom/samsung/android/desktop/DesktopManager;->access$602(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # getter for: Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z
    invoke-static {v2}, Lcom/samsung/android/desktop/DesktopManager;->access$600(Lcom/samsung/android/desktop/DesktopManager;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z
    invoke-static {v2, v3}, Lcom/samsung/android/desktop/DesktopManager;->access$602(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    goto :goto_0

    .line 296
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
