.class Landroid/app/ActivityOptions$2$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$2;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityOptions$2;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions$2;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityOptions$2$1;->this$1:Landroid/app/ActivityOptions$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ActivityOptions$2$1;->this$1:Landroid/app/ActivityOptions$2;

    iget-object v0, v0, Landroid/app/ActivityOptions$2;->val$finalListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnTransitionStartedListener;->onTransitionStarted()V

    return-void
.end method
