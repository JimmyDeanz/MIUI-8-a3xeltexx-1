.class public Lcom/android/phone/settings/EditPinDialog;
.super Ljava/lang/Object;
.source "EditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditPinDialog$3;,
        Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;,
        Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;,
        Lcom/android/phone/settings/EditPinDialog$Mode;,
        Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditTextConfirmNewPin:Landroid/widget/EditText;

.field private mEditTextNewPin:Landroid/widget/EditText;

.field private mEditTextOldPinPuk:Landroid/widget/EditText;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

.field private mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mTextViewPrompt:Landroid/widget/TextView;

.field slotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/settings/EditPinDialog$Mode;Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/android/phone/settings/EditPinDialog$Mode;
    .param p3, "listener"    # Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v5, p0, Lcom/android/phone/settings/EditPinDialog;->slotId:I

    .line 88
    new-instance v1, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;-><init>(Lcom/android/phone/settings/EditPinDialog;Lcom/android/phone/settings/EditPinDialog$1;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    .line 427
    new-instance v1, Lcom/android/phone/settings/EditPinDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EditPinDialog$2;-><init>(Lcom/android/phone/settings/EditPinDialog;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 97
    iput-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    .line 100
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditPinDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditPinDialog$1;-><init>(Lcom/android/phone/settings/EditPinDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    .line 111
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 113
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040017

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 116
    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    .line 119
    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    .line 120
    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    .line 122
    iput-object p4, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 123
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 125
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 133
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    new-instance v1, Lmiui/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 140
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 143
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updateIccCardStatus()V

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditPinDialog;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EditPinDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/settings/EditPinDialog;->process()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/settings/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/EditPinDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/EditPinDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditPinDialog;->showToast(I)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/settings/EditPinDialog;Z)V

    .line 535
    :cond_2
    return-void
.end method

.method private process()V
    .locals 11

    .prologue
    const v10, 0x7f0803f8

    const v9, 0x7f08040d

    const v8, 0x7f0803f6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 340
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "pinpuk":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "newPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "confirmNewPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 345
    .local v1, "msg":Landroid/os/Message;
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$3;->$SwitchMap$com$android$phone$settings$EditPinDialog$Mode:[I

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v7}, Lcom/android/phone/settings/EditPinDialog$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 347
    :pswitch_0
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 351
    :cond_0
    const/4 v6, 0x2

    iput v6, v1, Landroid/os/Message;->what:I

    .line 352
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-interface {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 356
    :pswitch_1
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 357
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 360
    :cond_2
    const/4 v6, 0x3

    iput v6, v1, Landroid/os/Message;->what:I

    .line 361
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-interface {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 365
    :pswitch_2
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 368
    :cond_4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 369
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 371
    :cond_5
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 372
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 375
    :cond_6
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 376
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 380
    :pswitch_3
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 381
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 383
    :cond_7
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 384
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08040c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 386
    :cond_8
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 387
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 390
    :cond_9
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 391
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 395
    :pswitch_4
    invoke-static {v3, v4}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 396
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0803f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 398
    :cond_a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 399
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 401
    :cond_b
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 402
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 405
    :cond_c
    const/4 v4, 0x6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 406
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 410
    :pswitch_5
    invoke-static {v3, v4}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 411
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08040e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 413
    :cond_d
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 414
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08040c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 416
    :cond_e
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_f

    .line 417
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 420
    :cond_f
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 421
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method

.method private updateDialog()Z
    .locals 15

    .prologue
    .line 158
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin1Locked(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 160
    const/4 v10, 0x0

    .line 298
    :goto_0
    return v10

    .line 161
    :cond_1
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin2Locked(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 162
    sget-object v10, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK2:Lcom/android/phone/settings/EditPinDialog$Mode;

    iput-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 177
    :cond_2
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_10

    .line 178
    :cond_3
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v10}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const v9, 0x7f0801f3

    .line 181
    .local v9, "titleId":I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_c

    .line 183
    :cond_4
    const/4 v3, 0x0

    .line 184
    .local v3, "pin1RetryCount":I
    if-lez v3, :cond_b

    .line 185
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f080411

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_5
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0803fd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    :cond_6
    :goto_2
    const v2, 0x7f0803fb

    .line 196
    .local v2, "oldPinPukHitId":I
    const v1, 0x7f0803fa

    .line 197
    .local v1, "newPinHitId":I
    const v0, 0x7f0803f2

    .line 257
    .end local v3    # "pin1RetryCount":I
    .local v0, "confirmNewPinHitId":I
    :goto_3
    sget-object v10, Lcom/android/phone/settings/EditPinDialog$3;->$SwitchMap$com$android$phone$settings$EditPinDialog$Mode:[I

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v11}, Lcom/android/phone/settings/EditPinDialog$Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 273
    const v5, 0x7f080416

    .line 276
    .local v5, "progressId":I
    :goto_4
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1c

    .line 277
    :cond_7
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 278
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 284
    :goto_5
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 285
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 286
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_6
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 292
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 294
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 296
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 163
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v5    # "progressId":I
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v9    # "titleId":I
    :cond_8
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin2Locked(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 164
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0801bc

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f080206

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 178
    :cond_9
    const v9, 0x7f0801f4

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0801eb

    goto/16 :goto_1

    .line 193
    .restart local v3    # "pin1RetryCount":I
    .restart local v9    # "titleId":I
    :cond_b
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto/16 :goto_2

    .line 200
    .end local v3    # "pin1RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .line 201
    .local v7, "puk1RetryCount":I
    if-lez v7, :cond_f

    .line 202
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f080411

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    :cond_d
    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f080400

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    :cond_e
    :goto_7
    const v2, 0x7f0803ff

    .line 213
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f0803fa

    .line 214
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f0803f2

    .line 215
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 210
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_7

    .line 216
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v7    # "puk1RetryCount":I
    .end local v9    # "titleId":I
    :cond_10
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1b

    .line 217
    :cond_11
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_15

    const v9, 0x7f0801bc

    .line 218
    .restart local v9    # "titleId":I
    :goto_8
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_17

    .line 220
    :cond_12
    const/4 v4, 0x0

    .line 221
    .local v4, "pin2RetryCount":I
    if-lez v4, :cond_16

    .line 222
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f080411

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    :cond_13
    const/4 v10, 0x1

    if-ne v4, v10, :cond_14

    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f08040f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 232
    :cond_14
    :goto_9
    const v2, 0x7f080407

    .line 233
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f080408

    .line 234
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f080409

    .line 235
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 217
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v4    # "pin2RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v9    # "titleId":I
    :cond_15
    const v9, 0x7f0801c5

    goto :goto_8

    .line 230
    .restart local v4    # "pin2RetryCount":I
    .restart local v9    # "titleId":I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_9

    .line 237
    .end local v4    # "pin2RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_17
    const/4 v8, 0x0

    .line 238
    .local v8, "puk2RetryCount":I
    if-lez v8, :cond_1a

    .line 239
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f080411

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    :cond_18
    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f080400

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 249
    :cond_19
    :goto_a
    const v2, 0x7f080410

    .line 250
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f080408

    .line 251
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f080409

    .line 252
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 247
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_1a
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_a

    .line 254
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v8    # "puk2RetryCount":I
    .end local v9    # "titleId":I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 259
    .restart local v0    # "confirmNewPinHitId":I
    .restart local v1    # "newPinHitId":I
    .restart local v2    # "oldPinPukHitId":I
    .restart local v6    # "prompt":Ljava/lang/String;
    .restart local v9    # "titleId":I
    :pswitch_0
    const v5, 0x7f080412

    .line 260
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 262
    .end local v5    # "progressId":I
    :pswitch_1
    const v5, 0x7f080413

    .line 263
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 265
    .end local v5    # "progressId":I
    :pswitch_2
    const v5, 0x7f080414

    .line 266
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 269
    .end local v5    # "progressId":I
    :pswitch_3
    const v5, 0x7f080415

    .line 270
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 280
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 281
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_5

    .line 289
    :cond_1d
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;
    .param p1, "isPUK"    # Z

    .prologue
    const/16 v1, 0x8

    .line 325
    if-eqz p1, :cond_1

    move v0, v1

    .line 328
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 329
    :cond_0
    const/4 v1, 0x0

    .line 331
    :goto_1
    return v1

    .line 325
    .end local v0    # "pinMinimum":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 331
    .restart local v0    # "pinMinimum":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    const/4 v0, 0x1

    .line 554
    .local v0, "enablePositiveButton":Z
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 557
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 560
    const/4 v0, 0x0

    .line 562
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 565
    const/4 v0, 0x0

    .line 568
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
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
    .line 544
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V

    .line 539
    return-void
.end method

.method public getMode()Lcom/android/phone/settings/EditPinDialog$Mode;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 697
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPinDialog;->dismiss()V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

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
    .line 548
    return-void
.end method

.method public registerHotSwapReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_HOT_SWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 575
    return-void
.end method

.method public setMode(Lcom/android/phone/settings/EditPinDialog$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/phone/settings/EditPinDialog$Mode;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isInitialized(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 304
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->waitForInitialization(I)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/EditPinDialog;->updateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPinDialog;->afterTextChanged(Landroid/text/Editable;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPinDialog;->dismiss()V

    goto :goto_0
.end method

.method public unregisterHotSwapReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 579
    return-void
.end method
