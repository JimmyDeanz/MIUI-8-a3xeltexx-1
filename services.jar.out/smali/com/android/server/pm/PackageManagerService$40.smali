.class Lcom/android/server/pm/PackageManagerService$40;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->AASA_SetCMtoAppOps()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$appOp:I

.field final synthetic val$keyValue:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;II)V
    .locals 0

    .prologue
    .line 26719
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$40;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$40;->val$appOp:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$40;->val$keyValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 26722
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$40;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 26723
    .local v0, "appOps":Landroid/app/AppOpsManager;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$40;->val$appOp:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$40;->val$keyValue:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 26724
    const-string v1, "CMAASA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setuidmode 22 uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$40;->val$keyValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26726
    return-void
.end method
