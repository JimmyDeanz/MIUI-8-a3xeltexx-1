.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 347
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 350
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 1
    .param p0, "x0"    # Landroid/view/MenuInflater$MenuState;

    .prologue
    .line 288
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 437
    if-nez p1, :cond_0

    .line 440
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 517
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 518
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 519
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 520
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 524
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 521
    :catch_0
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 454
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_0

    .line 455
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 458
    :cond_0
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 459
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 463
    :cond_2
    new-instance v3, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # invokes: Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;
    invoke-static {v5}, Landroid/view/MenuInflater;->access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 467
    :cond_3
    instance-of v3, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 468
    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 469
    .local v2, "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_4

    .line 470
    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 474
    .end local v2    # "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4
    const/4 v1, 0x0

    .line 475
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 476
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    # getter for: Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Landroid/view/MenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v5}, Landroid/view/MenuInflater;->access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 478
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 479
    const/4 v1, 0x1

    .line 481
    .end local v0    # "actionView":Landroid/view/View;
    :cond_5
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_6

    .line 482
    if-nez v1, :cond_8

    .line 483
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 484
    const/4 v1, 0x1

    .line 490
    :cond_6
    :goto_1
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v3, :cond_7

    .line 491
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 493
    :cond_7
    return-void

    .line 486
    :cond_8
    const-string v3, "MenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addItem()Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 497
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 498
    .local v0, "item":Landroid/view/MenuItem;
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 499
    return-object v0
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 503
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 504
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 505
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 506
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 369
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 370
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 371
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 372
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 373
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 374
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 383
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_0

    .line 387
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->addMenuItemTitle(Landroid/content/res/TypedArray;)V

    .line 390
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 391
    const/4 v4, 0x5

    iget v7, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 392
    .local v1, "category":I
    const/4 v4, 0x6

    iget v7, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 393
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 394
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 395
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 396
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 397
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 399
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    .line 401
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 409
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    .line 410
    const/4 v4, 0x4

    iget-boolean v7, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 411
    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 412
    const/16 v4, 0xd

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    .line 413
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 414
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 415
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 416
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 418
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_3

    move v2, v5

    .line 419
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_4

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 420
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    # getter for: Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Landroid/view/MenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    # getter for: Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
    invoke-static {v7}, Landroid/view/MenuInflater;->access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 431
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    iput-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 434
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_1
    move v4, v6

    .line 403
    goto :goto_0

    .line 407
    :cond_2
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_1

    :cond_3
    move v2, v6

    .line 418
    goto :goto_2

    .line 424
    .restart local v2    # "hasActionProvider":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 425
    const-string v4, "MenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 355
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 356
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 357
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 358
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 359
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 360
    return-void
.end method
