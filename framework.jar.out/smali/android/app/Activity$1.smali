.class Landroid/app/Activity$1;
.super Ljava/lang/Thread;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$taskDesc:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    .prologue
    .line 5885
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$1;->val$taskDesc:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5888
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$1;->val$taskDesc:Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5891
    :goto_0
    return-void

    .line 5889
    :catch_0
    move-exception v0

    goto :goto_0
.end method
