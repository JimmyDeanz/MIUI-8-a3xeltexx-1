.class Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V
    .locals 0

    .prologue
    .line 2771
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->access$1200(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    .line 2774
    return-void
.end method
