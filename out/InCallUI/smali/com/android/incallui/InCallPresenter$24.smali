.class Lcom/android/incallui/InCallPresenter$24;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V
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
    .line 788
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$24;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$24;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$24;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$600(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 792
    return-void
.end method
