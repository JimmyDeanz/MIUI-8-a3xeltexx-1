.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$TouchListener;,
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# static fields
.field private static final HUGE_FONT_FIRST:I = 0x7

.field private static final HUGE_FONT_FOURTH:I = 0xa

.field private static final HUGE_FONT_SECOND:I = 0x8

.field private static final HUGE_FONT_THIRD:I = 0x9

.field private static final INTENT_EXTRA_HUGE_FONT:Ljava/lang/String; = "large_font"

.field private static final INTENT_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mIsChangedPressedItem:Z

.field private mIsCheckedSwitch:Z

.field private mIsNeedClick:Z

.field private mIsPassedActionMove:Z

.field private mIsRTL:Z

.field private mIsUsingTouchListener:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewForTouch:Landroid/widget/ListView;

.field private mLocationTouchDownX:F

.field private mMovedDeltaX:F

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mScaledTouchSlop:I

.field private final mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

.field private pressedPostion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 133
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput v1, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    .line 109
    iput v1, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    .line 111
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    .line 112
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    .line 113
    const/16 v0, 0x40

    iput v0, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    .line 114
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    .line 115
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    .line 116
    const-string v0, "PreferenceScreen"

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/preference/PreferenceScreen$TouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/PreferenceScreen$TouchListener;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen$1;)V

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

    .line 118
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 119
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    .line 136
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Landroid/preference/PreferenceScreen;->setTitleFontSize()V

    .line 139
    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/preference/PreferenceScreen;->setTitleFontSize()V

    return-void
.end method

.method static synthetic access$1002(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget v0, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    return v0
.end method

.method static synthetic access$1102(Landroid/preference/PreferenceScreen;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    return p1
.end method

.method static synthetic access$1202(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    return p1
.end method

.method static synthetic access$202(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    return p1
.end method

.method static synthetic access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceScreen;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    return v0
.end method

.method static synthetic access$402(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    return p1
.end method

.method static synthetic access$500(Landroid/preference/PreferenceScreen;)F
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget v0, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    return v0
.end method

.method static synthetic access$502(Landroid/preference/PreferenceScreen;F)F
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    return p1
.end method

.method static synthetic access$600(Landroid/preference/PreferenceScreen;)F
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget v0, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    return v0
.end method

.method static synthetic access$602(Landroid/preference/PreferenceScreen;F)F
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    return p1
.end method

.method static synthetic access$700(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget v0, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$802(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    return p1
.end method

.method static synthetic access$900(Landroid/preference/PreferenceScreen;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    return v0
.end method

.method private setTitleFontSize()V
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 444
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mLargerFontLevel:I

    .line 445
    iget v1, p0, Landroid/preference/PreferenceScreen;->mLargerFontLevel:I

    packed-switch v1, :pswitch_data_0

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    .line 466
    :goto_0
    return-void

    .line 447
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 451
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 455
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 459
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    :cond_0
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 241
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900d4

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 244
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 248
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 249
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 254
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 255
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 263
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 264
    return-void

    .line 252
    :cond_2
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 181
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    .local v1, "context":Landroid/content/Context;
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsDeviceDefault:Z

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->hasRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    .line 189
    sget-boolean v3, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 190
    new-instance v3, Landroid/preference/PreferenceScreen$1;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceScreen$1;-><init>(Landroid/preference/PreferenceScreen;)V

    iput-object v3, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v2, "theFilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    .end local v2    # "theFilter":Landroid/content/IntentFilter;
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    .line 210
    :cond_2
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_3

    .line 211
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 212
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    iget v3, v0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 213
    invoke-virtual {p1}, Landroid/widget/ListView;->isPaddingRelative()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v3

    iget v4, v0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 220
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 222
    return-void

    .line 187
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    .restart local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    :cond_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 268
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 269
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 282
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 283
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "item":Ljava/lang/Object;
    instance-of v3, v0, Landroid/preference/Preference;

    if-nez v3, :cond_1

    .line 300
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 288
    check-cast v1, Landroid/preference/Preference;

    .line 290
    .local v1, "preference":Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 291
    .local v2, "tmpSwitch":Landroid/widget/Switch;
    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-object v2, v3, Landroid/preference/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 293
    :cond_2
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    if-eqz v3, :cond_5

    instance-of v3, v2, Landroid/widget/Switch;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    if-eqz v3, :cond_5

    .line 294
    :cond_4
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 295
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    goto :goto_0

    .line 297
    :cond_5
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 298
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 329
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 330
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 331
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 310
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 311
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 318
    :goto_0
    return-object v1

    .line 315
    :cond_1
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 316
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 317
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method unregisterReceiver()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    :cond_0
    return-void
.end method
