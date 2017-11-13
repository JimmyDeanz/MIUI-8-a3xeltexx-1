.class public Lcom/movial/ipphone/WifiCallSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiCallSwitchPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallSwitchPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$1;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$2;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference$4;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/movial/ipphone/IPManager;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    const-string v0, "Wi-Fi Calling"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPManager;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .param p1, "register"    # Z

    .prologue
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/movial/ipphone/WifiCallSwitchPreference$3;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Z)V

    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x102046a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "checkableView":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->unregisterObserver()V

    return-void
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    invoke-static {v0, v1, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    const-string v0, "WifiCallSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume(), mCellOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerObserver()V

    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
