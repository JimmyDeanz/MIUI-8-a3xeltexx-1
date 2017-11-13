.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3797
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3794
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 3795
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    .line 3804
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .line 3808
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    .line 3798
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    .line 3799
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3801
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3802
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3788
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3788
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3829
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    if-nez v1, :cond_0

    .line 3830
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 3831
    const/4 v0, 0x0

    .line 3838
    :cond_0
    :goto_0
    return v0

    .line 3834
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 3835
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    goto :goto_0
.end method

.method private isDeniedActivity()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 3842
    iget-object v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 3844
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-nez v5, :cond_1

    .line 3856
    :cond_0
    :goto_0
    return v6

    .line 3848
    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 3850
    .local v1, "cmpName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 3851
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3850
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3856
    .end local v2    # "entry":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isLaunchable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3860
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3886
    :goto_0
    return v0

    .line 3864
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    if-nez v1, :cond_1

    .line 3865
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: feature is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v1, :cond_2

    .line 3867
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: mBootCompleted=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3874
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3875
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3876
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3877
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: device is not provisioned yet!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3878
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3879
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: keyguard is on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3880
    :cond_5
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3881
    :cond_6
    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLaunchable: isFactoryMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutomaticTestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3883
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private launch()Z
    .locals 2

    .prologue
    .line 3890
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3891
    const/4 v0, 0x0

    .line 3899
    :goto_0
    return v0

    .line 3894
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3895
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3896
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3899
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    goto :goto_0
.end method
