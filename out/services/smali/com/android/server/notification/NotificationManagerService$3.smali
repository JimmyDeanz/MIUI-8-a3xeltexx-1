.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, -0x2710

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 882
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 884
    .local v10, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 890
    const-string v0, "NotificationService"

    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$1400(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 974
    :cond_1
    :goto_1
    return-void

    .line 894
    :cond_2
    const-string v0, "NotificationService"

    const-string/jumbo v1, "mPickupPlayer == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 912
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 915
    const-string v0, "NotificationService"

    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v0, :cond_5

    .line 917
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$1700(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 924
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 930
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_1

    .line 919
    :cond_5
    const-string v0, "NotificationService"

    const-string/jumbo v1, "mPickupPlayer == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 932
    :cond_6
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 933
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 935
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v4, v6

    :cond_8
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCallState:Z
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 937
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_1

    .line 938
    :cond_9
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 939
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 940
    .local v7, "userHandle":I
    if-ltz v7, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$900()I

    move-result v1

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1000()I

    move-result v2

    const/4 v8, 0x6

    move v5, v4

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto/16 :goto_1

    .line 944
    .end local v7    # "userHandle":I
    :cond_a
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 946
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 951
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 953
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;Z)V

    goto/16 :goto_1

    .line 955
    :cond_b
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 956
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 958
    .local v11, "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 959
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 961
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 962
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    .line 963
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    goto/16 :goto_1

    .line 964
    .end local v11    # "user":I
    :cond_c
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 965
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 966
    :cond_d
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 967
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 968
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    goto/16 :goto_1

    .line 970
    .end local v11    # "user":I
    :cond_e
    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onThemeChanged()V

    goto/16 :goto_1
.end method
