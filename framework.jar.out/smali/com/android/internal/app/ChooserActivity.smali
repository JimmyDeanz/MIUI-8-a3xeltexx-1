.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;,
        Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$RowScale;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    }
.end annotation


# static fields
.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final EXTRA_CHOOSER_DROPLIST:Ljava/lang/String; = "extra_chooser_droplist"

.field private static final OTHER_TARGET_PANEL_INDEX:I = 0x1

.field private static final PANEL_KEY:Ljava/lang/String; = "panelkey_%1$d_%2$d"

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final SERVICE_TARGET_PANEL_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mOtherTargetListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherTargetView:Landroid/widget/AbsListView;

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private mSShareChooserAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTargetListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTargetView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    .line 1853
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AdapterView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;
    .param p1, "x1"    # Landroid/widget/AdapterView;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->convertSplitPanelPosition(Landroid/widget/AdapterView;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 553
    :goto_0
    return-object v0

    .line 544
    :cond_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 549
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0

    .line 551
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method private convertSplitPanelPosition(Landroid/widget/AdapterView;I)I
    .locals 7
    .param p1, "view"    # Landroid/widget/AdapterView;
    .param p2, "pos"    # I

    .prologue
    .line 1830
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1831
    const-string v0, ""

    .line 1835
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-ne p1, v3, :cond_1

    .line 1836
    const/4 v1, 0x0

    .line 1837
    .local v1, "panelIndex":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    .line 1843
    .local v2, "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const-string/jumbo v3, "panelkey_%1$d_%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1844
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1845
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1850
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "panelIndex":I
    .end local v2    # "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return p2

    .line 1839
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 1840
    .restart local v1    # "panelIndex":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    .restart local v2    # "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    :cond_1
    return-void
.end method


# virtual methods
.method buildUpOtherTargetAdapter()V
    .locals 15

    .prologue
    .line 1609
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v8

    .line 1610
    .local v8, "serviceTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1611
    .local v0, "callerTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v9

    .line 1615
    .local v9, "standardTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x1

    new-instance v13, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-direct {v13, p0, p0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1616
    add-int v4, v0, v9

    .line 1617
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1618
    const/4 v5, 0x0

    .line 1619
    .local v5, "offset":I
    move v2, v1

    .line 1622
    .local v2, "itemIndex":I
    const-string/jumbo v11, "panelkey_%1$d_%2$d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_1

    .line 1625
    const/4 v5, 0x0

    .line 1630
    :goto_1
    add-int v6, v1, v5

    .line 1631
    .local v6, "origPosition":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    .line 1633
    .local v10, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1634
    .local v7, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v7, :cond_0

    .line 1635
    iget-object v11, v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    iget-object v11, v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    :cond_0
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    .end local v6    # "origPosition":I
    .end local v7    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v10    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_1
    move v5, v8

    goto :goto_1

    .line 1641
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_2
    return-void
.end method

.method buildUpPagerAdapter()V
    .locals 18

    .prologue
    .line 1786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCount()I

    move-result v3

    .line 1787
    .local v3, "dataCnt":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v11

    .line 1788
    .local v11, "serviceTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 1789
    .local v2, "callerTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v12

    .line 1793
    .local v12, "standardTargetCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1794
    const/4 v7, 0x0

    .line 1795
    .local v7, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    div-int v10, v4, v14

    .line 1796
    .local v10, "pageIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    rem-int v5, v4, v14

    .line 1798
    .local v5, "itemIndex":I
    if-nez v5, :cond_0

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1808
    .local v6, "key":Ljava/lang/String;
    if-ge v4, v11, :cond_2

    .line 1809
    move v7, v2

    .line 1816
    :goto_1
    add-int v8, v4, v7

    .line 1817
    .local v8, "origPosition":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14, v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 1819
    .local v13, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1820
    .local v9, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v9, :cond_1

    .line 1821
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1822
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1825
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1810
    .end local v8    # "origPosition":I
    .end local v9    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v13    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    add-int v14, v11, v2

    if-ge v4, v14, :cond_3

    .line 1811
    sub-int/2addr v7, v11

    goto :goto_1

    .line 1813
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1827
    .end local v5    # "itemIndex":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v10    # "pageIndex":I
    :cond_4
    return-void
.end method

.method buildUpServiceTargetAdapter()V
    .locals 15

    .prologue
    .line 1569
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v7

    .line 1570
    .local v7, "serviceTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1572
    .local v0, "callerTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-eqz v11, :cond_2

    if-lez v7, :cond_2

    .line 1573
    const v11, 0x10204df

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1574
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 1575
    const v11, 0x1020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1576
    .local v9, "text":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 1577
    const v11, 0x10408de

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1579
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    .end local v9    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1585
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x0

    new-instance v13, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-direct {v13, p0, p0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 1587
    const/4 v4, 0x0

    .line 1588
    .local v4, "offset":I
    move v2, v1

    .line 1591
    .local v2, "itemIndex":I
    const-string/jumbo v11, "panelkey_%1$d_%2$d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, "key":Ljava/lang/String;
    move v4, v0

    .line 1595
    add-int v5, v1, v4

    .line 1596
    .local v5, "origPosition":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v8

    .line 1598
    .local v8, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1599
    .local v6, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v6, :cond_3

    .line 1600
    iget-object v11, v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    iget-object v11, v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    :cond_3
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1606
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "origPosition":I
    .end local v6    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v8    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_4
    return-void
.end method

.method buildUpSplitPagerAdapter()V
    .locals 18

    .prologue
    .line 1748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v11

    .line 1749
    .local v11, "serviceTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 1750
    .local v2, "callerTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v12

    .line 1752
    .local v12, "standardTargetCount":I
    add-int v6, v2, v12

    .line 1754
    .local v6, "nCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 1755
    const/4 v7, 0x0

    .line 1756
    .local v7, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    div-int v10, v3, v14

    .line 1757
    .local v10, "pageIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    rem-int v4, v3, v14

    .line 1759
    .local v4, "itemIndex":I
    if-nez v4, :cond_0

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1766
    .local v5, "key":Ljava/lang/String;
    if-ge v3, v2, :cond_2

    .line 1767
    const/4 v7, 0x0

    .line 1772
    :goto_1
    add-int v8, v3, v7

    .line 1773
    .local v8, "origPosition":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14, v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 1775
    .local v13, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1776
    .local v9, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v9, :cond_1

    .line 1777
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1769
    .end local v8    # "origPosition":I
    .end local v9    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v13    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    move v7, v11

    goto :goto_1

    .line 1783
    .end local v4    # "itemIndex":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v10    # "pageIndex":I
    :cond_3
    return-void
.end method

.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    .line 601
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v3

    .line 602
    .local v3, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 603
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 604
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 605
    const/4 v4, 0x1

    .line 608
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 602
    .restart local v2    # "targetIntent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x1

    .line 645
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 650
    .local v0, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direct_share"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    .line 654
    :cond_0
    return-object v0
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v7, 0x0

    .line 612
    if-nez p2, :cond_1

    .line 639
    :cond_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 617
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 618
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/chooser/ChooserTarget;

    .line 619
    .local v5, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 620
    .local v6, "targetName":Landroid/content/ComponentName;
    if-eqz p1, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 617
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 627
    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 628
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 635
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "remove":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 636
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "remove":Z
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    move v4, v7

    .line 628
    goto :goto_2

    .line 629
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ChooserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " returned by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " component not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v4, 0x1

    .restart local v4    # "remove":Z
    goto :goto_2
.end method

.method getLayoutResource()I
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSShareCommon()Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSShareCommon()Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    const v0, 0x1090152

    .line 371
    :goto_0
    return v0

    .line 367
    :cond_0
    const v0, 0x1090155

    goto :goto_0

    .line 371
    :cond_1
    const v0, 0x1090043

    goto :goto_0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 292
    move-object v1, p2

    .line 293
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 296
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 297
    .restart local v1    # "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 300
    .end local v0    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 305
    :cond_2
    return-object v1
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 312
    .local v7, "target":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 315
    .local v3, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 316
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v7    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 317
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 167
    .local v15, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .line 168
    .local v18, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v18

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 169
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target is not an intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 171
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    :goto_0
    return-void

    :cond_0
    move-object/from16 v3, v18

    .line 174
    check-cast v3, Landroid/content/Intent;

    .line 175
    .local v3, "target":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 178
    :cond_1
    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v19

    .line 180
    .local v19, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v19, :cond_8

    .line 181
    if-nez v3, :cond_2

    const/16 v16, 0x1

    .line 182
    .local v16, "offset":Z
    :goto_1
    if-eqz v16, :cond_3

    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_2
    new-array v10, v1, [Landroid/content/Intent;

    .line 184
    .local v10, "additionalTargets":[Landroid/content/Intent;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v13, v1, :cond_7

    .line 185
    aget-object v1, v19, v13

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 186
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v19, v13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 189
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 181
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v13    # "i":I
    .end local v16    # "offset":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 182
    .restart local v16    # "offset":Z
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    goto :goto_2

    .line 192
    .restart local v10    # "additionalTargets":[Landroid/content/Intent;
    .restart local v13    # "i":I
    :cond_4
    aget-object v9, v19, v13

    check-cast v9, Landroid/content/Intent;

    .line 193
    .local v9, "additionalTarget":Landroid/content/Intent;
    if-nez v13, :cond_5

    if-nez v3, :cond_5

    .line 194
    move-object v3, v9

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 184
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 197
    :cond_5
    if-eqz v16, :cond_6

    add-int/lit8 v1, v13, -0x1

    :goto_5
    aput-object v9, v10, v1

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_6
    move v1, v13

    .line 197
    goto :goto_5

    .line 201
    .end local v9    # "additionalTarget":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 204
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v13    # "i":I
    .end local v16    # "offset":Z
    :cond_8
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 205
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 206
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 207
    .local v5, "defaultTitleRes":I
    if-nez v4, :cond_9

    .line 208
    const v5, 0x104036c

    .line 210
    :cond_9
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v17

    .line 211
    .local v17, "pa":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 212
    .local v6, "initialIntents":[Landroid/content/Intent;
    if-eqz v17, :cond_b

    .line 213
    move-object/from16 v0, v17

    array-length v1, v0

    new-array v6, v1, [Landroid/content/Intent;

    .line 214
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_b

    .line 215
    aget-object v1, v17, v13

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_a

    .line 216
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initial intent #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v17, v13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 218
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 221
    :cond_a
    aget-object v14, v17, v13

    check-cast v14, Landroid/content/Intent;

    .line 222
    .local v14, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 223
    aput-object v14, v6, v13

    .line 214
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 228
    .end local v13    # "i":I
    .end local v14    # "in":Landroid/content/Intent;
    :cond_b
    const-string v1, "extra_chooser_droplist"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 229
    .local v11, "dropComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v11, :cond_d

    .line 230
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_d

    .line 231
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-nez v1, :cond_c

    .line 230
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 235
    :cond_c
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setDropComponent(Landroid/content/ComponentName;)V

    goto :goto_8

    .line 243
    .end local v13    # "i":I
    :cond_d
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_9
    const-string v1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 250
    const-string v1, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 252
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 253
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 256
    const/16 v1, 0xd6

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v12

    .line 245
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReferrerFillInIntent is null!!!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 264
    .local v2, "mContext":Landroid/content/Context;
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 266
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 267
    .local v1, "currUser":I
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 268
    .local v0, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    const-string/jumbo v5, "persona"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 270
    .local v3, "pm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 274
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    const/4 v3, 0x1

    .line 327
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, v1

    .line 328
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    check-cast p2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSShareCommon()Lcom/samsung/android/share/SShareCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->isDeviceDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSShareCommon()Lcom/samsung/android/share/SShareCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 333
    const v1, 0x10204e6

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    .line 334
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpSplitPagerAdapter()V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->prepareServiceTargetPanelView()V

    .line 338
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->preparePageView(I)V

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 327
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpPagerAdapter()V

    .line 341
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->preparePageView(I)V

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpOtherTargetAdapter()V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->prepareServiceTargetPanelView()V

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->prepareOtherTargetPanelView(Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 351
    :cond_4
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 352
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_1
.end method

.method onRefinementCanceled()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 598
    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "selectedTarget"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 580
    :cond_0
    if-nez p1, :cond_2

    .line 581
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 590
    :goto_1
    return-void

    .line 582
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_3
    invoke-interface {p1, p2, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-super {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_1
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 12
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    .line 410
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v10

    .line 412
    .local v10, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 413
    const-string v1, "android.intent.extra.INTENT"

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 415
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [Landroid/content/Intent;

    .line 416
    .local v7, "alts":[Landroid/content/Intent;
    const/4 v9, 0x1

    .local v9, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "N":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 417
    add-int/lit8 v1, v9, -0x1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v7, v1

    .line 416
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 419
    :cond_0
    const-string v0, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    .end local v6    # "N":I
    .end local v7    # "alts":[Landroid/content/Intent;
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 424
    :cond_2
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 425
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 435
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :goto_1
    return v0

    .line 430
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v8

    .line 431
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement IntentSender failed to send"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    goto :goto_1
.end method

.method prepareOtherTargetPanelView(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v5, 0x1

    .line 1730
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    .line 1731
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1733
    .local v0, "itemCount":I
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1735
    .local v2, "otherTargetListener":Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1736
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1737
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 1738
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v1

    .line 1739
    .local v1, "nCount":I
    if-gt v1, v0, :cond_1

    .line 1740
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1745
    .end local v1    # "nCount":I
    :cond_0
    :goto_0
    return-void

    .line 1742
    .restart local v1    # "nCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method prepareServiceTargetPanelView()V
    .locals 5

    .prologue
    .line 1717
    const v2, 0x10204e6

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    .line 1718
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1720
    .local v0, "itemCount":I
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1722
    .local v1, "serviceTargetListener":Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1723
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1724
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 1725
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1727
    :cond_0
    return-void
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 22
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 470
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 471
    .local v16, "targetsToQuery":I
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v4

    .local v4, "N":I
    :goto_0
    if-ge v9, v4, :cond_5

    .line 472
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v7

    .line 473
    .local v7, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 479
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 480
    .local v10, "md":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.service.chooser.chooser_target_service"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 482
    .local v15, "serviceName":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    .line 483
    new-instance v13, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.service.chooser.ChooserTargetService"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 493
    .local v14, "serviceIntent":Landroid/content/Intent;
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 494
    .local v11, "perm":Ljava/lang/String;
    const-string v17, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 495
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ChooserTargetService "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not require"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - this service will not be queried for ChooserTargets."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " add android:permission=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to the <service> tag for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in the manifest."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 504
    .end local v11    # "perm":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 505
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not look up service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 480
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 509
    .restart local v11    # "perm":Ljava/lang/String;
    .restart local v13    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v14    # "serviceIntent":Landroid/content/Intent;
    .restart local v15    # "serviceName":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 511
    .local v6, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    const/16 v17, 0x5

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v6, v1, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v16, v16, 0x1

    .line 521
    .end local v6    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 528
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "md":Landroid/os/Bundle;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    :goto_3
    return-void

    .line 534
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto :goto_3
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 4
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 382
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 388
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string v2, "com.android.documentsui"

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const/4 v2, 0x1

    .line 395
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method startSelected(IZZ)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 440
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 442
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v2, :cond_0

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "cat":I
    move v1, p1

    .line 447
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 462
    :goto_0
    if-eqz v0, :cond_0

    .line 463
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 466
    .end local v0    # "cat":I
    .end local v1    # "value":I
    :cond_0
    return-void

    .line 449
    .restart local v0    # "cat":I
    .restart local v1    # "value":I
    :pswitch_0
    const/16 v0, 0xd7

    .line 450
    goto :goto_0

    .line 452
    :pswitch_1
    const/16 v0, 0xd8

    .line 453
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 454
    goto :goto_0

    .line 456
    :pswitch_2
    const/16 v0, 0xd9

    .line 457
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method unbindRemainingServices()V
    .locals 5

    .prologue
    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 561
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 563
    .local v1, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 564
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 567
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    return-void
.end method

.method updateOtherTargetListMap()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1644
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v7

    .line 1645
    .local v7, "serviceTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1646
    .local v0, "callerTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v8

    .line 1650
    .local v8, "standardTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1651
    add-int v4, v0, v8

    .line 1652
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1653
    const/4 v5, 0x0

    .line 1654
    .local v5, "offset":I
    move v2, v1

    .line 1657
    .local v2, "itemIndex":I
    const-string/jumbo v9, "panelkey_%1$d_%2$d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1659
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 1660
    const/4 v5, 0x0

    .line 1665
    :goto_1
    add-int v6, v1, v5

    .line 1666
    .local v6, "origPosition":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1662
    .end local v6    # "origPosition":I
    :cond_0
    move v5, v7

    goto :goto_1

    .line 1668
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_1
    return-void
.end method

.method updateServiceTargetAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1699
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1700
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1702
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 1705
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPagerAdapter()Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1706
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateSplitPagerAdapterMap()V

    .line 1711
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1712
    .local v0, "serviceTargetAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1713
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setIgnoreChildCountForAbsListView(Z)V

    .line 1714
    return-void

    .line 1708
    .end local v0    # "serviceTargetAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateOtherTargetListMap()V

    goto :goto_0
.end method

.method updateSplitPagerAdapterMap()V
    .locals 14

    .prologue
    .line 1671
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v8

    .line 1672
    .local v8, "serviceTargetCount":I
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1673
    .local v0, "callerTargetCount":I
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v9

    .line 1677
    .local v9, "standardTargetCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 1678
    add-int v4, v0, v9

    .line 1679
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1680
    const/4 v5, 0x0

    .line 1681
    .local v5, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v10

    div-int v7, v1, v10

    .line 1682
    .local v7, "pageIndex":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v10

    rem-int v2, v1, v10

    .line 1685
    .local v2, "itemIndex":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 1688
    const/4 v5, 0x0

    .line 1693
    :goto_1
    add-int v6, v1, v5

    .line 1694
    .local v6, "origPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1690
    .end local v6    # "origPosition":I
    :cond_0
    move v5, v8

    goto :goto_1

    .line 1696
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    .end local v7    # "pageIndex":I
    :cond_1
    return-void
.end method
