.class Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;
.super Ljava/lang/Object;
.source "SingleHandAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v1}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-get1(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Lcom/android/server/wm/SingleHandWindow;

    move-result-object v0

    .local v0, "window":Lcom/android/server/wm/SingleHandWindow;
    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v1, v2}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-set0(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/SingleHandWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v1}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-get2(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Lcom/android/server/wm/SingleHandWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v1, v2}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-set1(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/SingleHandWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->dismiss()V

    :cond_1
    return-void
.end method
