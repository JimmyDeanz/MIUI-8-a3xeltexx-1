.class public Lcom/android/incallui/PostCharDialogFragment;
.super Landroid/app/DialogFragment;
.source "PostCharDialogFragment.java"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mPostDialStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/PostCharDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/PostCharDialogFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/incallui/PostCharDialogFragment;
    .locals 3
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>()V

    .line 37
    .local v1, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "callId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "postDialStr"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/incallui/PostCharDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "callId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "postDialStr"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const v3, 0x7f0c007f

    new-instance v4, Lcom/android/incallui/PostCharDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/PostCharDialogFragment$1;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v3, 0x7f0c0080

    new-instance v4, Lcom/android/incallui/PostCharDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/PostCharDialogFragment$2;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 71
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 72
    return-object v2
.end method
