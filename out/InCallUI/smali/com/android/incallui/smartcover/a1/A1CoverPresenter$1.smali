.class Lcom/android/incallui/smartcover/a1/A1CoverPresenter$1;
.super Ljava/lang/Object;
.source "A1CoverPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/a1/A1CoverPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/a1/A1CoverPresenter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->updateCallTime()V

    .line 36
    return-void
.end method
