.class public Lcom/android/incallui/smartcover/a1/A1CoverFragment;
.super Lcom/android/incallui/BaseFragment;
.source "A1CoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/smartcover/a1/A1CoverPresenter$CoverCardUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/smartcover/a1/A1CoverPresenter;",
        "Lcom/android/incallui/smartcover/a1/A1CoverPresenter$CoverCardUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/smartcover/a1/A1CoverPresenter$CoverCardUi;"
    }
.end annotation


# instance fields
.field private mCallInfoLayout:Landroid/widget/LinearLayout;

.field private mCity:Landroid/widget/TextView;

.field private mCountryIso:Ljava/lang/String;

.field private mDivider1:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mHungUp:Landroid/view/View;

.field private mIsIncoming:Z

.field private mName:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field private mSlideLayout:Lcom/android/incallui/view/HorizontalSlideLayout;

.field private mTime:Landroid/widget/TextView;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mIsIncoming:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/smartcover/a1/A1CoverFragment;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/smartcover/a1/A1CoverFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/a1/A1CoverFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V

    return-void
.end method

.method private clearViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showCallInfoAndName(Z)V

    .line 186
    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V

    .line 187
    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showHungup(Z)V

    .line 188
    return-void
.end method

.method private initInCall()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showCallInfoAndName(Z)V

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V

    .line 182
    return-void
.end method

.method private initIncomingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 173
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showCallInfoAndName(Z)V

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showHungup(Z)V

    .line 175
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V

    .line 176
    return-void
.end method

.method private showCallInfoAndName(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCallInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCallInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showName(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showNumber(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showCityInfo(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showTimeInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCityInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "cityInfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showHungup(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    .line 249
    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showName(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private showNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private showSlideLayout(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mSlideLayout:Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->showPanel()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mSlideLayout:Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->hidePanel()V

    goto :goto_0
.end method

.method private showTimeInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "showTime"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    const/4 v0, 0x1

    .line 234
    .local v0, "isShowDivider":Z
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mDivider2:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-void

    .line 231
    .end local v0    # "isShowDivider":Z
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    const/4 v0, 0x0

    .restart local v0    # "isShowDivider":Z
    goto :goto_0

    :cond_2
    move v1, v2

    .line 237
    goto :goto_1
.end method


# virtual methods
.method public clearSmartCoverView()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->clearViews()V

    .line 153
    return-void
.end method

.method public configCallElapsedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showTimeInfo(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public configSmartCover(Lcom/android/incallui/model/CallCardInfo;ZZI)V
    .locals 7
    .param p1, "callerInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "conferenceCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 114
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 115
    :cond_0
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 116
    iput-boolean v4, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 117
    iput-object v5, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 118
    if-nez p3, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "format":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 124
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v2, :cond_5

    .line 125
    iget-boolean v2, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mIsIncoming:Z

    if-nez v2, :cond_2

    .line 126
    iput-boolean v6, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mIsIncoming:Z

    .line 127
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->initIncomingView()V

    .line 129
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showTimeInfo(Ljava/lang/String;)V

    .line 136
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 137
    .local v1, "show_name":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    if-eqz v2, :cond_4

    .line 138
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showName(Ljava/lang/String;)V

    .line 141
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showNumber(Ljava/lang/String;)V

    .line 142
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showCityInfo(Ljava/lang/String;)V

    .line 143
    return-void

    .line 131
    .end local v1    # "show_name":Ljava/lang/String;
    :cond_5
    iget-boolean v2, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mIsIncoming:Z

    if-eqz v2, :cond_3

    .line 132
    iput-boolean v4, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mIsIncoming:Z

    .line 133
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->initInCall()V

    goto :goto_0
.end method

.method public configSmartCoverCallButton(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showHungup(Z)V

    .line 148
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->createPresenter()Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/android/incallui/smartcover/a1/A1CoverPresenter;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-direct {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getUi()Lcom/android/incallui/smartcover/a1/A1CoverPresenter$CoverCardUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/smartcover/a1/A1CoverPresenter$CoverCardUi;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mSlideLayout:Lcom/android/incallui/view/HorizontalSlideLayout;

    new-instance v1, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;-><init>(Lcom/android/incallui/smartcover/a1/A1CoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/HorizontalSlideLayout;->setOnSlideFinishListener(Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;)V

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->endCallClicked()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f09001b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCountryIso:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f09000c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "content_view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    .local v4, "width":I
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;

    move-result-object v2

    .line 55
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 57
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 58
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v4, v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 61
    return-object v3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v1, 0x7f09000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "content_view":Landroid/view/View;
    const v1, 0x7f09000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mName:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f09000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mNumber:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f090011

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCity:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f090013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTime:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f09000e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mCallInfoLayout:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f090010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mDivider1:Landroid/view/View;

    .line 73
    const v1, 0x7f090012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mDivider2:Landroid/view/View;

    .line 74
    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/HorizontalSlideLayout;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mSlideLayout:Lcom/android/incallui/view/HorizontalSlideLayout;

    .line 75
    const v1, 0x7f09001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mHungUp:Landroid/view/View;

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 77
    return-void
.end method
