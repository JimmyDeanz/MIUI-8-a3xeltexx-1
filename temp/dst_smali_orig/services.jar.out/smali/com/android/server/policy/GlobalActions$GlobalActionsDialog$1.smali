.class Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    # getter for: Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->access$9700(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
