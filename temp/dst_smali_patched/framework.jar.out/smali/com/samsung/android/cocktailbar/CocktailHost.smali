.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;,
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_COCKTAIL_CLOSE_CONTEXTUAL:I = 0x5

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE:I = 0x2

.field static final HANDLE_COCKTAIL_REMOVE:I = 0x3

.field static final HANDLE_COCKTAIL_SEND_EXTRA_DATA:I = 0xc

.field static final HANDLE_COCKTAIL_SHOW:I = 0x4

.field static final HANDLE_COCKTAIL_SWITCH_DEFAULT:I = 0xa

.field static final HANDLE_COCKTAIL_TICKER_DISABLE:I = 0x9

.field static final HANDLE_COCKTAIL_UPDATE:I = 0x1

.field static final HANDLE_COCKTAIL_UPDATE_EXTRA:I = 0x8

.field static final HANDLE_COCKTAIL_UPDATE_TOOL_LAUNCHER:I = 0x7

.field static final HANDLE_COCKTAIL_VIEW_DATA_CHANGED:I = 0x6

.field static final HANDLE_NOTIFY_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x66

.field static final HANDLE_NOTIFY_KEYGUARD_STATE:I = 0x64

.field static final HANDLE_NOTIFY_WAKEUP_STATE:I = 0x65

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field private final mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    invoke-direct {p0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyWakeUpState(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setDisableTickerView(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->changeVisibleEdgeService(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->showCocktail(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyKeyguardState(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->switchDefaultCocktail(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V

    return-void
.end method

.method private bindService(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private changeVisibleEdgeService(II)V
    .locals 2
    .param p1, "visible"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onChangeVisibleEdgeService(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeContextualCocktail(III)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseContextualCocktail(III)V

    return-void
.end method

.method private notifyKeyguardState(II)V
    .locals 2
    .param p1, "enable"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyKeyguardState(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWakeUpState(III)V
    .locals 2
    .param p1, "bEnable"    # I
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyWakeUpModeState(ZII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method private removeCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    return-void
.end method

.method private sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V

    return-void
.end method

.method private setDisableTickerView(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetDisableTickerView(II)V

    return-void
.end method

.method private showCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onShowCocktail(II)V

    return-void
.end method

.method private switchDefaultCocktail(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSwitchDefaultCocktail(I)V

    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method private updateToolLauncher(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    return-void
.end method

.method private viewDataChanged(III)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    return-void
.end method


# virtual methods
.method public startListening()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startListening(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->stopListening(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
