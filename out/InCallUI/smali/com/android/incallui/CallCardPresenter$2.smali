.class Lcom/android/incallui/CallCardPresenter$2;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateDoublePrimaryCallTime()V

    .line 109
    return-void
.end method
