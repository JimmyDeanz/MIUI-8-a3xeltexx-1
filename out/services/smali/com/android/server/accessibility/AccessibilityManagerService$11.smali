.class Lcom/android/server/accessibility/AccessibilityManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1760
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1762
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1902(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 1763
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V
    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 1821
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1765
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V
    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto :goto_0

    .line 1766
    :cond_2
    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1768
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    .line 1769
    .local v7, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v9

    if-nez v9, :cond_3

    .line 1770
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1771
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1775
    :cond_3
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v9

    if-ne v9, v12, :cond_0

    .line 1776
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2302(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 1777
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2202(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto :goto_0

    .line 1781
    .end local v7    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_4
    const-string v9, "ResponseAxT9Info"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1782
    const/4 v3, 0x0

    .line 1783
    .local v3, "isOpenIME":Z
    const/4 v4, 0x0

    .line 1784
    .local v4, "isVisibleIME":Z
    const-string v9, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1785
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1786
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    .line 1787
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 1789
    .local v5, "km":Landroid/app/KeyguardManager;
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-ne v3, v12, :cond_5

    if-nez v4, :cond_5

    .line 1790
    const/4 v3, 0x0

    .line 1793
    :cond_5
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1794
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2202(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 1795
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2302(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    .line 1796
    :cond_6
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v9

    if-eq v9, v3, :cond_0

    .line 1797
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v9, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2302(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    .line 1799
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "isOpenIME":Z
    .end local v4    # "isVisibleIME":Z
    .end local v5    # "km":Landroid/app/KeyguardManager;
    :cond_7
    const-string v9, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1800
    const-string v9, "android.bluetooth.profile.extra.STATE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1801
    .local v6, "state":I
    const-string v9, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1803
    .local v2, "isKeyboard":Z
    if-eqz v2, :cond_0

    .line 1804
    const/4 v9, 0x2

    if-ne v6, v9, :cond_8

    .line 1805
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    .line 1807
    :cond_8
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    .line 1811
    .end local v2    # "isKeyboard":Z
    .end local v6    # "state":I
    :cond_9
    const-string v9, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1812
    const-string/jumbo v9, "setting_name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1813
    .local v8, "which":Ljava/lang/String;
    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1814
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1815
    :try_start_0
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v11, "previous_value"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "new_value"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
