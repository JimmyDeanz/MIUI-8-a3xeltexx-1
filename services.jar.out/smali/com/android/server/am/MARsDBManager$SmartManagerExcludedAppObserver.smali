.class Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerExcludedAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    .line 1940
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1941
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1946
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "onChange - mSmartManagerExcludedAppObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v0}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;)V

    .line 1948
    return-void
.end method
