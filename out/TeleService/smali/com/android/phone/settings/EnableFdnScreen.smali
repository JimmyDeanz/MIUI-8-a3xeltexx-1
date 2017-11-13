.class public Lcom/android/phone/settings/EnableFdnScreen;
.super Landroid/app/Activity;
.source "EnableFdnScreen.java"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2Field:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/android/phone/settings/EnableFdnScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableFdnScreen$1;-><init>(Lcom/android/phone/settings/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/android/phone/settings/EnableFdnScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableFdnScreen$3;-><init>(Lcom/android/phone/settings/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EnableFdnScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableFdnScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EnableFdnScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EnableFdnScreen;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EnableFdnScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableFdnScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EnableFdnScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableFdnScreen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/settings/EnableFdnScreen;->enableFdn()V

    return-void
.end method

.method private enableFdn()V
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/phone/settings/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/settings/EnableFdnScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/settings/EnableFdnScreen;->getPin2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

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
    .line 124
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0801c6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/EnableFdnScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EnableFdnScreen$2;-><init>(Lcom/android/phone/settings/EnableFdnScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void

    .line 126
    :cond_1
    const v0, 0x7f0801c7

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    .line 94
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableFdnScreen;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/phone/settings/EnableFdnScreen;->setupView()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableFdnScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 85
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 86
    iget-object v2, p0, Lcom/android/phone/settings/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/settings/EnableFdnScreen;->mEnable:Z

    .line 88
    iget-boolean v2, p0, Lcom/android/phone/settings/EnableFdnScreen;->mEnable:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0801c3

    .line 89
    .local v0, "id":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/EnableFdnScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    .end local v0    # "id":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 88
    :cond_2
    const v0, 0x7f0801c4

    goto :goto_2
.end method
