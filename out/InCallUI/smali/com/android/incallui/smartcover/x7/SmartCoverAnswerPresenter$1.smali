.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$1;
.super Ljava/lang/Object;
.source "SmartCoverAnswerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$1;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$1;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateCallTime()V

    .line 41
    return-void
.end method
