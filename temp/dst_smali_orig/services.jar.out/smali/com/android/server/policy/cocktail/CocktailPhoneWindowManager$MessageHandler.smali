.class Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    const-class v3, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    # setter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v4, v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$002(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "bEnable":Z
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$100(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->requestCocktailRotationAnimation(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->wakupCocktailBarFromWindowManager(ZII)V

    goto :goto_0

    .end local v0    # "bEnable":Z
    .end local v1    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "enabled":Z
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    invoke-static {v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->updateSysfsGripDisableFromWindowManager(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
