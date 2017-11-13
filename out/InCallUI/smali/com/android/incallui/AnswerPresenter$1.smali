.class Lcom/android/incallui/AnswerPresenter$1;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v1, v1, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v1, v1, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    # getter for: Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z
    invoke-static {v1}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z
    invoke-static {v1, v2}, Lcom/android/incallui/AnswerPresenter;->access$002(Lcom/android/incallui/AnswerPresenter;Z)Z

    goto :goto_0
.end method
