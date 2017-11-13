.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p2, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerService$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public updateCocktailBarStateFromWindowManager(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateCocktailBarStateFromWindowManagerInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V

    .line 113
    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateSysfsGripDisableFromWindowManagerInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    .line 108
    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->wakupCocktailBarFromWindowManagerInternal(ZII)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V

    .line 103
    return-void
.end method
