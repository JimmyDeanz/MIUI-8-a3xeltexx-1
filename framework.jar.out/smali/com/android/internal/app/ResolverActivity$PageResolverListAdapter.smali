.class Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageResolverListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field mKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2890
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    .line 2892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    .line 2893
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const v5, 0x105028c

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2922
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    .line 2923
    .local v2, "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->getFontScale()F
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1900(Lcom/android/internal/app/ResolverActivity;)F

    move-result v1

    .line 2925
    .local v1, "fontScale":F
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2926
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 2928
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isLandscapeMode()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2929
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2931
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1802(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2932
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2933
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1800(Lcom/android/internal/app/ResolverActivity;)F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2934
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2936
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105028d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1802(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2937
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2938
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2949
    :goto_0
    instance-of v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2951
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v6, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v3, v6}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2956
    :goto_1
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 2957
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2958
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 2959
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2960
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2961
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2966
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    .line 2940
    :cond_2
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2942
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1802(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2943
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2944
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1800(Lcom/android/internal/app/ResolverActivity;)F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2945
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2946
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2953
    :cond_3
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2963
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v3, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 2896
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2897
    .local v0, "result":I
    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2883
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2905
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2910
    if-nez p2, :cond_0

    .line 2911
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090151

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2912
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;-><init>(Landroid/view/View;)V

    .line 2913
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2917
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2918
    return-object v1

    .line 2915
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method
