.class Landroid/telecom/Call$3;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$children:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Landroid/telecom/Call$3;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$3;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$3;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$3;->val$children:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/telecom/Call$3;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$3;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$3;->val$children:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    .line 1155
    return-void
.end method
