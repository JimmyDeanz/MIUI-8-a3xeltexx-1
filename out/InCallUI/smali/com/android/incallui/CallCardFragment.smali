.class public Lcom/android/incallui/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVideoCall:Z

.field private mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

.field private mAvatar:Landroid/widget/ImageView;

.field private mAvatarLayout:Landroid/view/View;

.field private mCallCardConferenceManageButton:Landroid/widget/ImageView;

.field private mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

.field private mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

.field private mCallInfoMarginTop:I

.field private mCallerInfoItemHeight:I

.field private mCallerInfoTranslateY:I

.field private mCallerInfoTranslateYDialpadPressed:I

.field private mCallerInfoTranslateYIncoming:I

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

.field private mFrontGround:Landroid/widget/ImageView;

.field private mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

.field private mLastLoadImageKey:Ljava/lang/String;

.field private mLastSmallAvatarKey:Ljava/lang/String;

.field private mLiveTalkProvider:Landroid/widget/TextView;

.field private mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mPrimaryCallBanner:Landroid/widget/LinearLayout;

.field private mPrimaryName:Lcom/android/incallui/view/AutoTextView;

.field private mPrimaryNameColor:I

.field private mPrimaryNameColorNormal:I

.field private mPrimaryNameColorSmall:I

.field private mPrimaryNameSize:I

.field private mPrimaryNameSizeBig:I

.field private mPrimaryNameSizeNormal:I

.field private mPrimaryNameSizeSmall:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mSingleCallInfo:Landroid/view/View;

.field private mSingleCallLayout:Landroid/widget/LinearLayout;

.field private mSpeakerOnMask:Landroid/view/View;

.field private mSuspectView:Landroid/view/View;

.field private mVerifyimg:Landroid/widget/ImageView;

.field private mVideoCallBanner:Landroid/widget/LinearLayout;

.field private mVideoCallElapsedTime:Landroid/widget/TextView;

.field private mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

.field private mVideoCallStateLabel:Landroid/widget/TextView;

.field private mYellowPageWordAd:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateY:I

    .line 112
    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    .line 113
    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    .line 114
    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoItemHeight:I

    .line 116
    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mLastLoadImageKey:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mLastSmallAvatarKey:Ljava/lang/String;

    .line 986
    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->isSpeakerOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/incallui/view/AutoTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardFragment;)Lcom/android/incallui/view/AnimationCircleLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1010
    if-nez p2, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1013
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1014
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1016
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1017
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initPrimary()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v0}, Lcom/android/incallui/view/AutoTextView;->getMaxTextSize()F

    move-result v0

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/AutoTextView;->resizeMaxTextSize(F)V

    .line 700
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/AutoTextView;->setTextColor(I)V

    .line 702
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 3

    .prologue
    .line 1084
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 1085
    .local v0, "audioMode":I
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resizePrimary()V
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeBig:I

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    .line 706
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorNormal:I

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    .line 707
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->initPrimary()V

    .line 708
    return-void
.end method

.method private setMultiSimIndicator(IZ)V
    .locals 3
    .param p1, "simResId"    # I
    .param p2, "isConferenceCall"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 657
    if-eqz p2, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/view/LabelAndNumberView;->setMultiSimIndicator(IZ)V

    .line 659
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0, p1, v2}, Lcom/android/incallui/view/CallCardStateInfoView;->setConferenceMultiSimIndicator(IZ)V

    .line 664
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, p1, v2}, Lcom/android/incallui/view/LabelAndNumberView;->setMultiSimIndicator(IZ)V

    .line 662
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->setConferenceMultiSimIndicator(IZ)V

    goto :goto_0
.end method

.method private setPrimaryMode(Z)V
    .locals 5
    .param p1, "isConference"    # Z

    .prologue
    const/4 v4, -0x2

    .line 957
    if-eqz p1, :cond_0

    .line 958
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 968
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v2, v0}, Lcom/android/incallui/view/AutoTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    return-void

    .line 962
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 963
    .local v1, "width":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallInfo:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0
.end method

.method private showHDAudioIndicator(ZI)V
    .locals 1
    .param p1, "isHD"    # Z
    .param p2, "speechHDResId"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/LabelAndNumberView;->showHDAudioIndicator(ZI)V

    .line 360
    return-void
.end method

.method private updatePhoneNumberField(Lcom/android/incallui/model/CallCardInfo;)V
    .locals 6
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;

    .prologue
    const/4 v4, 0x0

    .line 824
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardFragment;->setSinglePhoneNumber(Ljava/lang/String;)V

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const/4 v0, 0x0

    .line 829
    .local v0, "fullNumber":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 830
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragment;->setSinglePhoneNumber(Ljava/lang/String;)V

    .line 833
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 836
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 838
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v2, v1}, Lcom/android/incallui/view/LabelAndNumberView;->showPhoneNumber(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public blurCallCardOnIncomingMessageShow(Z)V
    .locals 2
    .param p1, "blur"    # Z

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    return-void

    .line 1089
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public controlBannerTranslateY(ZZZZ)V
    .locals 6
    .param p1, "isChangePosition"    # Z
    .param p2, "isAnim"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "isInCall"    # Z

    .prologue
    .line 866
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 867
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getCallCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardFragment;->getSingleCallerInfoTopSpace(I)I

    move-result v3

    .line 868
    .local v3, "topSpace":I
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v3, :cond_0

    .line 869
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 872
    :cond_0
    if-eqz p3, :cond_2

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateYDialpadPressed:I

    :goto_0
    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateY:I

    .line 874
    if-eqz p1, :cond_3

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateY:I

    neg-int v4, v4

    :goto_1
    iget v5, p0, Lcom/android/incallui/CallCardFragment;->mCallInfoMarginTop:I

    add-int v2, v4, v5

    .line 875
    .local v2, "targetY":I
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 876
    .local v0, "callBannerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v2, v4, :cond_1

    .line 877
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 879
    :cond_1
    if-eqz p1, :cond_4

    .line 880
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeBig:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    .line 881
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorNormal:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    .line 889
    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->initPrimary()V

    .line 890
    return-void

    .line 872
    .end local v0    # "callBannerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "targetY":I
    :cond_2
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateYIncoming:I

    goto :goto_0

    .line 874
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 882
    .restart local v0    # "callBannerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "targetY":I
    :cond_4
    if-eqz p4, :cond_5

    .line 883
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeSmall:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    .line 884
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorSmall:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    goto :goto_2

    .line 886
    :cond_5
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeNormal:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSize:I

    .line 887
    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorNormal:I

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColor:I

    goto :goto_2
.end method

.method public controlBigAvatar(ZZ)V
    .locals 7
    .param p1, "isShow"    # Z
    .param p2, "hasAnim"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    if-eqz p1, :cond_1

    .line 1034
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 1035
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1037
    invoke-virtual {p0, v6, v6}, Lcom/android/incallui/CallCardFragment;->showSpeakerOnOrIncomingMask(ZZ)V

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    if-eqz p2, :cond_2

    .line 1040
    invoke-static {}, Lcom/android/incallui/util/Utils;->getSmallAvatarRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1041
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 1042
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->getCircleAnimationBuilder()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v1

    .line 1043
    .local v1, "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setNoNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/CallCardFragment$8;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallCardFragment$8;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOnAnimationListener(Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->configAnimationParam()V

    .line 1056
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->startCircleAnimation()V

    .line 1058
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1059
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1060
    new-instance v3, Lcom/android/incallui/CallCardFragment$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallCardFragment$9;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1066
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1067
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallCardPresenter;->hideBanner(Z)V

    goto :goto_0

    .line 1069
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->isAnimationRuning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->isSpeakerOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1071
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1072
    invoke-virtual {p0, v5, v5}, Lcom/android/incallui/CallCardFragment;->showSpeakerOnOrIncomingMask(ZZ)V

    .line 1073
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    goto/16 :goto_0

    .line 1075
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1058
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public controlSmallAvatarTranslateY()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/Utils;->getSmallAvatarRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 294
    return-void
.end method

.method protected createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 992
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 994
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0}, Lcom/android/incallui/view/LabelAndNumberView;->getPhoneNumber()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CallCardStateInfoView;->getCallStateLabel()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1003
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0}, Lcom/android/incallui/view/LabelAndNumberView;->getPhoneNumber()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getSingleCallerInfoTopSpace(I)I
    .locals 2
    .param p1, "callCount"    # I

    .prologue
    .line 1023
    if-nez p1, :cond_0

    .line 1024
    const/4 v0, 0x0

    .line 1027
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoItemHeight:I

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

    return-object v0
.end method

.method public hideBanner(Z)V
    .locals 2
    .param p1, "isAnim"    # Z

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 939
    return-void
.end method

.method public hideSmallAvatar(Z)V
    .locals 7
    .param p1, "isAnim"    # Z

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x8

    .line 298
    if-eqz p1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 301
    .local v0, "transAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    new-instance v1, Lcom/android/incallui/CallCardFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$3;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    .end local v0    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideVideoBanner()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 950
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 953
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 162
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 163
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallCardPresenter;->init(Lcom/android/incallui/Call;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    .line 170
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCountryIso:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoItemHeight:I

    .line 175
    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateYIncoming:I

    .line 176
    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCallerInfoTranslateYDialpadPressed:I

    .line 177
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeSmall:I

    .line 178
    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeNormal:I

    .line 179
    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameSizeBig:I

    .line 180
    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorNormal:I

    .line 181
    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryNameColorSmall:I

    .line 183
    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCallInfoMarginTop:I

    .line 184
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v2
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 325
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 326
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSpeakerOnMask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 331
    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mLastSmallAvatarKey:Ljava/lang/String;

    .line 332
    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mLastLoadImageKey:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 338
    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 342
    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0}, Lcom/android/incallui/view/LabelAndNumberView;->clearAllView()V

    .line 352
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->clearAllView()V

    .line 353
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CallCardStateInfoView;->clearAllView()V

    .line 355
    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/CallCardFragment;->showSpeakerOnOrIncomingMask(ZZ)V

    .line 356
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f090045

    const/4 v3, 0x0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallFragment;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

    .line 193
    const v0, 0x7f09003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/AnimationCircleLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    .line 194
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    const-string v1, "AVATAR"

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/AnimationCircleLayout;->setTagForLog(Ljava/lang/String;)V

    .line 195
    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSpeakerOnMask:Landroid/view/View;

    .line 198
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 200
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    .line 201
    const v0, 0x7f090043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallInfo:Landroid/view/View;

    .line 205
    const v0, 0x7f0900d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/LabelAndNumberView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    .line 206
    const v0, 0x7f09000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/AutoTextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    .line 207
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    new-instance v1, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;-><init>(Lcom/android/incallui/CallCardFragment;Lcom/android/incallui/CallCardFragment$1;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/AutoTextView;->setChangeLayoutListener(Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;Landroid/view/View;)V

    .line 208
    const v0, 0x7f0900da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0900de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallElapsedTime:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0900db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLiveTalkProvider:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0900dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mYellowPageWordAd:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallLayout:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    .line 215
    const v0, 0x7f0900dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallBanner:Landroid/widget/LinearLayout;

    .line 216
    const v0, 0x7f0900df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    .line 217
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$1;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v0, 0x7f0900d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CallCardOptionalInfoView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    .line 225
    const v0, 0x7f0900d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CallCardStateInfoView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    .line 226
    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/CallCardFragment;->showConferenceControl(ZI)V

    .line 229
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0012

    invoke-direct {v6, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 230
    .local v6, "span1":Landroid/text/style/TextAppearanceSpan;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0018

    invoke-direct {v7, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 231
    .local v7, "span2":Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 235
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->resizePrimary()V

    .line 236
    return-void
.end method

.method public playAudioButtonClickAnim(ZII)V
    .locals 11
    .param p1, "isShow"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/16 v10, 0x15e

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1109
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->getWidth()I

    move-result v3

    .line 1110
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->getHeight()I

    move-result v1

    .line 1111
    .local v1, "height":I
    mul-int v4, v3, v3

    mul-int v5, v1, v1

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 1112
    .local v2, "r":F
    if-eqz p1, :cond_0

    .line 1113
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/android/incallui/CallCardFragment;->showSpeakerOnOrIncomingMask(ZZ)V

    .line 1114
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 1115
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->getCircleAnimationBuilder()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v0

    .line 1116
    .local v0, "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    int-to-float v4, p2

    invoke-virtual {v0, v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    int-to-float v5, p3

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setNoNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/CallCardFragment$10;

    invoke-direct {v5, p0}, Lcom/android/incallui/CallCardFragment$10;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOnAnimationListener(Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setCircleChangeDuration(I)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->configAnimationParam()V

    .line 1131
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getCallBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1132
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->startCircleAnimation()V

    .line 1133
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    :goto_0
    return-void

    .line 1135
    .end local v0    # "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 1136
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->getCircleAnimationBuilder()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v0

    .line 1137
    .restart local v0    # "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOriginR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    int-to-float v5, p2

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    int-to-float v5, p3

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setNoNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/CallCardFragment$11;

    invoke-direct {v5, p0}, Lcom/android/incallui/CallCardFragment$11;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOnAnimationListener(Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setCircleChangeDuration(I)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->configAnimationParam()V

    .line 1154
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/view/AnimationCircleLayout;->startCircleAnimation()V

    goto :goto_0
.end method

.method public setCallCardImage(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isEmergencyNumber"    # Z
    .param p3, "isInComing"    # Z

    .prologue
    .line 381
    move-object v0, p1

    .line 382
    .local v0, "avatarImage":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 384
    invoke-static {}, Lcom/android/incallui/util/ImageLoadHelper;->getHelper()Lcom/android/incallui/util/ImageLoadHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/ImageLoadHelper;->releaseResources()V

    .line 385
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 386
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallPresenter;->setCallBackground(Landroid/graphics/Bitmap;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    if-nez v0, :cond_2

    .line 391
    invoke-static {}, Lcom/android/incallui/ImageUtils;->getDefaultInCallWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    :cond_2
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 395
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mLastLoadImageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mLastLoadImageKey:Ljava/lang/String;

    .line 404
    invoke-static {}, Lcom/android/incallui/util/ImageLoadHelper;->getHelper()Lcom/android/incallui/util/ImageLoadHelper;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/CallCardFragment$4;

    invoke-direct {v3, p0, p3}, Lcom/android/incallui/CallCardFragment$4;-><init>(Lcom/android/incallui/CallCardFragment;Z)V

    invoke-virtual {v2, v0, v3}, Lcom/android/incallui/util/ImageLoadHelper;->loadImage(Landroid/graphics/drawable/Drawable;Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;)V

    goto :goto_0
.end method

.method public setCallCardMask(ZZZ)V
    .locals 2
    .param p1, "isInComingCall"    # Z
    .param p2, "hasBigAvatar"    # Z
    .param p3, "isEmergencyNumber"    # Z

    .prologue
    .line 421
    if-nez p3, :cond_0

    if-eqz p1, :cond_1

    .line 422
    :cond_0
    const v0, 0x7f020108

    .line 428
    .local v0, "maskResId":I
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setCallMask(I)V

    .line 429
    return-void

    .line 423
    .end local v0    # "maskResId":I
    :cond_1
    if-eqz p2, :cond_2

    .line 424
    const v0, 0x7f02010a

    .restart local v0    # "maskResId":I
    goto :goto_0

    .line 426
    .end local v0    # "maskResId":I
    :cond_2
    const v0, 0x7f02010b

    .restart local v0    # "maskResId":I
    goto :goto_0
.end method

.method public setDoubleCallInfoVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 457
    if-eqz p1, :cond_2

    .line 458
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/DoubleCallInfoView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    .line 462
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    new-instance v1, Lcom/android/incallui/CallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$5;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/DoubleCallInfoView;->setOnDoubleCallInfoOperationListener(Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/view/DoubleCallInfoView;->setVisibility(I)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/DoubleCallInfoView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    goto :goto_0
.end method

.method public setDoublePrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
    .locals 7
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "isInComingCall"    # Z
    .param p5, "isDialpadPressed"    # Z
    .param p6, "conferenceCount"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V

    .line 526
    :cond_0
    return-void
.end method

.method public setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method public setDoublePrimaryCallInfoVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimaryCallInfoVisible(Z)V

    .line 511
    :cond_0
    return-void
.end method

.method public setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V

    .line 555
    :cond_0
    return-void
.end method

.method public setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method public setDoubleSecondary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
    .locals 7
    .param p1, "callCardInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "isInComingCall"    # Z
    .param p5, "isDialpadPressed"    # Z
    .param p6, "conferenceCount"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V

    .line 534
    :cond_0
    return-void
.end method

.method public setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 576
    :cond_0
    return-void
.end method

.method public setDoubleSecondaryCallInfoVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondaryCallInfoVisible(Z)V

    .line 518
    :cond_0
    return-void
.end method

.method public setDoubleSecondaryCallState(ILandroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondaryCallState(ILandroid/telecom/DisconnectCause;)V

    .line 562
    :cond_0
    return-void
.end method

.method public setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDoubleCallInfo:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 548
    :cond_0
    return-void
.end method

.method public setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 0
    .param p1, "layer"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 989
    return-void
.end method

.method public setLivetalkLeftMinute(Ljava/lang/String;)V
    .locals 2
    .param p1, "leftMinute"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLiveTalkProvider:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->setLiveTalkLeftMinutes(Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mLiveTalkProvider:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CallCardStateInfoView;->isLiveTalkLeftMinutesVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setSingleCallElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 724
    if-eqz p1, :cond_3

    .line 725
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/view/CallCardStateInfoView;->setCallElapsedTime(ZLjava/lang/String;)V

    .line 726
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->isVideoCall:Z

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz p1, :cond_4

    .end local p2    # "callTimeElapsed":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateElapsedTime(Ljava/lang/String;)V

    .line 741
    :cond_2
    return-void

    .line 733
    .restart local p2    # "callTimeElapsed":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/view/CallCardStateInfoView;->setCallElapsedTime(ZLjava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 739
    :cond_4
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public setSingleCallInfo(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V
    .locals 8
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "conferenceCount"    # I
    .param p5, "isDialpadPressed"    # Z
    .param p6, "isVtConference"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    if-eqz p6, :cond_7

    .line 592
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 593
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->isMtImsConference:Z

    if-eqz v2, :cond_5

    .line 594
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 600
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/CallCardFragment;->showConferenceControl(ZI)V

    .line 626
    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    move-object v0, p0

    move v3, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/CallCardFragment;->setSingleCallName(Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 629
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->livetalkLeftMins:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragment;->setLivetalkLeftMinute(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->updatePhoneNumberField(Lcom/android/incallui/model/CallCardInfo;)V

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->setYellowPageInfo(Lcom/android/incallui/model/CallCardInfo;)V

    .line 638
    iget-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->isSpeechCodecHD:Z

    iget v1, p1, Lcom/android/incallui/model/CallCardInfo;->speechHDResId:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->showHDAudioIndicator(ZI)V

    .line 641
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragment;->setSingleTelocation(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v0, :cond_3

    .line 645
    iget-object v6, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 646
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 647
    .local v7, "phoneNumber":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 648
    :cond_1
    move-object v6, v7

    .line 649
    const/4 v7, 0x0

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v6, v7}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateNameAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateDistrict(Ljava/lang/String;)V

    .line 654
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    :cond_3
    return-void

    .line 598
    :cond_4
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 602
    :cond_5
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    .line 603
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 604
    iput-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 605
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 606
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 607
    if-lez p4, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p0, v0, p4}, Lcom/android/incallui/CallCardFragment;->showConferenceControl(ZI)V

    .line 608
    iget v0, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->setMultiSimIndicator(IZ)V

    goto :goto_1

    .line 611
    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_a

    .line 612
    :cond_8
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 613
    iput-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 614
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 615
    if-nez p3, :cond_0

    .line 616
    if-lez p4, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0, p4}, Lcom/android/incallui/CallCardFragment;->showConferenceControl(ZI)V

    .line 617
    iget v0, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->setMultiSimIndicator(IZ)V

    goto :goto_1

    .line 620
    :cond_a
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/CallCardFragment;->showConferenceControl(ZI)V

    .line 621
    iget v1, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CallCardFragment;->setMultiSimIndicator(IZ)V

    goto/16 :goto_1
.end method

.method public setSingleCallInfoVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSingleCallLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSingleCallName(Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "isConference"    # Z

    .prologue
    .line 779
    invoke-direct {p0, p5}, Lcom/android/incallui/CallCardFragment;->setPrimaryMode(Z)V

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AutoTextView;->setResizeSwitch(Z)V

    .line 785
    if-eqz p3, :cond_1

    .line 786
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AutoTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 787
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v2, p1}, Lcom/android/incallui/view/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 789
    :cond_1
    if-eqz p2, :cond_2

    .line 790
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 792
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AutoTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 794
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 795
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AutoTextView;->setResizeSwitch(Z)V

    .line 796
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 797
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 798
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 799
    invoke-virtual {v1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 800
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 802
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v2, v1}, Lcom/android/incallui/view/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    .end local v1    # "spannable":Landroid/text/SpannableStringBuilder;
    :goto_1
    const/4 v0, 0x0

    .line 809
    .local v0, "nameDirection":I
    if-eqz p2, :cond_3

    .line 810
    const/4 v0, 0x3

    .line 812
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v2, v0}, Lcom/android/incallui/view/AutoTextView;->setTextDirection(I)V

    goto :goto_0

    .line 804
    .end local v0    # "nameDirection":I
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;

    invoke-virtual {v2, p1}, Lcom/android/incallui/view/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "isConference"    # Z
    .param p5, "cause"    # Landroid/telecom/DisconnectCause;
    .param p6, "redialTimes"    # I

    .prologue
    const/4 v2, 0x0

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSingleCallState: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",videoState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sessionModificationState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isConference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    invoke-static {p1, p5, v2, p6}, Lcom/android/incallui/CallUtils;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;ZI)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/android/incallui/CallUtils;->getVideoCallStateLabelFromState(IIIZ)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "videoCallStateLabel":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/CallCardFragment;->isVideoCall:Z

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSingleCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisconnectCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v2, v0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->setCallCardStateLabel(Ljava/lang/String;I)V

    .line 766
    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v2}, Lcom/android/incallui/view/CallCardStateInfoView;->isCallStateLabelVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 767
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardFragment;->setLivetalkLeftMinute(Ljava/lang/String;)V

    .line 771
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v2, :cond_4

    .line 772
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v2, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateCallState(Ljava/lang/String;)V

    .line 774
    :cond_4
    return-void
.end method

.method public setSinglePhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->showPhoneNumber(Ljava/lang/CharSequence;)V

    .line 820
    return-void
.end method

.method public setSingleTelocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "telocation"    # Ljava/lang/String;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->showTelocation(Ljava/lang/CharSequence;)V

    .line 844
    return-void
.end method

.method public setSmallAvatar(Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isVerify"    # Z

    .prologue
    const/4 v4, 0x0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "currentKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mLastSmallAvatarKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mLastSmallAvatarKey:Ljava/lang/String;

    .line 249
    if-eqz p1, :cond_3

    .line 250
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/incallui/ImageUtils;->getCircleAvatarBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 252
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    if-eqz p2, :cond_4

    .line 259
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAvatar:Landroid/widget/ImageView;

    const v3, 0x7f020027

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibleFullScreenVideo(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->hideVideoBanner()V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->showVideoBanner()V

    goto :goto_0
.end method

.method public setYellowPageInfo(Lcom/android/incallui/model/CallCardInfo;)V
    .locals 6
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 670
    iget-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->markProviderIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/view/LabelAndNumberView;->showMarkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 675
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->showProviderInfo(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->showExtraInfo(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    invoke-virtual {v0, v5}, Lcom/android/incallui/view/CallCardOptionalInfoView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mYellowPageWordAd:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    :goto_0
    return-void

    .line 684
    :cond_0
    sget-object v0, Lcom/android/incallui/CallCardFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update word ad info on call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->isCallTypeOutgoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    invoke-virtual {v0, v4}, Lcom/android/incallui/view/CallCardOptionalInfoView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardOptionalInfo:Lcom/android/incallui/view/CallCardOptionalInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->clearAllView()V

    .line 687
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLabelAndNumberView:Lcom/android/incallui/view/LabelAndNumberView;

    invoke-virtual {v0, v3, v3, v3}, Lcom/android/incallui/view/LabelAndNumberView;->showMarkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 688
    iget-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->isCallTypeOutgoing:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mYellowPageWordAd:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mYellowPageWordAd:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mYellowPageWordAd:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAnswerIncomingBanner()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 900
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->hideVideoBanner()V

    .line 901
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 902
    .local v2, "translateAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 903
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/CallCardFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallCardFragment$6;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 909
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 910
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 911
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 912
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 913
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 914
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 915
    return-void

    .line 901
    :array_0
    .array-data 4
        0x43160000    # 150.0f
        0x0
    .end array-data

    .line 902
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showConferenceControl(ZI)V
    .locals 6
    .param p1, "isVisible"    # Z
    .param p2, "conferenceCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 847
    if-eqz p1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 849
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 850
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 851
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 852
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CallCardStateInfoView;->setConferenceCallNumber(Ljava/lang/String;)V

    .line 861
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 856
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 858
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 859
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v1, v5}, Lcom/android/incallui/view/CallCardStateInfoView;->setConferenceCallNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDialBanner()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 919
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->hideVideoBanner()V

    .line 920
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 921
    .local v2, "translateAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 922
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/CallCardFragment$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallCardFragment$7;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 928
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 929
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 930
    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 931
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 932
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 933
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 934
    return-void

    .line 920
    :array_0
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    .line 921
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showIncomingBanner()V
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->hideVideoBanner()V

    .line 895
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 896
    return-void
.end method

.method public showSmallAvatar(I)V
    .locals 7
    .param p1, "translateY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v5

    int-to-float v4, p1

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, "transAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 275
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 276
    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    new-instance v1, Lcom/android/incallui/CallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$2;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    .end local v0    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSpeakerOnOrIncomingMask(ZZ)V
    .locals 3
    .param p1, "isShowMask"    # Z
    .param p2, "useIncomingMask"    # Z

    .prologue
    .line 1093
    if-eqz p1, :cond_1

    .line 1094
    if-eqz p2, :cond_0

    const v0, 0x7f02001a

    .line 1095
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSpeakerOnMask:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1096
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSpeakerOnMask:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    .end local v0    # "resId":I
    :goto_1
    return-void

    .line 1094
    :cond_0
    const v0, 0x7f020109

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSpeakerOnMask:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public showVideoBanner()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoCallBanner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 946
    :cond_0
    return-void
.end method

.method public updateConferenceMode(Z)V
    .locals 1
    .param p1, "isConferenceModeOn"    # Z

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardStateInfoView:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->setConferenceMode(Z)V

    .line 712
    return-void
.end method

.method public updateSuspectInfo(Z)V
    .locals 2
    .param p1, "isSuspect"    # Z

    .prologue
    .line 433
    if-eqz p1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragment;->updateSuspectInfoOnline(Ljava/lang/String;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    goto :goto_0
.end method

.method public updateSuspectInfoOnline(Ljava/lang/String;)V
    .locals 5
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 445
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 446
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    .line 447
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSuspectView:Landroid/view/View;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    .local v0, "suspectViewInfo":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method
