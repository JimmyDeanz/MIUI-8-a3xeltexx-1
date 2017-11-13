.class public Lcom/android/phone/settings/CustomLocationActivity;
.super Lmiui/app/Activity;
.source "CustomLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;,
        Lcom/android/phone/settings/CustomLocationActivity$LocationQuery;,
        Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;,
        Lcom/android/phone/settings/CustomLocationActivity$ItemView;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

.field private mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CustomLocationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CustomLocationActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CustomLocationActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CustomLocationActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 128
    new-instance v0, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;-><init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    .line 129
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/settings/CustomLocationActivity$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->setContentView(I)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 50
    new-instance v0, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    .line 51
    invoke-direct {p0}, Lcom/android/phone/settings/CustomLocationActivity;->startQuery()V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    sget v1, Lmiui/R$attr;->actionBarNewIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xa

    const v2, 0x7f0803c0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action_edit_custom_location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v2, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v2}, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 160
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "number"

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 144
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CustomLocationActivity;->finish()V

    goto :goto_0

    .line 147
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "action_add_custom_location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
