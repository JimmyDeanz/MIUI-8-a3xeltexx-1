.class Lcom/absolute/android/persistservice/q;
.super Lcom/absolute/android/persistservice/ac;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/absolute/android/persistservice/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistservice/q;->b:Lcom/absolute/android/persistservice/l;

    const-string v0, "abt-persistence-watchdog"

    invoke-direct {p0, p2, p3, v0}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    return-object v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/q;->f(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/q;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/q;->e()Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected c()V
    .locals 0

    .prologue
    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    new-instance v1, Lcom/absolute/android/persistservice/q;

    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->b:Lcom/absolute/android/persistservice/l;

    iget-object v3, p0, Lcom/absolute/android/persistservice/q;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/v;

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/q;-><init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/q;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/q;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
