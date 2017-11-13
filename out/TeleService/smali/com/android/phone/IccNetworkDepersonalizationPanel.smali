.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# instance fields
.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 85
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 210
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/IccNetworkDepersonalizationPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    return-void
.end method

.method private indicateBusy()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    return-void
.end method

.method private indicateError()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    return-void
.end method

.method private indicateSuccess()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v3, 0x7f040028

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 123
    const v3, 0x7f0e0087

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 124
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v1, v2

    .line 129
    check-cast v1, Landroid/text/Spannable;

    .line 130
    .local v1, "span":Landroid/text/Spannable;
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v1, v3, v6, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 132
    const v3, 0x7f0e0086

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 134
    const v3, 0x7f0e0088

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 135
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f0e0089

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 140
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 141
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v3, "sim_network_unlock_allow_dismiss_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :goto_0
    const v3, 0x7f0e008a

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 153
    const v3, 0x7f0e008b

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 155
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 156
    return-void

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 161
    return-void
.end method
