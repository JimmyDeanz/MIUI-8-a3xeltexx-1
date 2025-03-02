.class public Lcom/android/phone/settings/CallBarringChangePasswordDialog;
.super Ljava/lang/Object;
.source "CallBarringChangePasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCangePasswordPrompt:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mNewPasswordConfirm:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v1, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;-><init>(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    .line 64
    iput-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mErrorMessage:Ljava/lang/String;

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    .line 68
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 70
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 74
    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mCangePasswordPrompt:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    .line 77
    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    .line 78
    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    .line 80
    invoke-static {p2}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 82
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 84
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 87
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 88
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 90
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 97
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 100
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->process()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/settings/CallBarringChangePasswordDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallBarringChangePasswordDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->showErrDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    :cond_1
    return-void
.end method

.method private doChangePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 128
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneProxy;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    const-string v2, "AB"

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 134
    :cond_0
    return-void
.end method

.method private process()V
    .locals 7

    .prologue
    const v6, 0x7f080369

    .line 141
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "oldPassword":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "newPassword":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "confirmNewPassword":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 146
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->validatePassword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08036b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {v2}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->validatePassword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 156
    :cond_2
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 157
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 158
    invoke-direct {p0, v3, v2}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->doChangePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showErrDialog(I)V
    .locals 6
    .param p1, "errorid"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08011b

    .line 213
    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 225
    const v2, 0x7f080120

    .line 228
    .local v2, "msgId":I
    :goto_0
    const v4, 0x7f080123

    new-instance v5, Lcom/android/phone/settings/CallBarringChangePasswordDialog$2;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog$2;-><init>(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 236
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 238
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 239
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void

    .line 215
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "msgId":I
    :sswitch_0
    const v2, 0x7f08036e

    .line 216
    .restart local v2    # "msgId":I
    goto :goto_0

    .line 218
    .end local v2    # "msgId":I
    :sswitch_1
    const v2, 0x7f080388

    .line 219
    .restart local v2    # "msgId":I
    goto :goto_0

    .line 221
    .end local v2    # "msgId":I
    :sswitch_2
    const v2, 0x7f08011f

    .line 222
    .restart local v2    # "msgId":I
    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method private static validatePassword(Ljava/lang/String;)Z
    .locals 2
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    const/4 v0, 0x1

    .line 263
    .local v0, "enablePositiveButton":Z
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 270
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 272
    const/4 v0, 0x0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    .end local v0    # "enablePositiveButton":Z
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 281
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->dismiss()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 257
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mCangePasswordPrompt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mCangePasswordPrompt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f080363

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    const v1, 0x7f080367

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 114
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    const v1, 0x7f080368

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 115
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    const v1, 0x7f08036a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mNewPasswordConfirm:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f08011d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->afterTextChanged(Landroid/text/Editable;)V

    .line 121
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mCangePasswordPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
