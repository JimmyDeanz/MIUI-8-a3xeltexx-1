.class public Lcom/android/phone/settings/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;
    }
.end annotation


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/android/phone/settings/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/phone/settings/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/settings/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/ChangeIccPinScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/ChangeIccPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$4;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 245
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->showConfirmation()V

    .line 255
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/settings/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_3

    .line 266
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 267
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 269
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 271
    sget-object v1, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    .line 272
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->displayPUKAlert()V

    .line 273
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 277
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->displayPUKAlert()V

    .line 281
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 282
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    .line 152
    return-void
.end method

.method private showConfirmation()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f080204

    .line 309
    .local v0, "id":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 310
    return-void

    .line 308
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0801f9

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "p1"    # Ljava/lang/String;
    .param p2, "p2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 161
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    const/4 v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    .local v0, "len1":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 104
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 106
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->resolveIntent()V

    .line 108
    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->setContentView(I)V

    .line 110
    const v2, 0x7f0e0015

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 111
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f0e0017

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 116
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 117
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v2, 0x7f0e0018

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 121
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 122
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 123
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v2, 0x7f0e0016

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f0e0019

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f0e001a

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 129
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v2, 0x7f0e0014

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 133
    const v2, 0x7f0e001c

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 134
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 135
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v2, 0x7f0e001d

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 139
    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v2, 0x7f0e001b

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 143
    iget-boolean v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_1

    const v0, 0x7f0801c5

    .line 144
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    iput-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    goto/16 :goto_0

    .line 143
    .end local v0    # "id":I
    :cond_1
    const v0, 0x7f0801eb

    goto :goto_1
.end method
