.class Lcom/absolute/android/persistservice/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/l;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p3, v0

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    invoke-static {v0}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/p;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/absolute/android/persistservice/p;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    iget-object v2, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
