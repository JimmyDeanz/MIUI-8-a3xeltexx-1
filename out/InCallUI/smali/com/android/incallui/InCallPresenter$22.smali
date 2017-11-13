.class Lcom/android/incallui/InCallPresenter$22;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->skipToLivetalkPage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$22;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$22;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 670
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$22;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V

    .line 671
    return-void
.end method
