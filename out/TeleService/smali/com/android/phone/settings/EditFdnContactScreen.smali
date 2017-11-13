.class public Lcom/android/phone/settings/EditFdnContactScreen;
.super Lmiui/app/Activity;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditFdnContactScreen$4;,
        Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;,
        Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    }
.end annotation


# instance fields
.field private mAddContact:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDeleteButton:Landroid/widget/Button;

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPin2Field:Landroid/widget/EditText;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mSlotId:I

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    .line 313
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$1;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 338
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$2;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    .line 368
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$3;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;
    .param p1, "x1"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditFdnContactScreen;->performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditFdnContactScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/EditFdnContactScreen;ZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/EditFdnContactScreen;->handleErrorResult(ZZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/settings/EditFdnContactScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;
    .param p1, "x1"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 280
    :cond_0
    return-void
.end method

.method private displayProgress(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 2
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 258
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 261
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    :cond_0
    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 274
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0801da

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0801dd

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0801e0

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getFdnUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2FromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorResult(ZZI)V
    .locals 2
    .param p1, "invalidNumber"    # Z
    .param p2, "invalidPin"    # Z
    .param p3, "error"    # I

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    if-nez p2, :cond_1

    const/16 v0, -0x3ef

    if-ne p3, v0, :cond_2

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 427
    :cond_2
    const/16 v0, -0x3ed

    if-ne p3, v0, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleLastError()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 435
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    .line 436
    .local v0, "queryHandler":Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;
    const-string v1, "content://icc/lasterror"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v4, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 440
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    .locals 2
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    .param p2, "success"    # Z
    .param p3, "invalidNumber"    # Z

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 295
    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->finish()V

    .line 311
    :goto_1
    return-void

    .line 297
    :pswitch_0
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :pswitch_1
    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_2
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->handleLastError()V

    goto :goto_1

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isValidNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x1

    .line 202
    .local v2, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "c":C
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    const/4 v2, 0x0

    .line 209
    .end local v0    # "c":C
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 202
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 12
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/settings/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    invoke-direct {p0, v6, v1, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->handleErrorResult(ZZI)V

    .line 253
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    invoke-direct {p0, v1, v6, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->handleErrorResult(ZZI)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditFdnContactScreen;->displayProgress(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    .line 223
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 224
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    .line 225
    .local v0, "queryHandler":Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v4, "bundle":Landroid/content/ContentValues;
    sget-object v5, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    const-string v5, "tag"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "number"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 234
    :pswitch_1
    const-string v5, "tag"

    iget-object v6, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v5, "number"

    iget-object v6, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v5, "newTag"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "newNumber"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    move-object v6, v2

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v11, "buf":Ljava/lang/StringBuilder;
    const-string v5, "tag=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v5, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v5, "\' AND number=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v5, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v5, "\' AND pin2=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v5, "\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    .line 120
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 121
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 122
    const-string v1, "is_add"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    .line 123
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 132
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    :cond_0
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    :cond_1
    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    :cond_2
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_3
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_4
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_8

    .line 174
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_2
    return-void

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 91
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->resolveIntent()V

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 98
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->setupView()V

    .line 101
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    .line 102
    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setTitle(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setTitle(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 113
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method
