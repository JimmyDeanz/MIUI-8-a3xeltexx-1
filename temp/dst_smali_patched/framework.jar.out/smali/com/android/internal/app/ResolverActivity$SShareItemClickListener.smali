.class Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SShareItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->isEasySignUpCertificated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/share/SShareSimpleSharing;->recentHistoryGridItemClick(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/share/SShareSimpleSharing;->recentHistoryDefaultGridItemClick(I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
