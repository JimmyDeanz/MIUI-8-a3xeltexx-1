.class Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SimCardPickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final SMALL_SIM_SLOT_ICON:[I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/incallui/view/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SimCardPickDialog;Landroid/view/LayoutInflater;)V
    .locals 1
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mOptionList:Ljava/util/List;

    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->SMALL_SIM_SLOT_ICON:[I

    .line 288
    iput-object p2, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 289
    return-void

    .line 283
    nop

    :array_0
    .array-data 4
        0x7f0200f0
        0x7f0200f1
    .end array-data
.end method


# virtual methods
.method public add(Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mOptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mOptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mOptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getItem(I)Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 318
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionWithTypeAndId(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mOptionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    .line 294
    .local v2, "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    invoke-virtual {v2}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 299
    .end local v0    # "i":I
    .end local v2    # "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    :goto_1
    return v0

    .line 297
    .restart local v0    # "i":I
    .restart local v2    # "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 298
    goto :goto_0

    .line 299
    .end local v2    # "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0xb

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 324
    if-nez p2, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030024

    invoke-virtual {v4, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 326
    new-instance v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;-><init>(Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;Lcom/android/incallui/view/SimCardPickDialog$1;)V

    .line 327
    .local v3, "viewHolder":Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;
    const v4, 0x7f0900d2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 328
    const v4, 0x7f0900d1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 329
    const v4, 0x7f0900d4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    .line 330
    const v4, 0x7f0900d5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    .line 331
    const v4, 0x7f0900d3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mMarkSep:Landroid/widget/ImageView;

    .line 332
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->getItem(I)Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;

    move-result-object v1

    .line 338
    .local v1, "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getType()I

    move-result v2

    .line 339
    .local v2, "type":I
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v7, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    if-ne v2, v8, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v7, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mMarkSep:Landroid/widget/ImageView;

    if-ne v2, v8, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->setEnabled(Z)V

    .line 347
    if-ne v2, v8, :cond_0

    .line 348
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->SMALL_SIM_SLOT_ICON:[I

    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getId()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    # getter for: Lcom/android/incallui/view/SimCardPickDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/incallui/view/SimCardPickDialog;->access$500(Lcom/android/incallui/view/SimCardPickDialog;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0083

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->getLastTime()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "extra":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    # getter for: Lcom/android/incallui/view/SimCardPickDialog;->mHighlightTextColor:I
    invoke-static {v6}, Lcom/android/incallui/view/SimCardPickDialog;->access$600(Lcom/android/incallui/view/SimCardPickDialog;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    :goto_3
    return-object p2

    .line 334
    .end local v1    # "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    .end local v2    # "type":I
    .end local v3    # "viewHolder":Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;
    goto/16 :goto_0

    .restart local v1    # "info":Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
    .restart local v2    # "type":I
    :cond_2
    move v4, v6

    .line 341
    goto :goto_1

    :cond_3
    move v4, v6

    .line 342
    goto :goto_2

    .line 359
    :cond_4
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    const v5, 0x7f0c0086

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 361
    iget-object v4, v3, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    # getter for: Lcom/android/incallui/view/SimCardPickDialog;->mDisableTextColor:I
    invoke-static {v5}, Lcom/android/incallui/view/SimCardPickDialog;->access$700(Lcom/android/incallui/view/SimCardPickDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method
