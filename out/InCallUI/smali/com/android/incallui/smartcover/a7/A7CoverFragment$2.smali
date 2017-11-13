.class Lcom/android/incallui/smartcover/a7/A7CoverFragment$2;
.super Ljava/lang/Object;
.source "A7CoverFragment.java"

# interfaces
.implements Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/a7/A7CoverFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/a7/A7CoverFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment$2;->this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndCallSlide()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment$2;->this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->endCallSlided()V

    .line 70
    return-void
.end method
