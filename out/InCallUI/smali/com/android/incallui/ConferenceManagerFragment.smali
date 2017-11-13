.class public Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field private mAddParticipantButton:Landroid/widget/Button;

.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceCallerDesp:Landroid/widget/TextView;

.field private mConferenceCallerTime:Landroid/widget/TextView;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mContentView:Landroid/view/View;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ConferenceManagerFragment;ZZ[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ConferenceManagerFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/ConferenceManagerFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    return-void
.end method

.method private varargs videoCallStateRecord(ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "hasConferenceDiff"    # Z
    .param p2, "hasVideoDiff"    # Z
    .param p3, "keys"    # [Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->isVtConferenceCall()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordVideoCallCountEvent(ZZZZ[Ljava/lang/String;)V

    .line 290
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public customStartActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceManagerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "simCardResId"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 161
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f090068

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    .local v0, "nameTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 165
    .local v3, "simCardInfo":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, "numberTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f09006b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, "numberTypeTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v4, -0x1

    if-eq p5, v4, :cond_0

    .line 173
    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :goto_1
    return-void

    .line 176
    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getTwoContactsName()[Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f090068

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "names":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    array-length v3, v3

    if-lt v3, v6, :cond_0

    .line 237
    new-array v2, v6, [Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    .local v0, "callerName1":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, "callerName2":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 243
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 246
    .end local v0    # "callerName1":Landroid/widget/TextView;
    .end local v1    # "callerName2":Landroid/widget/TextView;
    :cond_0
    return-object v2
.end method

.method protected getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    .prologue
    .line 70
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public initConferenceView()V
    .locals 5

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    .line 96
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    .line 97
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0045

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    new-array v2, v2, [Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 100
    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 104
    .local v1, "viewGroupIdList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    .line 109
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/ConferenceManagerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/ConferenceManagerFragment$1;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallerTime:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f090075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallerDesp:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mAddParticipantButton:Landroid/widget/Button;

    .line 118
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mAddParticipantButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/incallui/ConferenceManagerFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/ConferenceManagerFragment$2;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .end local v0    # "i":I
    .end local v1    # "viewGroupIdList":[I
    :cond_1
    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        0x7f090078
        0x7f090079
        0x7f09007a
        0x7f09007b
        0x7f09007c
    .end array-data
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 296
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 298
    .local v0, "uris":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->startConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;[Landroid/os/Parcelable;)V

    .line 302
    .end local v0    # "uris":[Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const v0, 0x7f030012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mRootView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 132
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerPresenter;->startTimer()V

    .line 137
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerPresenter;->stopTimer()V

    goto :goto_0
.end method

.method public setConferenceCallerElapsedTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallerTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallerTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setConferenceDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallerDesp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public setRowVisible(IZ)V
    .locals 2
    .param p1, "rowId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupEndButtonForRow(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "rowId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "canDisconnect"    # Z

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "endButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    if-eqz p3, :cond_1

    .line 200
    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/ConferenceManagerFragment$3;-><init>(Lcom/android/incallui/ConferenceManagerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "rowId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "canSeparate"    # Z

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "separateButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 220
    :cond_0
    if-eqz p3, :cond_1

    .line 221
    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$4;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/ConferenceManagerFragment$4;-><init>(Lcom/android/incallui/ConferenceManagerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAddParticipant(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mAddParticipantButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mAddParticipantButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    :cond_0
    return-void

    .line 264
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startAddParticipant(Ljava/lang/String;)V
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "sip"

    invoke-static {v2, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    const-string v2, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const-string v2, "add_participant"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragment;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void

    .line 315
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v2, "tel"

    invoke-static {v2, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method
