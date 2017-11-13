.class final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 1077
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1078
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 1081
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: entry what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1092
    :goto_0
    return-void

    .line 1084
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangeVisibleEdgeService(Z)V
    invoke-static {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1087
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangedResumePackage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
