.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;
.super Landroid/content/BroadcastReceiver;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 673
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 676
    const-string/jumbo v7, "plugged"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 678
    .local v1, "chargePlug":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 679
    .local v4, "now":J
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    const-wide/16 v2, 0x0

    .line 682
    .local v2, "elapsedTimeFromLastCharging":J
    :goto_0
    const/4 v6, 0x0

    .line 684
    .local v6, "startAuth":Z
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2300()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isLedCover()Z
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    if-eq v1, v7, :cond_0

    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    .line 689
    :cond_0
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Power connected, source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    const-wide/32 v8, 0x5265c00

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    .line 691
    const/4 v6, 0x1

    .line 704
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I
    invoke-static {v7, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2502(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 706
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_4

    .line 708
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "It will be verified soon"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_3
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J
    invoke-static {v7, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2202(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J

    .line 710
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v8, 0x3

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I
    invoke-static {v7, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 711
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v7, v8, v10, v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    .line 714
    .end local v1    # "chargePlug":I
    .end local v2    # "elapsedTimeFromLastCharging":J
    .end local v4    # "now":J
    .end local v6    # "startAuth":Z
    :cond_4
    return-void

    .line 679
    .restart local v1    # "chargePlug":I
    .restart local v4    # "now":J
    :cond_5
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J

    move-result-wide v8

    sub-long v2, v4, v8

    goto/16 :goto_0

    .line 693
    .restart local v2    # "elapsedTimeFromLastCharging":J
    .restart local v6    # "startAuth":Z
    :cond_6
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    .line 695
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A wireless power source is disconnected"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_7
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v7, v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v7, v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v7, v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 699
    :cond_8
    const/4 v6, 0x1

    goto :goto_1
.end method
