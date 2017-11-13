.class final Lcom/android/incallui/CallerInfoUtils$1;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/android/incallui/CallerInfo;

.field final synthetic val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$permissionGrantHelper:Lcom/android/incallui/util/PermissionGrantHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/PermissionGrantHelper;Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/Call;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$permissionGrantHelper:Lcom/android/incallui/util/PermissionGrantHelper;

    iput-object p2, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$info:Lcom/android/incallui/CallerInfo;

    iput-object p4, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p5, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/CallerInfoUtils$1;->val$permissionGrantHelper:Lcom/android/incallui/util/PermissionGrantHelper;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CallerInfoUtils$1$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallerInfoUtils$1$1;-><init>(Lcom/android/incallui/CallerInfoUtils$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.READ_CONTACTS"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/util/PermissionGrantHelper;->checkPermissions(Landroid/app/Activity;Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;[Ljava/lang/String;)V

    .line 75
    return-void
.end method
