.class Lcom/android/server/policy/GlobalActions$12$2$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$12$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/GlobalActions$12$2;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$12$2;)V
    .locals 0

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$12$2$1;->this$2:Lcom/android/server/policy/GlobalActions$12$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1870
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :goto_0
    return-void

    .line 1872
    :catch_0
    move-exception v0

    goto :goto_0
.end method
