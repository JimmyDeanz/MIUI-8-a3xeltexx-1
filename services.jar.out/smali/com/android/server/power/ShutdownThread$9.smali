.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$progress:I

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1400(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1400(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownThread$9;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->val$message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1400(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$9;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_0
    return-void
.end method
