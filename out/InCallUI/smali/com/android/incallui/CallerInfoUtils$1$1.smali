.class Lcom/android/incallui/CallerInfoUtils$1$1;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"

# interfaces
.implements Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfoUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallerInfoUtils$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfoUtils$1;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/incallui/CallerInfoUtils$1$1;->this$0:Lcom/android/incallui/CallerInfoUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0c0094

    invoke-static {v0}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 71
    return-void
.end method

.method public onPermissionGranted()V
    .locals 5

    .prologue
    .line 64
    # getter for: Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallerInfoUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPermissionGranted: Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/incallui/CallerInfoUtils$1$1;->this$0:Lcom/android/incallui/CallerInfoUtils$1;

    iget-object v1, v1, Lcom/android/incallui/CallerInfoUtils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallerInfoUtils$1$1;->this$0:Lcom/android/incallui/CallerInfoUtils$1;

    iget-object v2, v2, Lcom/android/incallui/CallerInfoUtils$1;->val$info:Lcom/android/incallui/CallerInfo;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoUtils$1$1;->this$0:Lcom/android/incallui/CallerInfoUtils$1;

    iget-object v3, v3, Lcom/android/incallui/CallerInfoUtils$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v4, p0, Lcom/android/incallui/CallerInfoUtils$1$1;->this$0:Lcom/android/incallui/CallerInfoUtils$1;

    iget-object v4, v4, Lcom/android/incallui/CallerInfoUtils$1;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;

    .line 66
    return-void
.end method
