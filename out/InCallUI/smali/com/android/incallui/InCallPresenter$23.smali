.class Lcom/android/incallui/InCallPresenter$23;
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
    .line 737
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$23;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$23;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/recorder/CallRecorderTools;->bindService()V

    .line 741
    return-void
.end method
