.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;
.super Landroid/app/DialogFragment;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableSimDialogFragment"
.end annotation


# instance fields
.field private mName:Ljava/lang/CharSequence;

.field private mSimHandler:Landroid/os/Handler;

.field private mSimSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 590
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "simName"    # Ljava/lang/CharSequence;
    .param p3, "h"    # Landroid/os/Handler;

    .prologue
    .line 592
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 593
    iput p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 594
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mName:Ljava/lang/CharSequence;

    .line 595
    iput-object p3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimHandler:Landroid/os/Handler;

    .line 596
    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->setCancelable(Z)V

    .line 602
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, "canDisable":Z
    const v4, 0x7f0803bc

    .line 609
    .local v4, "negativeBtnText":I
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 610
    .local v2, "isInEcm":Z
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultVoiceSlotId()I

    move-result v5

    iget v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    if-eq v5, v6, :cond_0

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v5

    iget v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    if-ne v5, v6, :cond_2

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "message":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0803b8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 629
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 630
    if-eqz v1, :cond_1

    .line 631
    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    :cond_1
    new-instance v5, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$2;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 614
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v5

    iget v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    if-eq v5, v6, :cond_3

    if-eqz v2, :cond_3

    .line 615
    const-string v5, "MultiSimInfoEditorActivity"

    const-string v6, "In emergency call back mode ,deactivating the telecom vice card is forbidden"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0

    .line 619
    .end local v3    # "message":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    .line 620
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803b9

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mName:Ljava/lang/CharSequence;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .restart local v3    # "message":Ljava/lang/String;
    const/high16 v4, 0x1040000

    goto :goto_0
.end method
