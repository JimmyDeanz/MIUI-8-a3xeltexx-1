.class public Lcom/android/incallui/smartcover/a7/A7CoverFragment;
.super Lcom/android/incallui/BaseFragment;
.source "A7CoverFragment.java"

# interfaces
.implements Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/smartcover/a7/A7CoverPresenter;",
        "Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;",
        ">;",
        "Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;"
    }
.end annotation


# instance fields
.field private mIsIncoming:Z

.field private mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mIsIncoming:Z

    .line 25
    return-void
.end method

.method private showNameOrPhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/VerticalSlideLayout;->setPhoneName(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public configSmartCover(Lcom/android/incallui/model/CallCardInfo;ZZI)V
    .locals 6
    .param p1, "callerInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "conferenceCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 77
    :cond_0
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 78
    iput-boolean v4, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 79
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 80
    if-nez p3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "format":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 86
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v2, :cond_3

    .line 87
    iget-boolean v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mIsIncoming:Z

    if-nez v2, :cond_2

    .line 88
    iput-boolean v5, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mIsIncoming:Z

    .line 95
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 96
    .local v1, "showName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->showNameOrPhoneNumber(Ljava/lang/String;)V

    .line 97
    return-void

    .line 91
    .end local v1    # "showName":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mIsIncoming:Z

    if-eqz v2, :cond_2

    .line 92
    iput-boolean v4, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mIsIncoming:Z

    goto :goto_0
.end method

.method public configSmartCoverEndCallSlide(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->hideAnswerIndicator()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->showAnswerIndicator()V

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->createPresenter()Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/android/incallui/smartcover/a7/A7CoverPresenter;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    invoke-direct {v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->getUi()Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    new-instance v1, Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;-><init>(Lcom/android/incallui/smartcover/a7/A7CoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/VerticalSlideLayout;->setOnSlideFinishListener(Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    new-instance v1, Lcom/android/incallui/smartcover/a7/A7CoverFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment$2;-><init>(Lcom/android/incallui/smartcover/a7/A7CoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/VerticalSlideLayout;->setOnSlideEndCallListener(Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;)V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    check-cast p1, Lcom/android/incallui/view/VerticalSlideLayout;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->mSlideLayout:Lcom/android/incallui/view/VerticalSlideLayout;

    .line 40
    return-void
.end method
