.class Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;
.super Ljava/lang/Object;
.source "CaCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->terminateManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 117
    :cond_0
    return-void
.end method
