.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mContext:Landroid/content/Context;

.field private mMwiVisible:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSelectedUnavailableNotify:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mUserManager:Landroid/os/UserManager;

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-class v0, Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    .line 116
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 117
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 118
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 120
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 122
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    .line 123
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 125
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 126
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 127
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 128
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private cancelNetworkSelection()V
    .locals 4

    .prologue
    .line 624
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 627
    return-void
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 139
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 145
    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 143
    :cond_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 682
    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 14
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 579
    sget-boolean v7, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showNetworkSelection("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 581
    :cond_0
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x108008a

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f08021d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f08021e

    new-array v11, v13, [Ljava/lang/Object;

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 590
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10200000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 594
    new-instance v7, Landroid/content/ComponentName;

    const-string v9, "com.android.phone"

    const-string v10, "com.android.phone.NetworkSetting"

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 596
    const-string v7, "sub_id"

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 599
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 600
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 601
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 602
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 600
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 610
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 611
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 612
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x6

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    move-object v7, v8

    .line 611
    goto :goto_2

    .line 618
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    return-void
.end method


# virtual methods
.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 570
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 572
    return-void
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "notifyId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 678
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    return-void
.end method

.method refreshMwi(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 261
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 264
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    .local v0, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    .end local v0    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 271
    .end local v0    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 273
    .local v2, "mwiVisible":Z
    if-eqz v2, :cond_0

    .line 274
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    goto :goto_0
.end method

.method showDataDisconnectedRoaming()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 532
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 535
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 538
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f080157

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 540
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f080154

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f0a0000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 546
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 547
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 548
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 549
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 547
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {v6}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 557
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 558
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 559
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 561
    .local v5, "notif":Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    .end local v5    # "notif":Landroid/app/Notification;
    :cond_3
    move-object v9, v10

    .line 558
    goto :goto_2

    .line 564
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    return-void
.end method

.method updateCfi(IZ)V
    .locals 13
    .param p1, "subId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 457
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCfi(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 458
    :cond_0
    if-eqz p2, :cond_7

    .line 470
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 471
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v5, :cond_2

    .line 472
    sget-object v9, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found null subscription info for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-void

    .line 477
    .restart local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 478
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "notificationTitle":Ljava/lang/String;
    :goto_1
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f02003e

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f080105

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 491
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x14000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    const-string v9, "com.android.phone"

    const-string v10, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    .line 496
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, p1, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 499
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 500
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 501
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 502
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 500
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 480
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notificationTitle":Ljava/lang/String;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f080102

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "notificationTitle":Ljava/lang/String;
    goto :goto_1

    .line 506
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    invoke-static {v6}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 510
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 511
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v1

    :goto_4
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 512
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 511
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 519
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notificationTitle":Ljava/lang/String;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method updateMwi(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    .line 286
    return-void
.end method

.method updateMwi(IZZ)V
    .locals 30
    .param p1, "subId"    # I
    .param p2, "visible"    # Z
    .param p3, "enableNotificationSound"    # Z

    .prologue
    .line 296
    sget-boolean v26, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v26, :cond_1

    .line 299
    sget-object v26, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string v27, "Called updateMwi() on non-voice-capable device! Ignoring..."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 304
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz p2, :cond_2

    if-eqz v12, :cond_2

    .line 305
    new-instance v15, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;-><init>(Landroid/content/Context;)V

    .line 306
    .local v15, "queryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v13

    .line 307
    .local v13, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v15, v13}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 308
    sget-object v26, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string v27, "Notifications channel active for visual voicemail, hiding mwi."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 p2, 0x0

    .line 313
    .end local v13    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v15    # "queryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    :cond_2
    sget-object v26, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateMwi(): subId "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " update to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    if-eqz p2, :cond_e

    .line 317
    if-nez v12, :cond_3

    .line 318
    sget-object v26, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Found null phone for: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v19

    .line 323
    .local v19, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v19, :cond_4

    .line 324
    sget-object v26, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Found null subscription info for: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :cond_4
    const v17, 0x108007e

    .line 340
    .local v17, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f080219

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, "notificationTitle":Ljava/lang/String;
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v25

    .line 342
    .local v25, "vmNumber":Ljava/lang/String;
    sget-boolean v26, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v26, :cond_5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "- got vm number: \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 350
    :cond_5
    if-nez v25, :cond_6

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v26

    if-nez v26, :cond_6

    .line 351
    sget-boolean v26, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v26, :cond_0

    const-string v26, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_6
    invoke-static {v12}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 356
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v24

    .line 357
    .local v24, "vmCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08021a

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 358
    .local v20, "titleFormat":Ljava/lang/String;
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 362
    .end local v20    # "titleFormat":Ljava/lang/String;
    .end local v24    # "vmCount":I
    :cond_7
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v14

    .line 366
    .local v14, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08021c

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, "notificationText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08021c

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 374
    new-instance v7, Landroid/content/Intent;

    const-string v26, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, "intent":Landroid/content/Intent;
    const-string v26, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-class v27, Lcom/android/phone/settings/VoicemailSettingsActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, v27

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 396
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    const/16 v18, 0x0

    .line 398
    .local v18, "ringtoneUri":Landroid/net/Uri;
    if-eqz p3, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-result-object v18

    .line 402
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 403
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 405
    .local v5, "carrierConfig":Landroid/os/PersistableBundle;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v4, "builder":Landroid/app/Notification$Builder;
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v26

    const/high16 v27, 0x7f0a0000

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v26

    const-string v27, "voicemail_notification_persistent_bool"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 419
    invoke-static {v12}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->isVibrationEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 420
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 423
    :cond_9
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 424
    .local v8, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 425
    .local v23, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v6, v0, :cond_0

    .line 426
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 428
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-static/range {v21 .. v21}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 425
    :cond_a
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 378
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationText":Ljava/lang/String;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v18    # "ringtoneUri":Landroid/net/Uri;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 379
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 389
    .restart local v9    # "notificationText":Ljava/lang/String;
    :goto_4
    new-instance v7, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL"

    const-string v27, "voicemail"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v26, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 381
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "notificationText":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08021b

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "notificationText":Ljava/lang/String;
    goto :goto_4

    .line 432
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    .restart local v5    # "carrierConfig":Landroid/os/PersistableBundle;
    .restart local v6    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v18    # "ringtoneUri":Landroid/net/Uri;
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    .restart local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v22

    .line 433
    .local v22, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    const-string v27, "no_outgoing_calls"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_a

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v26

    if-nez v26, :cond_a

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v26, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    .line 444
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationText":Ljava/lang/String;
    .end local v10    # "notificationTitle":Ljava/lang/String;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "resId":I
    .end local v18    # "ringtoneUri":Landroid/net/Uri;
    .end local v19    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "userHandle":Landroid/os/UserHandle;
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "vmNumber":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v26, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    sget-object v29, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v26 .. v29}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 6
    .param p1, "serviceState"    # I

    .prologue
    const/4 v5, 0x1

    .line 635
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 637
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 641
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 643
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_name_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "networkSelection":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_0
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkSelection()...state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 653
    :cond_1
    if-ne p1, v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 655
    iget-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v3, :cond_2

    .line 656
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 657
    iput-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 670
    .end local v0    # "networkSelection":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "subId":I
    :cond_2
    :goto_0
    return-void

    .line 660
    .restart local v0    # "networkSelection":Ljava/lang/String;
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "subId":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v3, :cond_2

    .line 661
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 662
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0

    .line 666
    .end local v0    # "networkSelection":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkSelection()...state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not updating network due to invalid subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
