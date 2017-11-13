.class Lcom/android/incallui/StatusBarNotifier$1;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/StatusBarNotifier$NotificationTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/StatusBarNotifier$1$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$1$1;-><init>(Lcom/android/incallui/StatusBarNotifier$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mHandler:Landroid/os/Handler;

    .line 94
    sget-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/StatusBarNotifier$1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier$1;->fire()V

    return-void
.end method

.method private fire()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "updateInCallNotification: timer fired"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    .line 129
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 132
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 115
    :pswitch_0
    const-string v0, "updateInCallNotification: timer cleared"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    sget-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    return-object v0
.end method

.method public schedule(IJ)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "delay"    # J

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    sget-object v1, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v0, v1, :cond_0

    .line 100
    const-string v0, "updateInCallNotification: timer scheduled"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    sget-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->SCHEDULED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mState:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
