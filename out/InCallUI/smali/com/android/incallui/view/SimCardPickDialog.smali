.class public Lcom/android/incallui/view/SimCardPickDialog;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;,
        Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;,
        Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/Dialog;

.field private mDisableTextColor:I

.field mHandler:Landroid/os/Handler;

.field private mHighlightTextColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

.field private mOriginalSimId:J

.field private mOtherPhoneAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

.field private mSimPhoneAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSipPhoneAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;J)V
    .locals 4
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;
    .param p2, "originalSimId"    # J

    .prologue
    const/4 v2, 0x4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSimPhoneAccountHandles:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSipPhoneAccountHandles:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOtherPhoneAccountHandles:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/android/incallui/view/SimCardPickDialog$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/SimCardPickDialog$1;-><init>(Lcom/android/incallui/view/SimCardPickDialog;)V

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHighlightTextColor:I

    .line 74
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mDisableTextColor:I

    .line 75
    iput-wide p2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOriginalSimId:J

    .line 76
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/view/SimCardPickDialog;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/view/SimCardPickDialog;->updateSimCardView(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/view/SimCardPickDialog;)Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/view/SimCardPickDialog;Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;
    .param p1, "x1"    # Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog;->accountSelectStateRecord(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/view/SimCardPickDialog;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog;->onPickSimCard(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/view/SimCardPickDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/view/SimCardPickDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHighlightTextColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/view/SimCardPickDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SimCardPickDialog;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mDisableTextColor:I

    return v0
.end method

.method private accountSelectStateRecord(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    .prologue
    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 454
    const-string v1, "type"

    const-string v2, "sim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v1, "slotId"

    invoke-virtual {p1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    :goto_0
    const-string v1, "account_select"

    const-string v2, "select_sim_or_sip_account"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    return-void

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 457
    const-string v1, "type"

    const-string v2, "sip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private closeDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iput-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    .line 218
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    iput-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 222
    :cond_0
    return-void
.end method

.method private getCurrentCallSlotId()I
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 161
    .local v0, "currentCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v1

    .line 164
    :goto_0
    return v1

    :cond_0
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0
.end method

.method private getPhoneAccountHandleBySlotId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSimPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 189
    .local v0, "account":Landroid/telecom/PhoneAccountHandle;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v3

    .line 190
    .local v3, "subId":I
    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-eq v3, v4, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSimPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 192
    .local v2, "phAcntHdl":Landroid/telecom/PhoneAccountHandle;
    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    move-object v0, v2

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phAcntHdl":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    return-object v0
.end method

.method private getTitleView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 168
    iget-object v6, p0, Lcom/android/incallui/view/SimCardPickDialog;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, "titleView":Landroid/view/View;
    const v6, 0x7f09001e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    .local v2, "title":Landroid/widget/TextView;
    const v6, 0x7f09001f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "summary":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->getCurrentCallSlotId()I

    move-result v0

    .line 172
    .local v0, "activeSlotId":I
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v6, :cond_1

    .line 173
    iget-object v6, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0085

    new-array v8, v5, [Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v6, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0084

    new-array v8, v4, [Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_1
    return-object v3

    :cond_0
    move v4, v5

    .line 175
    goto :goto_0

    .line 180
    :cond_1
    const v4, 0x7f0c0082

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initAdapter()V
    .locals 18

    .prologue
    .line 237
    new-instance v1, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/view/SimCardPickDialog;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;-><init>(Lcom/android/incallui/view/SimCardPickDialog;Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/view/SimCardPickDialog;->mSimPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    .line 239
    .local v16, "simCount":I
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/view/SimCardPickDialog;->getCurrentCallSlotId()I

    move-result v13

    .line 240
    .local v13, "currentCallSlotId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 241
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v17

    .line 242
    .local v17, "subInfo":Lmiui/telephony/SubscriptionInfo;
    if-eqz v17, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    new-instance v1, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    const/16 v3, 0xb

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v13, v2, :cond_0

    if-ne v5, v13, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/view/SimCardPickDialog;->getPhoneAccountHandleBySlotId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;-><init>(Lcom/android/incallui/view/SimCardPickDialog;IZILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v9, v1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->add(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V

    .line 240
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 248
    .end local v17    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v13, v1, :cond_4

    .line 249
    const/4 v10, 0x0

    .line 250
    .local v10, "id":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/view/SimCardPickDialog;->mSipPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/PhoneAccountHandle;

    .line 251
    .local v12, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    new-instance v6, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    const/16 v8, 0xc

    const/4 v9, 0x1

    add-int/lit8 v15, v10, 0x1

    .end local v10    # "id":I
    .local v15, "id":I
    invoke-virtual {v12}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;-><init>(Lcom/android/incallui/view/SimCardPickDialog;IZILjava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v1, v6}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->add(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V

    move v10, v15

    .line 253
    .end local v15    # "id":I
    .restart local v10    # "id":I
    goto :goto_2

    .line 255
    .end local v10    # "id":I
    .end local v12    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private onPickSimCard(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->closeDialog()V

    .line 203
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    invoke-interface {v0, p1}, Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;->onSimCardPick(Landroid/telecom/PhoneAccountHandle;)V

    .line 206
    :cond_0
    return-void
.end method

.method private resizeDialog()V
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 146
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 149
    return-void
.end method

.method private rewriteSlotId(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->getCurrentCallSlotId()I

    move-result v0

    .line 153
    .local v0, "currentCallSlotId":I
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 154
    move p1, v0

    .line 156
    :cond_0
    return p1
.end method

.method private showDialog()V
    .locals 8

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->initAdapter()V

    .line 99
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->getTitleView()Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "titleView":Landroid/view/View;
    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 102
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    const/4 v5, -0x1

    new-instance v6, Lcom/android/incallui/view/SimCardPickDialog$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/view/SimCardPickDialog$2;-><init>(Lcom/android/incallui/view/SimCardPickDialog;)V

    invoke-virtual {v0, v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 112
    const v4, 0x7f0c007d

    new-instance v5, Lcom/android/incallui/view/SimCardPickDialog$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/view/SimCardPickDialog$3;-><init>(Lcom/android/incallui/view/SimCardPickDialog;)V

    invoke-virtual {v0, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 118
    new-instance v4, Lcom/android/incallui/view/SimCardPickDialog$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/view/SimCardPickDialog$4;-><init>(Lcom/android/incallui/view/SimCardPickDialog;)V

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 125
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 127
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    .local v2, "titlePadding":I
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    invoke-virtual {v4}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->resizeDialog()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->getCurrentCallSlotId()I

    move-result v4

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v4, v5, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOriginalSimId:J

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v1

    .line 138
    .local v1, "slotId":I
    invoke-direct {p0, v1}, Lcom/android/incallui/view/SimCardPickDialog;->rewriteSlotId(I)I

    move-result v1

    .line 139
    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v1, v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getPositionWithTypeAndId(II)I

    move-result v4

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/view/SimCardPickDialog;->updateSimCardView(II)V

    goto :goto_0
.end method

.method private splitePhoneAccountHandlesAndShow(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 81
    .local v3, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "className":Ljava/lang/String;
    const-string v4, "E"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 86
    const-string v4, "TelephonyConnectionService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSimPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    const-string v4, "SipConnectionService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSipPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOtherPhoneAccountHandles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->showDialog()V

    .line 95
    return-void
.end method

.method private updateSimCardView(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "currentTime"    # I

    .prologue
    .line 258
    if-gez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getItem(I)Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    move-result-object v0

    .line 262
    .local v0, "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    invoke-virtual {v0, p2}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->setLastTime(I)V

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->setDefault(Z)V

    .line 264
    if-gez p2, :cond_2

    .line 265
    invoke-direct {p0, v0}, Lcom/android/incallui/view/SimCardPickDialog;->accountSelectStateRecord(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V

    .line 266
    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/view/SimCardPickDialog;->onPickSimCard(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mSelectorAdapter:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->notifyDataSetChanged()V

    .line 270
    if-ltz p2, :cond_0

    .line 271
    add-int/lit8 p2, p2, -0x1

    .line 272
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 274
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 275
    iget-object v2, p0, Lcom/android/incallui/view/SimCardPickDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/incallui/view/SimCardPickDialog;->closeDialog()V

    .line 210
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    invoke-interface {v0}, Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;->onCancel()V

    .line 213
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSimCardPickCallBack(Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog;->mOnSimCardPickCallBack:Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;

    .line 234
    return-void
.end method

.method public showSimCardPickDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog;->splitePhoneAccountHandlesAndShow(Ljava/util/List;)V

    .line 230
    return-void
.end method
