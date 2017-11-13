.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$15;,
        Lcom/android/incallui/InCallActivity$MainHandler;,
        Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;,
        Lcom/android/incallui/InCallActivity$SuppService;
    }
.end annotation


# instance fields
.field private mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

.field mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mButtonContainer:Landroid/view/View;

.field mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

.field mCallCardFragment:Lcom/android/incallui/CallCardFragment;

.field private mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentOrientation:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/DialpadFragment;

.field private mEmergencyWaitingDialog:Landroid/app/ProgressDialog;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Lcom/android/incallui/BaseUIHandler;

.field private final mIJeejenInCallCallback:Lcom/android/incallui/IJeejenInCallCallback;

.field private mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private mIsForegroundActivity:Z

.field mIsLoadedCallButton:Z

.field private mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mMaskResId:I

.field private mNormalCallContainer:Landroid/view/View;

.field private mNormalCallMask:Landroid/view/View;

.field private mShowDialpadRequested:Z

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

.field private mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

.field private mVideoUpgradeDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLoadedCallButton:Z

    .line 126
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mMaskResId:I

    .line 152
    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 1258
    new-instance v0, Lcom/android/incallui/InCallActivity$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$MainHandler;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 1421
    new-instance v0, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mIJeejenInCallCallback:Lcom/android/incallui/IJeejenInCallCallback;

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/view/SimCardPickDialog;)Lcom/android/incallui/view/SimCardPickDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Lcom/android/incallui/view/SimCardPickDialog;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallToolsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->onSuppServiceFailed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initDelayOnCreate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initDelayOnStart()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/JeejenInCallScreenLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    return-object v0
.end method

.method private createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1293
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :sswitch_0
    const-string v1, "tag_call_card_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "tag_call_button_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "tag_call_dialpad_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "tag_call_tools_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "tag_conference_manager_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "tag_answer_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1295
    :pswitch_0
    new-instance v0, Lcom/android/incallui/CallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/CallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 1296
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    .line 1297
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    .line 1298
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 1316
    :goto_1
    return-object v0

    .line 1300
    :pswitch_1
    new-instance v0, Lcom/android/incallui/CallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    .line 1301
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    .line 1302
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    goto :goto_1

    .line 1304
    :pswitch_2
    new-instance v0, Lcom/android/incallui/DialpadFragment;

    invoke-direct {v0}, Lcom/android/incallui/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 1305
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    goto :goto_1

    .line 1307
    :pswitch_3
    new-instance v0, Lcom/android/incallui/CallToolsFragment;

    invoke-direct {v0}, Lcom/android/incallui/CallToolsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    .line 1308
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    goto :goto_1

    .line 1310
    :pswitch_4
    new-instance v0, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 1311
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto :goto_1

    .line 1313
    :pswitch_5
    new-instance v0, Lcom/android/incallui/AnswerFragment;

    invoke-direct {v0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 1315
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragment;->setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    .line 1316
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    goto :goto_1

    .line 1293
    :sswitch_data_0
    .sparse-switch
        -0x6079c79f -> :sswitch_1
        -0x2e34b4f4 -> :sswitch_5
        0x3b9ff743 -> :sswitch_0
        0x5db14040 -> :sswitch_4
        0x705fdcc8 -> :sswitch_2
        0x755fd810 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private createVoiceMailMissDialog(Lcom/android/incallui/Call;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0064

    new-instance v2, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissSimPickDialog()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog;->cancelDialog()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    .line 735
    :cond_0
    return-void
.end method

.method private fakeFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->moveTaskToBack(Z)Z

    .line 420
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 421
    return-void
.end method

.method private getContainerIdForFragment(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0900a4

    .line 1358
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1370
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :sswitch_0
    const-string v2, "tag_call_card_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "tag_conference_manager_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "tag_call_tools_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "tag_call_button_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "tag_answer_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "tag_call_dialpad_fragment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 1360
    :pswitch_0
    const v0, 0x7f0900a3

    .line 1368
    :cond_1
    :goto_1
    :pswitch_1
    return v0

    .line 1362
    :pswitch_2
    const v0, 0x7f0900a5

    goto :goto_1

    .line 1368
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->isVideoInComeCall()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0900be

    goto :goto_1

    .line 1358
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6079c79f -> :sswitch_3
        -0x2e34b4f4 -> :sswitch_4
        0x3b9ff743 -> :sswitch_0
        0x5db14040 -> :sswitch_1
        0x705fdcc8 -> :sswitch_5
        0x755fd810 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1354
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :sswitch_0
    const-string v1, "tag_call_card_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "tag_call_button_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "tag_call_dialpad_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "tag_call_tools_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "tag_conference_manager_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "tag_answer_fragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1352
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 1345
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6079c79f -> :sswitch_1
        -0x2e34b4f4 -> :sswitch_5
        0x3b9ff743 -> :sswitch_0
        0x5db14040 -> :sswitch_4
        0x705fdcc8 -> :sswitch_2
        0x755fd810 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCallBackground()V
    .locals 6

    .prologue
    .line 925
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 926
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 928
    const v2, 0x7f02010b

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setCallMask(I)V

    .line 929
    invoke-static {}, Lcom/android/incallui/ImageUtils;->getDefaultInCallWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 931
    .local v0, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 935
    invoke-static {}, Lcom/android/incallui/util/ImageLoadHelper;->getHelper()Lcom/android/incallui/util/ImageLoadHelper;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/incallui/util/ImageLoadHelper;->loadImage(Landroid/graphics/drawable/Drawable;Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;)V

    .line 942
    .end local v0    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 931
    nop

    :array_0
    .array-data 4
        -0xe26441
        -0xdbc694
    .end array-data
.end method

.method private initDelayOnCreate()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 197
    new-instance v0, Lcom/android/incallui/InCallOrientationEventListener;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    .line 198
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->registerSuppServMsgReceiver()V

    .line 199
    return-void
.end method

.method private initDelayOnStart()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->supportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_small_window"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    :cond_1
    return-void
.end method

.method private initializeInCall()V
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 752
    const v1, 0x7f0900a1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/AnimationCircleLayout;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    .line 753
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/AnimationCircleLayout;->setTagForLog(Ljava/lang/String;)V

    .line 754
    const v1, 0x7f0900a2

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    .line 755
    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallMask:Landroid/view/View;

    .line 756
    const v1, 0x7f0900a4

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mButtonContainer:Landroid/view/View;

    .line 758
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->isVideoInComeCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 760
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/JeejenInCallScreenLayer;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 761
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mIJeejenInCallCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-virtual {v1, v2}, Lcom/android/incallui/JeejenInCallScreenLayer;->setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V

    .line 763
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 623
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 631
    const-string v8, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 636
    const-string v8, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 637
    .local v7, "showDialpad":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 642
    .end local v7    # "showDialpad":Z
    :cond_0
    const-string v8, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 643
    const-string v8, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 645
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 646
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 647
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isPotentialEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->isAirPlaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->showEmergencyCallWaitingDialog()V

    .line 652
    :cond_1
    const/4 v2, 0x0

    .line 653
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 654
    invoke-static {v1}, Lcom/android/incallui/CallAdapterUtils;->getOriginalPlaceIntentExtras(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v2

    .line 656
    :cond_2
    if-nez v2, :cond_3

    .line 658
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 668
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isPotentialEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 669
    const-string v8, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 671
    .local v6, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    if-nez v8, :cond_5

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 673
    :cond_4
    const-string v8, "disconnectCall for no getAccountHandle"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 679
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 680
    .local v3, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_6

    .line 681
    invoke-static {v3}, Lcom/android/incallui/CallAdapterUtils;->getOriginalPlaceIntentExtras(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v2

    .line 684
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-wide/16 v4, -0x1

    .line 685
    .local v4, "originalSimId":J
    if-eqz v2, :cond_7

    .line 686
    const-string v8, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 688
    .restart local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string v8, "com.android.phone.ORIGINAL_SIM_ID"

    const-wide/16 v10, -0x1

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 692
    :goto_0
    invoke-direct {p0, v6, v4, v5}, Lcom/android/incallui/InCallActivity;->launchMSimDialer(Ljava/util/List;J)V

    .line 695
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v4    # "originalSimId":J
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_6
    return-void

    .line 690
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .restart local v4    # "originalSimId":J
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_0
.end method

.method private isAirPlaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 698
    const-string v2, "mediatek"

    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 699
    goto :goto_0

    .line 701
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPotentialEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 705
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 706
    .local v0, "handle":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/telephony/TelephonyManagerEx;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVideoInComeCall()Z
    .locals 3

    .prologue
    .line 770
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 771
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 772
    .local v1, "isVideoCall":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    const/4 v1, 0x1

    .line 775
    :cond_0
    return v1
.end method

.method private launchMSimDialer(Ljava/util/List;J)V
    .locals 2
    .param p2, "originalSimId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 713
    :cond_0
    new-instance v0, Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/incallui/view/SimCardPickDialog;-><init>(Lcom/android/incallui/InCallActivity;J)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    .line 714
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SimCardPickDialog;->setOnSimCardPickCallBack(Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;)V

    .line 727
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/SimCardPickDialog;->showSimCardPickDialog(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1240
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->onErrorDialogDismissed()V

    .line 1241
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 1242
    return-void
.end method

.method private onSuppServiceFailed(I)V
    .locals 6
    .param p1, "service"    # I

    .prologue
    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuppServiceFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    invoke-static {}, Lcom/android/incallui/InCallActivity$SuppService;->values()[Lcom/android/incallui/InCallActivity$SuppService;

    move-result-object v3

    aget-object v2, v3, p1

    .line 1048
    .local v2, "result":Lcom/android/incallui/InCallActivity$SuppService;
    sget-object v3, Lcom/android/incallui/InCallActivity$15;->$SwitchMap$com$android$incallui$InCallActivity$SuppService:[I

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity$SuppService;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1093
    const v0, 0x7f0c0027

    .line 1097
    .local v0, "errorMessageResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1098
    .local v1, "msg":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    :goto_1
    return-void

    .line 1052
    .end local v0    # "errorMessageResId":I
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :pswitch_0
    const v0, 0x7f0c0028

    .line 1053
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1058
    .end local v0    # "errorMessageResId":I
    :pswitch_1
    const v0, 0x7f0c0029

    .line 1059
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1065
    .end local v0    # "errorMessageResId":I
    :pswitch_2
    const v0, 0x7f0c002a

    .line 1066
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1071
    .end local v0    # "errorMessageResId":I
    :pswitch_3
    const v0, 0x7f0c002b

    .line 1072
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1077
    .end local v0    # "errorMessageResId":I
    :pswitch_4
    const v0, 0x7f0c002c

    .line 1078
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1082
    .end local v0    # "errorMessageResId":I
    :pswitch_5
    const v0, 0x7f0c002d

    .line 1083
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1086
    .end local v0    # "errorMessageResId":I
    :pswitch_6
    const v0, 0x7f0c002e

    .line 1087
    .restart local v0    # "errorMessageResId":I
    goto :goto_0

    .line 1101
    .restart local v1    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1102
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c007c

    new-instance v5, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$SuppService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$SuppService;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1123
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1124
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private registerSuppServMsgReceiver()V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "org.codeaurora.ACTION_SUPP_SERVICE_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    if-nez v1, :cond_0

    .line 599
    new-instance v1, Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;-><init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$1;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 602
    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 740
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    .line 743
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 744
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 745
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 748
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method private reuseFragmentForTag(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1322
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1342
    .end local p1    # "fragment":Landroid/app/Fragment;
    :goto_1
    return-void

    .line 1322
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :sswitch_0
    const-string v1, "tag_call_card_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "tag_call_button_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "tag_call_dialpad_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "tag_call_tools_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "tag_conference_manager_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "tag_answer_fragment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1324
    :pswitch_0
    check-cast p1, Lcom/android/incallui/CallCardFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    goto :goto_1

    .line 1327
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :pswitch_1
    check-cast p1, Lcom/android/incallui/CallButtonFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    goto :goto_1

    .line 1330
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :pswitch_2
    check-cast p1, Lcom/android/incallui/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    goto :goto_1

    .line 1333
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :pswitch_3
    check-cast p1, Lcom/android/incallui/CallToolsFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    goto :goto_1

    .line 1336
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :pswitch_4
    check-cast p1, Lcom/android/incallui/ConferenceManagerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto :goto_1

    .line 1339
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :pswitch_5
    check-cast p1, Lcom/android/incallui/AnswerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    goto :goto_1

    .line 1322
    :sswitch_data_0
    .sparse-switch
        -0x6079c79f -> :sswitch_1
        -0x2e34b4f4 -> :sswitch_5
        0x3b9ff743 -> :sswitch_0
        0x5db14040 -> :sswitch_4
        0x705fdcc8 -> :sswitch_2
        0x755fd810 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showEmergencyCallWaitingDialog()V
    .locals 2

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1033
    const-string v0, ""

    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mEmergencyWaitingDialog:Landroid/app/ProgressDialog;

    .line 1034
    return-void
.end method

.method private showErrorDialog(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1131
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1132
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show Dialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "Voicemail scheme provided but no voicemail number set."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1137
    .local v0, "isVoiceMailMiss":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1165
    :cond_0
    :goto_1
    return-void

    .line 1135
    .end local v0    # "isVoiceMailMiss":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1141
    .restart local v0    # "isVoiceMailMiss":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1142
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1144
    if-eqz v0, :cond_3

    .line 1145
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->createVoiceMailMissDialog(Lcom/android/incallui/Call;)Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1163
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1164
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1147
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c007c

    new-instance v5, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v4, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method private showFragment(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z

    .prologue
    .line 1374
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZZ)V

    .line 1375
    return-void
.end method

.method private showFragment(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z
    .param p4, "isRemove"    # Z

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;

    move-result-object v0

    .line 1380
    .local v0, "fm":Landroid/app/FragmentManager;
    if-nez v0, :cond_1

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment manager is null for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1386
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity is finishing or fm is destroy for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1391
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez p2, :cond_4

    if-eqz v1, :cond_0

    .line 1396
    :cond_4
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1397
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_6

    .line 1398
    if-nez v1, :cond_5

    .line 1399
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1400
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getContainerIdForFragment(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1413
    :goto_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1414
    if-eqz p3, :cond_0

    .line 1415
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 1402
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/android/incallui/InCallActivity;->reuseFragmentForTag(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 1406
    :cond_6
    if-eqz p4, :cond_7

    .line 1407
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 1409
    :cond_7
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private unRegisterSuppServMsgReceiver()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSuppServFailedReceiver:Lcom/android/incallui/InCallActivity$SuppServFailedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    :cond_0
    return-void
.end method


# virtual methods
.method public animationToFinish()V
    .locals 4

    .prologue
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationToFinish().  Dialog showing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissVideoUpgradeDialogs()V

    .line 379
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    invoke-static {}, Lcom/android/incallui/util/Utils;->getSmallAvatarRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 381
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->getCircleAnimationBuilder()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v0

    .line 382
    .local v0, "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setTargetR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->setOnAnimationListener(Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->configAnimationParam()V

    .line 406
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/Utils;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-nez v2, :cond_3

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->directAnimationEnd()V

    .line 412
    .end local v0    # "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return-void

    .line 375
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 409
    .restart local v0    # "builder":Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->startCircleAnimation()V

    goto :goto_1
.end method

.method public clearResources()V
    .locals 1

    .prologue
    .line 331
    const-string v0, "after finish InCallActivity, clear resources."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 333
    invoke-static {}, Lcom/android/incallui/util/PermissionGrantHelper;->release()V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setCallBackground(Landroid/graphics/Bitmap;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLoadedCallButton:Z

    .line 338
    return-void
.end method

.method public closeAllPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V

    .line 880
    :cond_0
    return-void
.end method

.method public dismissEmergencyPendingDialogs()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEmergencyWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEmergencyWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mEmergencyWaitingDialog:Landroid/app/ProgressDialog;

    .line 1029
    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 779
    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1014
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->dismissSimPickDialog()V

    .line 1015
    return-void
.end method

.method public dismissVideoUpgradeDialogs()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    .line 1022
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 995
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public displayCallButton()V
    .locals 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLoadedCallButton:Z

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLoadedCallButton:Z

    .line 844
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessage(I)Z

    .line 846
    :cond_0
    return-void
.end method

.method public displayCallCard()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-nez v0, :cond_0

    .line 850
    const-string v0, "tag_call_card_fragment"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 852
    :cond_0
    return-void
.end method

.method public displayDialpad(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    if-eqz p1, :cond_0

    .line 826
    const-string v0, "tag_call_dialpad_fragment"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 827
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->setNeedLaunchShow()V

    goto :goto_0
.end method

.method public displayToolPanel(Z)V
    .locals 3
    .param p1, "showToolPanel"    # Z

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallToolsFragment;->setVisible(Z)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    if-eqz p1, :cond_0

    .line 835
    const-string v0, "tag_call_tools_fragment"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 836
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->setNeedLaunchShow()V

    goto :goto_0
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    if-nez v0, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1513
    :cond_0
    if-eqz p1, :cond_1

    .line 1514
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    goto :goto_0

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    const-string v0, "finish activity"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/android/incallui/util/ImageLoadHelper;->getHelper()Lcom/android/incallui/util/ImageLoadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/ImageLoadHelper;->releaseResources()V

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 371
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 372
    return-void
.end method

.method public getCallBackground()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 955
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 956
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 959
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    return-object v0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public getCallToolsFragment()Lcom/android/incallui/CallToolsFragment;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    return-object v0
.end method

.method public getDialpadHideTime()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->getDialpadHideTime()I

    move-result v0

    goto :goto_0
.end method

.method public getToolPanelHideTime()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->getToolPanelHideTime()I

    move-result v0

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->isAnimationRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isToolPanelVisible()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isToolPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 999
    const-string v1, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    .line 1002
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1005
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Lcom/android/incallui/Call;)V

    .line 1007
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 447
    const-string v1, "onBackPressed()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 470
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 459
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 460
    const-string v1, "Consume Back press for an incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->isAnimationRuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    const-string v1, "AnimationCircleLayout is running"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->fakeFinish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 573
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 574
    .local v0, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 577
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    if-eq v1, v2, :cond_1

    .line 582
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    .line 583
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->onDeviceRotationChange(I)V

    .line 585
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    .line 587
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 588
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallActivity onCreate()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallActivity onCreate()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v0, 0x288000

    .line 172
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 177
    const v1, 0x7f030016

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 178
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 180
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessage(I)Z

    .line 189
    const-string v1, "onCreate(): exit"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->unRegisterSuppServMsgReceiver()V

    .line 325
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->clearResources()V

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 496
    sparse-switch p1, :sswitch_data_0

    .line 544
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    :cond_1
    :goto_0
    :sswitch_1
    return v4

    .line 498
    :sswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 499
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 500
    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v1    # "handled":Z
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 530
    :sswitch_4
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 531
    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 534
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, "decorView":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4c -> :sswitch_4
        0x5b -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 491
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 475
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    .line 477
    const/4 v1, 0x1

    .line 479
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    const-string v0, "InCallActivity onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    const-string v0, "InCallActivity onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 291
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 297
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 278
    invoke-static {}, Lcom/android/incallui/util/PermissionGrantHelper;->getInstance()Lcom/android/incallui/util/PermissionGrantHelper;

    move-result-object v0

    .line 279
    .local v0, "permissionGrantHelper":Lcom/android/incallui/util/PermissionGrantHelper;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/util/PermissionGrantHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 280
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    const-string v0, "InCallActivity onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const-string v0, "InCallActivity onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 256
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 257
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessage(I)Z

    .line 268
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->logCurrentState()V

    .line 270
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->isInClipState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnimationCircleLayout:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->resetLayout()V

    .line 274
    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "InCallActivity onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "InCallActivity onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 206
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initCallBackground()V

    .line 207
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Lcom/android/incallui/BaseUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/BaseUIHandler;->sendEmptyMessage(I)Z

    .line 210
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 211
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    const-string v0, "InCallActivity onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const-string v0, "InCallActivity onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 308
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 309
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 312
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->dismissSimPickDialog()V

    .line 313
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->supportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/android/incallui/util/SmartCoverUtil;->removeTargetSmartCover(Landroid/app/FragmentManager;)Z

    .line 316
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public playAudioButtonClickAnim(ZII)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/CallCardFragment;->playAudioButtonClickAnim(ZII)V

    .line 594
    :cond_0
    return-void
.end method

.method public setCallBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 945
    if-nez p1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCallMask(I)V
    .locals 2
    .param p1, "maskResId"    # I

    .prologue
    .line 963
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mMaskResId:I

    if-eq p1, v0, :cond_0

    .line 964
    iput p1, p0, Lcom/android/incallui/InCallActivity;->mMaskResId:I

    .line 965
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mNormalCallMask:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/InCallActivity;->mMaskResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 967
    :cond_0
    return-void
.end method

.method public showAnswerFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 915
    const-string v0, "tag_answer_fragment"

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZZ)V

    .line 916
    if-nez p1, :cond_0

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 919
    :cond_0
    return-void
.end method

.method public showConferenceFragment(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 884
    const-string v2, "tag_conference_manager_fragment"

    invoke-direct {p0, v2, p1, v3, v3}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZZ)V

    .line 885
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v2, p1}, Lcom/android/incallui/ConferenceManagerFragment;->onVisibilityChanged(Z)V

    .line 886
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v2, :cond_0

    .line 887
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->isSmartCoverClosed(Landroid/content/Context;)Z

    move-result v1

    .line 890
    .local v1, "isSmartCoverClosed":Z
    if-eqz p1, :cond_3

    .line 891
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v2, :cond_1

    .line 892
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V

    .line 893
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 894
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 895
    if-eqz v1, :cond_1

    .line 896
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->removeTargetSmartCover(Landroid/app/FragmentManager;)Z

    .line 912
    :cond_1
    :goto_1
    return-void

    .end local v1    # "isSmartCoverClosed":Z
    :cond_2
    move v2, v4

    .line 887
    goto :goto_0

    .line 900
    .restart local v1    # "isSmartCoverClosed":Z
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 901
    .local v0, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v2, :cond_4

    .line 902
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v2, :cond_4

    .line 903
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V

    .line 904
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 907
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 908
    if-eqz v1, :cond_1

    .line 909
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->showTargetSmartCover(Landroid/app/FragmentManager;)Z

    goto :goto_1
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 976
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    invoke-static {p1, p2}, Lcom/android/incallui/PostCharDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/incallui/PostCharDialogFragment;

    move-result-object v0

    .line 978
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 980
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 981
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 982
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    .line 988
    .end local v0    # "fragment":Lcom/android/incallui/PostCharDialogFragment;
    :goto_0
    return-void

    .line 984
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 985
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 986
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0
.end method

.method public showSmartCover()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->supportSmartCover()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->isSmartCoverClosed(Landroid/content/Context;)Z

    move-result v1

    .line 232
    .local v1, "isSmartCoverClosed":Z
    if-eqz v1, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->showTargetSmartCover(Landroid/app/FragmentManager;)Z

    move-result v0

    .line 234
    .local v0, "isNeedNotifify":Z
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mButtonContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_1
    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->notifySmartCoverCallListChange()V

    .line 243
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    goto :goto_0

    .line 236
    .end local v0    # "isNeedNotifify":Z
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v2}, Lcom/android/incallui/util/SmartCoverUtil;->removeTargetSmartCover(Landroid/app/FragmentManager;)Z

    move-result v0

    .line 237
    .restart local v0    # "isNeedNotifify":Z
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mNormalCallContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateConferenceMode(Z)V
    .locals 1
    .param p1, "isConferenceModeOn"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->updateConferenceMode(Z)V

    .line 973
    :cond_0
    return-void
.end method

.method public videoUpgradeRequestCallDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1199
    const v1, 0x7f0c007d

    new-instance v2, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1215
    const v1, 0x7f0c007c

    new-instance v2, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    .line 1232
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1233
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1234
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoUpgradeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1235
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->playUpgradePromptTone()V

    .line 1236
    return-void
.end method
