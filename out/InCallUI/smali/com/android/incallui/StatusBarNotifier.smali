.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mIsShowingNotification:Z

.field private mLocation:Ljava/lang/String;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mYellowPagePhone:Lmiui/yellowpage/YellowPagePhone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 138
    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 139
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 140
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 141
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mYellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 152
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 665
    const-string v1, "Will show \"accept\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 669
    .local v0, "acceptVideoPendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 671
    return-void
.end method

.method private addAnswerAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 606
    const-string v1, "Will show \"answer\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 610
    .local v0, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 612
    return-void
.end method

.method private addDismissAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 615
    const-string v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 619
    .local v0, "declinePendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 621
    return-void
.end method

.method private addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 674
    const-string v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 678
    .local v0, "declineVideoPendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 680
    return-void
.end method

.method private addEarpieceAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ACCEPT_EARPIECE_REQUEST"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 642
    .local v0, "earpiecePendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 644
    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 624
    const-string v1, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 628
    .local v0, "hangupPendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 630
    return-void
.end method

.method private addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 524
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "tel"

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private addSpeakerAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ACCEPT_SPEAKER_REQUEST"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 635
    .local v0, "speakerPendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 637
    return-void
.end method

.method private addVideoCallAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 647
    const-string v1, "Will show \"video\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 651
    .local v0, "answerVideoPendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 653
    return-void
.end method

.method private addVoiceAction(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 656
    const-string v1, "Will show \"voice\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 660
    .local v0, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 662
    return-void
.end method

.method private buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 18
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "audioModeChanged"    # Z

    .prologue
    .line 336
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v9

    .line 337
    .local v9, "call":Lcom/android/incallui/Call;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    .line 342
    .local v6, "state":I
    invoke-virtual {v9}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    .line 343
    .local v12, "isConference":Z
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    const/4 v13, 0x1

    .line 347
    .local v13, "isVideoUpgradeRequest":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v3

    .line 348
    .local v3, "iconResId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v4

    .line 349
    .local v4, "contentResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "contentTitle":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 351
    .local v15, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v16

    .line 353
    .local v16, "subId":I
    if-nez p3, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILjava/lang/String;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    .line 364
    .local v8, "builder":Landroid/app/Notification$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v11

    .line 365
    .local v11, "inCallPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 368
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getBlockType()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    const/4 v2, 0x4

    if-eq v6, v2, :cond_3

    const/4 v2, 0x5

    if-ne v6, v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v9}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    .line 375
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/StatusBarNotifier;->getContentText(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 376
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 377
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 378
    new-instance v10, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v10, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 379
    .local v10, "extras":Landroid/os/Bundle;
    const-string v2, "phoneNumber"

    invoke-virtual {v10, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "subId"

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 383
    if-eqz v13, :cond_6

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 385
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/StatusBarNotifier;->addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/StatusBarNotifier;->addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 391
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v9}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V

    .line 396
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    .line 397
    .local v14, "notification":Landroid/app/Notification;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v7, "incall"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v7, v0, v14}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 399
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    .line 343
    .end local v3    # "iconResId":I
    .end local v4    # "contentResId":I
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "isVideoUpgradeRequest":Z
    .end local v14    # "notification":Landroid/app/Notification;
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v16    # "subId":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 388
    .restart local v3    # "iconResId":I
    .restart local v4    # "contentResId":I
    .restart local v5    # "contentTitle":Ljava/lang/String;
    .restart local v8    # "builder":Landroid/app/Notification$Builder;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v11    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .restart local v13    # "isVideoUpgradeRequest":Z
    .restart local v15    # "phoneNumber":Ljava/lang/String;
    .restart local v16    # "subId":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v8}, Lcom/android/incallui/StatusBarNotifier;->createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    goto :goto_2
.end method

.method private cancelInCall()V
    .locals 3

    .prologue
    .line 205
    const-string v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "incall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 208
    return-void
.end method

.method private checkForChangeAndSaveData(IILjava/lang/String;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 7
    .param p1, "icon"    # I
    .param p2, "content"    # I
    .param p3, "contentTitle"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-nez p3, :cond_5

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v6, :cond_5

    :cond_1
    move v0, v4

    .line 448
    .local v0, "contentTitleChanged":Z
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mYellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-nez v6, :cond_6

    iget-object v6, p5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-eqz v6, :cond_6

    move v3, v4

    .line 451
    .local v3, "yellowPagePhoneChanged":Z
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mLocation:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v6, p5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    if-eqz v6, :cond_7

    move v1, v4

    .line 454
    .local v1, "locationChanged":Z
    :goto_2
    iget v6, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v6, p1, :cond_2

    iget v6, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-ne v6, p2, :cond_2

    iget v6, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v6, p4, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_8

    :cond_2
    move v2, v4

    .line 459
    .local v2, "retval":Z
    :goto_3
    iget-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-nez v4, :cond_3

    .line 460
    const-string v4, "Showing notification for first time."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    const/4 v2, 0x1

    .line 464
    :cond_3
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 465
    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 466
    iput p4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 467
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 468
    iget-object v4, p5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    iput-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mYellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 469
    iget-object v4, p5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mLocation:Ljava/lang/String;

    .line 471
    if-eqz v2, :cond_4

    .line 472
    const-string v4, "Data changed.  Showing notification"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    :cond_4
    return v2

    .end local v0    # "contentTitleChanged":Z
    .end local v1    # "locationChanged":Z
    .end local v2    # "retval":Z
    .end local v3    # "yellowPagePhoneChanged":Z
    :cond_5
    move v0, v5

    .line 444
    goto :goto_0

    .restart local v0    # "contentTitleChanged":Z
    :cond_6
    move v3, v5

    .line 448
    goto :goto_1

    .restart local v3    # "yellowPagePhoneChanged":Z
    :cond_7
    move v1, v5

    .line 451
    goto :goto_2

    .restart local v1    # "locationChanged":Z
    :cond_8
    move v2, v5

    .line 454
    goto :goto_3
.end method

.method static clearInCallNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 211
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 216
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const-string v1, "incall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Setting fullScreenIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1, p2, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 722
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 723
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 728
    .local v1, "isCallWaiting":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureFullScreenIntent: call-waiting or dsda incoming call! force relaunch. Active sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "incall"

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 736
    :cond_1
    return-void

    .line 723
    .end local v1    # "isCallWaiting":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "state"    # I
    .param p3, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    .line 404
    if-ne p2, v4, :cond_2

    .line 405
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 406
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 411
    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 414
    .local v0, "audioMode":I
    if-eq p2, v4, :cond_0

    if-eq p2, v5, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    .line 418
    if-ne v0, v5, :cond_3

    .line 419
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addEarpieceAction(Landroid/app/Notification$Builder;)V

    .line 432
    :cond_1
    :goto_1
    return-void

    .line 408
    .end local v0    # "audioMode":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 421
    .restart local v0    # "audioMode":I
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addSpeakerAction(Landroid/app/Notification$Builder;)V

    goto :goto_1

    .line 423
    :cond_4
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 424
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/app/Notification$Builder;)V

    .line 425
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 426
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVoiceAction(Landroid/app/Notification$Builder;)V

    .line 427
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVideoCallAction(Landroid/app/Notification$Builder;)V

    goto :goto_1

    .line 429
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/app/Notification$Builder;)V

    goto :goto_1
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 758
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 760
    .local v0, "inCallPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private static createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 768
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-class v2, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 589
    if-nez p1, :cond_1

    .line 590
    const/4 v0, 0x0

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 592
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 593
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 594
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 596
    :cond_2
    if-nez v0, :cond_3

    .line 597
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 599
    :cond_3
    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentString(Lcom/android/incallui/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 569
    const v0, 0x7f0c0059

    .line 571
    .local v0, "resId":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 572
    :cond_0
    const v0, 0x7f0c005b

    .line 582
    :cond_1
    :goto_0
    return v0

    .line 573
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 574
    const v0, 0x7f0c005a

    goto :goto_0

    .line 575
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 576
    const v0, 0x7f0c0058

    goto :goto_0

    .line 577
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 579
    const v0, 0x7f0c0063

    goto :goto_0
.end method

.method private getContentText(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;I)Ljava/lang/String;
    .locals 9
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "contentResId"    # I

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "contentText":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 499
    .local v3, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    const/4 v2, 0x0

    .line 500
    .local v2, "markTitle":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 501
    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->isAntispam()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f0c000a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_1
    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 509
    :cond_2
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 512
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_4
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 515
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "contentTextStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "contentTextStr":Ljava/lang/String;
    :cond_6
    return-object v1
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 482
    if-eqz p2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    .line 485
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 545
    const/high16 v2, 0x400000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 546
    .local v1, "voicePrivacy":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 547
    if-eqz v1, :cond_0

    .line 548
    const v0, 0x7f020105

    .line 562
    .local v0, "resId":I
    :goto_0
    return v0

    .line 550
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0200a0

    .restart local v0    # "resId":I
    goto :goto_0

    .line 552
    .end local v0    # "resId":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 554
    const v0, 0x7f0200a3

    .restart local v0    # "resId":I
    goto :goto_0

    .line 556
    .end local v0    # "resId":I
    :cond_2
    if-eqz v1, :cond_3

    .line 557
    const v0, 0x7f020104

    .restart local v0    # "resId":I
    goto :goto_0

    .line 559
    .end local v0    # "resId":I
    :cond_3
    const v0, 0x7f020050

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 739
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 743
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 745
    return-object v0
.end method

.method private showNotification(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 300
    .local v0, "isIncoming":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 320
    return-void

    .line 292
    .end local v0    # "isIncoming":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 12
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    const-string v5, "updateInCallNotification..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    .line 235
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 240
    .local v0, "isOutgoingWithoutIncallUi":Z
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v5, v6, :cond_7

    :cond_1
    move v2, v3

    .line 259
    .local v2, "showNotificationNow":Z
    :goto_1
    if-eqz v2, :cond_8

    .line 260
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v5}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V

    .line 273
    :cond_2
    :goto_2
    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/incallui/util/Utils;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_9

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v5

    if-nez v5, :cond_9

    move v1, v3

    .line 278
    .local v1, "showGreenBar":Z
    :goto_3
    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/incallui/util/Utils;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 279
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3, v8, v10, v11}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule(IJ)V

    .line 286
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    if-nez v3, :cond_5

    .line 287
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3, v7}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear(I)V

    .line 289
    :cond_5
    return-void

    .end local v0    # "isOutgoingWithoutIncallUi":Z
    .end local v1    # "showGreenBar":Z
    .end local v2    # "showNotificationNow":Z
    :cond_6
    move v0, v4

    .line 235
    goto :goto_0

    .restart local v0    # "isOutgoingWithoutIncallUi":Z
    :cond_7
    move v2, v4

    .line 240
    goto :goto_1

    .line 262
    .restart local v2    # "showNotificationNow":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 263
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v5, v6, :cond_2

    .line 265
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5, v7, v10, v11}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule(IJ)V

    goto :goto_2

    :cond_9
    move v1, v4

    .line 273
    goto :goto_3

    .line 281
    .restart local v1    # "showGreenBar":Z
    :cond_a
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3, v8}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear(I)V

    .line 282
    invoke-virtual {p0, v1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotificationToStatusBar(ZLcom/android/incallui/CallList;)V

    goto :goto_4
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 161
    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 166
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule(IJ)V

    .line 169
    :cond_0
    return-void
.end method

.method public refreshNotification()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public updateInCallNotificationToStatusBar(ZLcom/android/incallui/CallList;)V
    .locals 10
    .param p1, "show"    # Z
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 779
    if-eqz p1, :cond_4

    .line 780
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isInCallUIInTop()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 781
    const-string v5, "updateInCallNotificationToStatusBar: InCallUI is in top, so do not show the green bar."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 785
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 786
    .local v0, "c":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 788
    .local v4, "state":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 789
    .local v2, "diff":J
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "call_state"

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->translateCallStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v5, "base_time"

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    :goto_1
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 794
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendBroadcast ACTION_LEAVE_INCALL_SCREEN EXTRA_CALL_STATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->translateCallStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", show green bar!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCreateTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    goto :goto_1

    .line 804
    .end local v0    # "c":Lcom/android/incallui/Call;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "diff":J
    .end local v4    # "state":I
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 807
    const-string v5, "sendBroadcast ACTION_ENTER_INCALL_SCREEN_DURING_CALL, hide green bar!!"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currentuser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Process uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 198
    :cond_0
    return-void
.end method
