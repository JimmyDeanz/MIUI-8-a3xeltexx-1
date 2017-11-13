.class Lcom/android/incallui/InCallPresenter$26;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$26;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$26;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$26;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$26;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$26;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$600(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 1296
    :cond_0
    return-void
.end method
