.class Landroid/app/GlobalActionsFrameLayout$2;
.super Ljava/lang/Object;
.source "GlobalActionsFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/GlobalActionsFrameLayout;->showAllView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/GlobalActionsFrameLayout;

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/GlobalActionsFrameLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/GlobalActionsFrameLayout$2;->this$0:Landroid/app/GlobalActionsFrameLayout;

    iput-object p2, p0, Landroid/app/GlobalActionsFrameLayout$2;->val$tempView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/GlobalActionsFrameLayout$2;->val$tempView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
