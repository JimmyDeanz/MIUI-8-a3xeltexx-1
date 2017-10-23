.class Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAccessBrocastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 572
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 574
    :cond_0
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 576
    const/4 v9, 0x1

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isMagnifierEnabled:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$602(Z)Z

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.settings.action.directaccess.CLOSE_DIALOG"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v5, "mDirecAccessiIntent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 620
    .end local v5    # "mDirecAccessiIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 579
    :cond_3
    const/4 v9, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isMagnifierEnabled:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$602(Z)Z

    goto :goto_0

    .line 586
    :cond_4
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 587
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind_test"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 591
    .local v8, "testCheck":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 593
    .local v3, "isSetting":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind_cvdseverity"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 596
    .local v4, "mCVDSeverity":F
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind_user_parameter"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .line 598
    .local v6, "mUserParameter":F
    const-string/jumbo v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 599
    .local v7, "powerManager":Landroid/os/PowerManager;
    const v9, 0x3f19999a    # 0.6f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    const-string/jumbo v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->setColorWeaknessMode(ZLandroid/os/IBinder;)V

    .line 601
    const-string v9, "accessibility"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 602
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    .line 603
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v6}, Landroid/view/accessibility/AccessibilityManager;->setColorBlind(ZF)Z

    goto :goto_1

    .line 599
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 607
    .end local v3    # "isSetting":I
    .end local v4    # "mCVDSeverity":F
    .end local v6    # "mUserParameter":F
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    .end local v8    # "testCheck":I
    :cond_6
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 608
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isMagnifierEnabled:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 609
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    :try_start_0
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400()Landroid/hardware/display/IDisplayManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 612
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 616
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method
