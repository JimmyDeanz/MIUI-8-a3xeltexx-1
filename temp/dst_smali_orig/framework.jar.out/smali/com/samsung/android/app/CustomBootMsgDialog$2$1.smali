.class Lcom/samsung/android/app/CustomBootMsgDialog$2$1;
.super Ljava/lang/Object;
.source "CustomBootMsgDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/CustomBootMsgDialog$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/CustomBootMsgDialog$2;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    const-wide/16 v2, 0x0

    # setter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$302(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v1, v1, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$400(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
