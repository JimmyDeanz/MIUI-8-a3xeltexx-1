.class Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLegacyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iput-object p2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const-string v1, "do_not_show_help_popup_drag_and_drop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
