.class Lcom/android/server/policy/sec/MultitapKeyManager$2;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$100(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$102(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$200(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$202(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    :cond_1
    return-void
.end method
