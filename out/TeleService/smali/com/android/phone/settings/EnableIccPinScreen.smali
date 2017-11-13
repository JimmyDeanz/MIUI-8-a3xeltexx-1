.class public Lcom/android/phone/settings/EnableIccPinScreen;
.super Landroid/app/Activity;
.source "EnableIccPinScreen.java"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/android/phone/settings/EnableIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableIccPinScreen$1;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/android/phone/settings/EnableIccPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableIccPinScreen$3;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EnableIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EnableIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EnableIccPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EnableIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->enableIccPin()V

    return-void
.end method

.method private enableIccPin()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 120
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0801f6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/EnableIccPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EnableIccPinScreen$2;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void

    .line 122
    :cond_1
    const v0, 0x7f0801f7

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 76
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/EnableIccPinScreen;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->setupView()V

    .line 81
    iget-object v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    .line 83
    iget-boolean v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0801f4

    .line 84
    .local v0, "id":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/EnableIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    .end local v0    # "id":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    :cond_2
    const v0, 0x7f0801f3

    goto :goto_2
.end method
