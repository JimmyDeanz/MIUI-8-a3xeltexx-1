.class public Lcom/android/phone/settings/ADNList;
.super Lmiui/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field protected static final COLUMN_NAMES:[Ljava/lang/String;

.field protected static final VIEW_NAMES:[I


# instance fields
.field private mActionBar:Lmiui/app/ActionBar;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/settings/ADNList$QueryHandler;

.field protected mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/settings/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/ADNList;->VIEW_NAMES:[I

    return-void

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/ADNList;->mSlotId:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/ADNList;->mInitialSelection:I

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/ADNList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/ADNList;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/settings/ADNList;->setAdapter()V

    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mQueryHandler:Lcom/android/phone/settings/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/settings/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/settings/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ADNList;->displayProgress(Z)V

    .line 131
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 165
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    :goto_0
    iget v0, p0, Lcom/android/phone/settings/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/settings/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/android/phone/settings/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ADNList;->setSelection(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 175
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected displayProgress(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/phone/settings/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0801e6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setProgressBarIndeterminateVisibility(Z)V

    .line 190
    return-void

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/android/phone/settings/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801e9

    goto :goto_0

    :cond_1
    const v0, 0x7f0803f4

    goto :goto_0
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 178
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/settings/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/settings/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/ADNList;->mSlotId:I

    .line 96
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ADNList;->setContentView(I)V

    .line 97
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 98
    new-instance v0, Lcom/android/phone/settings/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/ADNList$QueryHandler;-><init>(Lcom/android/phone/settings/ADNList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/settings/ADNList;->mQueryHandler:Lcom/android/phone/settings/ADNList$QueryHandler;

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/ADNList;->mActionBar:Lmiui/app/ActionBar;

    .line 101
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mActionBar:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mActionBar:Lmiui/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lmiui/app/ListActivity;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/phone/settings/ADNList;->query()V

    .line 110
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lmiui/app/ListActivity;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/settings/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 118
    :cond_0
    return-void
.end method

.method protected reQuery()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/phone/settings/ADNList;->query()V

    .line 135
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/phone/settings/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 252
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v1, 0x7f0803ef

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ADNList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 254
    const-string v1, "OK"

    new-instance v2, Lcom/android/phone/settings/ADNList$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/ADNList$1;-><init>(Lcom/android/phone/settings/ADNList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 260
    return-void
.end method
