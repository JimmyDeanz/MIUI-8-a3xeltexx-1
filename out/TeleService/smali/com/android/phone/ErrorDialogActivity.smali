.class public Lcom/android/phone/ErrorDialogActivity;
.super Landroid/app/Activity;
.source "ErrorDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 114
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 118
    return-void
.end method

.method private showGenericErrorDialog(I)V
    .locals 6
    .param p1, "resid"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 62
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/ErrorDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$1;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 68
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/ErrorDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$2;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 75
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800c3

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 79
    .local v2, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 80
    return-void
.end method

.method private showMissingVoicemailErrorDialog()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800c3

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$5;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800d0

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$4;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$3;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    .local v0, "missingVoicemailDialog":Landroid/app/AlertDialog;
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_missing_voicemail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    .local v1, "showVoicemailDialog":Z
    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "error_message_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "error":I
    if-ne v0, v5, :cond_1

    .line 49
    sget-object v2, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v3, "ErrorDialogActivity called with no error type extra."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 52
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0
.end method
