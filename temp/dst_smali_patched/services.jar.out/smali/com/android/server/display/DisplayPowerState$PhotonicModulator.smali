.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingRequestDisplayState:Z

.field private mPendingState:I

.field private mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    const-string v0, "PhotonicModulator"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/DisplayBlanker;->registerRequestDisplayStateDoneListener(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z

    return p1
.end method

.method private getFinalMarkerPosition(I)I
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    const/16 v1, 0xff

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget v2, v2, Lcom/android/server/display/DisplayPowerState;->mFinalBrightnessDiff:I

    sub-int v0, p1, v2

    .local v0, "finalMarkerPosition":I
    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "finalMarkerPosition":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "finalMarkerPosition":I
    :cond_1
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DisplayPowerState"

    const-string v2, "Faild to set brightness"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v7, "LCD_Task is start"

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .local v2, "state":I
    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    if-eq v2, v7, :cond_3

    move v3, v4

    .local v3, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .local v0, "backlight":I
    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v0, v7, :cond_4

    move v1, v4

    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v3, :cond_1

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    :cond_1
    if-nez v1, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v3, :cond_5

    if-nez v1, :cond_5

    :try_start_1
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "state":I
    .end local v3    # "stateChanged":Z
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2    # "state":I
    :cond_3
    move v3, v5

    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v3    # "stateChanged":Z
    :cond_4
    move v1, v5

    goto :goto_2

    .restart local v1    # "backlightChanged":Z
    :cond_5
    if-eqz v3, :cond_6

    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z

    :cond_6
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setBrightness(I)V

    :cond_8
    # getter for: Lcom/android/server/display/DisplayPowerState;->mGlobalScreenStateHint:I
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$1600()I

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6, v2, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    :goto_5
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v6, v6, Lcom/android/server/display/DisplayPowerState;->mUseMarkTracker:Z

    if-eqz v6, :cond_0

    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tracking!!: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1700(Lcom/android/server/display/DisplayPowerState;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "brightness_pms_marker_screen"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight (by ColorFade)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # setter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6, v5}, Lcom/android/server/display/DisplayPowerState;->access$1402(Lcom/android/server/display/DisplayPowerState;Z)Z

    goto/16 :goto_4

    :cond_a
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    invoke-interface {v6, v7, v2, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(III)V

    goto/16 :goto_5

    :catch_0
    move-exception v7

    goto/16 :goto_3
.end method

.method public setState(II)Z
    .locals 9
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    if-eq p1, v6, :cond_4

    move v2, v3

    .local v2, "stateChanged":Z
    :goto_0
    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v6, :cond_5

    move v0, v3

    .local v0, "backlightChanged":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting new screen state: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v6, :cond_7

    :cond_2
    move v1, v3

    .local v1, "changeInProgress":Z
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-nez v1, :cond_3

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .end local v1    # "changeInProgress":Z
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z

    if-nez v6, :cond_8

    :goto_4
    monitor-exit v5

    return v3

    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :cond_4
    move v2, v4

    goto :goto_0

    .restart local v2    # "stateChanged":Z
    :cond_5
    move v0, v4

    goto :goto_1

    .restart local v0    # "backlightChanged":Z
    :cond_6
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting new screen state: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight (By colorFade)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "backlightChanged":Z
    .restart local v2    # "stateChanged":Z
    :cond_7
    move v1, v4

    goto :goto_3

    :cond_8
    move v3, v4

    goto :goto_4
.end method
