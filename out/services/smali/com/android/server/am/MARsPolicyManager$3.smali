.class Lcom/android/server/am/MARsPolicyManager$3;
.super Landroid/database/ContentObserver;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->access$602(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1808
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1809
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange - DEFAULT_INPUT_METHOD!  defaultIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    return-void
.end method
