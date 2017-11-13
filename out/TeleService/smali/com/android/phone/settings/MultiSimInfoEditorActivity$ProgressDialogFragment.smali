.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mMsgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 439
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 442
    iput p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 443
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->setCancelable(Z)V

    .line 449
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 453
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 457
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 459
    return-object v0
.end method
