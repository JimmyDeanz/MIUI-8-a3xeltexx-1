.class public final Landroid/app/im/InjectionManager;
.super Ljava/lang/Object;
.source "InjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/im/InjectionManager$1;,
        Landroid/app/im/InjectionManager$FeatureInfo;
    }
.end annotation


# static fields
.field public static final DEBUG_ELASTIC:Z

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Landroid/app/im/InjectionManager;

.field static mLibMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/app/im/IInjectionManager;


# instance fields
.field public coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

.field featureSourceStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/im/feature/IInjection;",
            ">;"
        }
    .end annotation
.end field

.field featureStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/im/InjectionManager$FeatureInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field packageHasFeatures:Z

.field pathClassLoaderStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field pkgContextStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "InjectionManager"

    sput-object v0, Landroid/app/im/InjectionManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->pathClassLoaderStore:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/im/InjectionManager;->fillFeatureStoreMap(Ljava/lang/String;)V

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    iget-object v1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    iput-object v1, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    sget-object v1, Landroid/app/im/InjectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent ClassLoader :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private actionBarSpinnerController(Ljava/lang/Object;IJ)Z
    .locals 15
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_1

    const/4 v8, 0x0

    :cond_0
    return v8

    :cond_1
    const/4 v8, 0x0

    .local v8, "show":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, "targetClassName":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_0

    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    sget-object v13, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v13}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v3, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v9, 0x0

    .local v9, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v3, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v7

    .local v7, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v7, :cond_2

    instance-of v12, v7, Landroid/app/im/feature/IDynamicView;

    if-eqz v12, :cond_2

    move-object v0, v7

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-interface {v9, v0, v1, v2}, Landroid/app/im/feature/IDynamicView;->onNavigationItemSelected(IJ)Z

    move-result v12

    or-int/2addr v8, v12

    goto :goto_0

    .end local v7    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v5

    .local v5, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method private adapterEventController(ILjava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 16
    .param p1, "option"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p3, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v3, :cond_1

    const/4 v13, 0x0

    :cond_0
    return v13

    :cond_1
    const/4 v13, 0x0

    .local v13, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .local v14, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    .local v15, "targetHasFeature":Z
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sget-object v4, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v4}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .local v9, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v8, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v2, 0x0

    .local v2, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v12

    .local v12, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v12, :cond_2

    instance-of v3, v12, Landroid/app/im/feature/IDynamicView;

    if-eqz v3, :cond_2

    move-object v0, v12

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    goto :goto_0

    .end local v12    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v10

    .local v10, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v10}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .end local v10    # "exp":Ljava/lang/ClassCastException;
    .restart local v12    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_1
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    goto :goto_0

    :pswitch_2
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/app/im/feature/IDynamicView;->onNothingSelected(Landroid/widget/AdapterView;)Z

    move-result v3

    or-int/2addr v13, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private contentProviderController(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .local v13, "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v3, :cond_0

    move-object v14, v13

    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .local v14, "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :goto_0
    return-object v14

    .end local v14    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .restart local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v20

    .local v20, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    .local v21, "targetHasFeature":Z
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sget-object v4, Landroid/app/im/InjectionConstants$FeatureType;->CONTENT_PROVIDER:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v4}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .local v19, "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v18, "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v2, 0x0

    .local v2, "sourceObject":Landroid/app/im/feature/IContentProvider;
    :try_start_0
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v17

    .local v17, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    instance-of v3, v0, Landroid/app/im/feature/IContentProvider;

    if-eqz v3, :cond_1

    move-object/from16 v0, v17

    check-cast v0, Landroid/app/im/feature/IContentProvider;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-interface/range {v2 .. v11}, Landroid/app/im/feature/IContentProvider;->query(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .local v12, "cur":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    if-nez v13, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .restart local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :cond_2
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v12    # "cur":Landroid/database/Cursor;
    .end local v17    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v15

    .local v15, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v15}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "sourceObject":Landroid/app/im/feature/IContentProvider;
    .end local v15    # "exp":Ljava/lang/ClassCastException;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v19    # "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    :cond_3
    move-object v14, v13

    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .restart local v14    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    goto/16 :goto_0
.end method

.method private contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z
    .locals 14
    .param p1, "type"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "menu"    # Landroid/view/ContextMenu;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .param p6, "item"    # Landroid/view/MenuItem;
    .param p7, "isFragment"    # Z

    .prologue
    iget-boolean v11, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v11, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    .local v7, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, "targetClassName":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "targetHasFeature":Z
    if-eqz v10, :cond_0

    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    sget-object v12, Landroid/app/im/InjectionConstants$FeatureType;->CONTEXT_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v12}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "contextMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v3, "contextMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v8, 0x0

    .local v8, "sourceObject":Landroid/app/im/feature/IContextMenu;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v13, v3, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v6

    .local v6, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v6, :cond_2

    instance-of v11, v6, Landroid/app/im/feature/IContextMenu;

    if-eqz v11, :cond_2

    move-object v8, v6

    check-cast v8, Landroid/app/im/feature/IContextMenu;

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-interface {v8, v0, v1, v2}, Landroid/app/im/feature/IContextMenu;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p6

    invoke-interface {v8, v0}, Landroid/app/im/feature/IContextMenu;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    or-int/2addr v7, v11

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static from(Landroid/content/Context;)Landroid/app/im/InjectionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "injection"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method public static getClassLibPath(I)Ljava/lang/String;
    .locals 2
    .param p0, "includeSharedLib"    # I

    .prologue
    sget-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p0, "mPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v2, Landroid/app/im/InjectionManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/im/IInjectionManager;->getClassLibPath(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "mPkgContext":Landroid/content/Context;
    invoke-direct {p0, p1}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    .locals 4
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "featurePackage"    # Ljava/lang/String;
    .param p3, "featureClass"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/feature/IInjection;

    .local v2, "sourceObject":Landroid/app/im/feature/IInjection;
    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/app/im/InjectionManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/app/im/InjectionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Landroid/app/im/InjectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/im/InjectionManager;

    invoke-direct {v0, p0}, Landroid/app/im/InjectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    :cond_0
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMenuInflator(Ljava/lang/String;)Landroid/view/MenuInflater;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {p0, p1}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .local v1, "mPkgContext":Landroid/content/Context;
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getService()Landroid/app/im/IInjectionManager;
    .locals 3

    .prologue
    const-class v2, Landroid/app/im/InjectionManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    monitor-exit v2

    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v1, "injection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/im/IInjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/im/IInjectionManager;

    move-result-object v1

    sput-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private mergeOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 12
    .param p1, "sourceMenu"    # Landroid/view/Menu;
    .param p2, "targetMenu"    # Landroid/view/Menu;

    .prologue
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    .local v3, "menuCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {p2, v8, v9, v10, v11}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v7

    .local v7, "targetSubMenu":Landroid/view/SubMenu;
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .local v4, "sourceSubMenu":Landroid/view/SubMenu;
    invoke-interface {v4}, Landroid/view/SubMenu;->size()I

    move-result v5

    .local v5, "sourceSubMenuCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {v4, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .local v6, "sourceSubMenuItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v6}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v6}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "j":I
    .end local v4    # "sourceSubMenu":Landroid/view/SubMenu;
    .end local v5    # "sourceSubMenuCount":I
    .end local v6    # "sourceSubMenuItem":Landroid/view/MenuItem;
    .end local v7    # "targetSubMenu":Landroid/view/SubMenu;
    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {p2, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v8

    check-cast v1, Landroid/view/ElasticMenuItem;

    .end local v1    # "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/ElasticMenuItem;->getShowAsAction()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z
    .locals 14
    .param p1, "option"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "menu"    # Landroid/view/Menu;
    .param p4, "menuInflater"    # Landroid/view/MenuInflater;
    .param p5, "item"    # Landroid/view/MenuItem;
    .param p6, "isFragment"    # Z

    .prologue
    iget-boolean v11, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v11, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    .local v7, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, "targetClassName":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "targetHasFeature":Z
    if-eqz v10, :cond_0

    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    sget-object v12, Landroid/app/im/InjectionConstants$FeatureType;->OPTIONS_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v12}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .local v5, "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v4, "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v8, 0x0

    .local v8, "sourceObject":Landroid/app/im/feature/IOptionsMenu;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v3

    .local v3, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v3, :cond_2

    instance-of v11, v3, Landroid/app/im/feature/IOptionsMenu;

    if-eqz v11, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/app/im/feature/IOptionsMenu;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    const/4 v11, 0x3

    if-ne p1, v11, :cond_2

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v3    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v1

    .local v1, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "exp":Ljava/lang/ClassCastException;
    .restart local v3    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_0
    iget-object v11, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v6, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v11, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .local v6, "pkgContextOptionsMenu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v11, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Landroid/app/im/InjectionManager;->getMenuInflator(Ljava/lang/String;)Landroid/view/MenuInflater;

    move-result-object v11

    invoke-interface {v8, v6, v11}, Landroid/app/im/feature/IOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v11

    or-int/2addr v7, v11

    move-object/from16 v0, p3

    invoke-direct {p0, v6, v0}, Landroid/app/im/InjectionManager;->mergeOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    goto :goto_2

    .end local v6    # "pkgContextOptionsMenu":Lcom/android/internal/view/menu/MenuBuilder;
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v8, v0}, Landroid/app/im/feature/IOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v11

    or-int/2addr v7, v11

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Landroid/app/im/feature/IOptionsMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    or-int/2addr v7, v11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scaleEventController(ILjava/lang/Object;Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "scaleEvent"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "scaleGD"    # Landroid/view/ScaleGestureDetector;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v10, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v10, :cond_1

    const/4 v6, 0x0

    :cond_0
    return v6

    :cond_1
    const/4 v6, 0x0

    .local v6, "show":Z
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .local v8, "targetClassName":Ljava/lang/String;
    iget-object v10, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .local v9, "targetHasFeature":Z
    if-eqz v9, :cond_0

    iget-object v10, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    sget-object v11, Landroid/app/im/InjectionConstants$FeatureType;->SCALE_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v11}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v1, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v7, 0x0

    .local v7, "sourceObject":Landroid/app/im/feature/IScaleView;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v5

    .local v5, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v5, :cond_2

    instance-of v10, v5, Landroid/app/im/feature/IScaleView;

    if-eqz v10, :cond_2

    move-object v0, v5

    check-cast v0, Landroid/app/im/feature/IScaleView;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p4

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .end local v5    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v3

    .local v3, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "exp":Ljava/lang/ClassCastException;
    .restart local v5    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScale(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private tabHostController(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tabId"    # Ljava/lang/String;

    .prologue
    iget-boolean v9, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "targetClassName":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "targetHasFeature":Z
    if-eqz v8, :cond_0

    iget-object v9, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    sget-object v10, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v10}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v1, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v6, 0x0

    .local v6, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v5

    .local v5, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v5, :cond_2

    instance-of v9, v5, Landroid/app/im/feature/IDynamicView;

    if-eqz v9, :cond_2

    move-object v0, v5

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v6, p2}, Landroid/app/im/feature/IDynamicView;->onTabChanged(Ljava/lang/String;)V

    goto :goto_0

    .end local v5    # "obj":Landroid/app/im/feature/IInjection;
    :catch_0
    move-exception v3

    .local v3, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchActionBarSpinnerEvent(Ljava/lang/Object;IJ)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/im/InjectionManager;->actionBarSpinnerController(Ljava/lang/Object;IJ)Z

    move-result v0

    return v0
.end method

.method public dispatchAdapterEvent(Ljava/lang/Object;ILandroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "adapterEvent"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p3, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->adapterEventController(ILjava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public dispatchBuildHeader(Ljava/lang/Object;Ljava/util/List;)V
    .locals 10
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_1

    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_0
    return-void

    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_1
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE_HEADER:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .local v3, "preferenceHeaderSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v2, "preferenceHeaderSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .local v4, "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    check-cast v4, Landroid/app/im/feature/IPreferenceHeader;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    if-eqz v4, :cond_0

    invoke-interface {v4, p2}, Landroid/app/im/feature/IPreferenceHeader;->onBuildHeader(Ljava/util/List;)V

    goto :goto_0

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    :catch_0
    move-exception v0

    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchContentProviderCall(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/app/im/InjectionManager;->contentProviderController(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public dispatchContextItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchCreateContextMenu(Ljava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Z)V
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/ContextMenu;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .param p5, "isFragment"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z

    return-void
.end method

.method public dispatchCreateOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Z)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;
    .param p4, "isFragment"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/content/res/Configuration;)V
    .locals 15
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, "targetClassName":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_0

    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "category":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_3

    sget-object v12, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V
    .locals 16
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .param p3, "state"    # Landroid/os/Bundle;
    .param p4, "isFragment"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v13, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .local v11, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "targetHasFeature":Z
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_3

    const/4 v10, 0x0

    .local v10, "targetActivity":Landroid/app/Activity;
    if-eqz p4, :cond_4

    move-object/from16 v13, p2

    check-cast v13, Landroid/app/Fragment;

    invoke-virtual {v13}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    :goto_1
    sget-object v13, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v13, v0}, Landroid/app/im/feature/IInjection;->onCreate(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    move-object/from16 v10, p2

    check-cast v10, Landroid/app/Activity;

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    if-nez p4, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetClassName"    # Ljava/lang/String;
    .param p3, "targetObject"    # Ljava/lang/Object;

    .prologue
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_0

    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "category":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v10

    .local v10, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v10, :cond_3

    sget-object v12, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onStart()V

    goto :goto_0

    :pswitch_1
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onRestart()V

    goto :goto_0

    :pswitch_2
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onStop()V

    goto :goto_0

    :pswitch_3
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onDestroy()V

    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/im/feature/IInjection;

    .local v9, "removed":Landroid/app/im/feature/IInjection;
    goto :goto_0

    .end local v9    # "removed":Landroid/app/im/feature/IInjection;
    :pswitch_4
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onPause()V

    goto :goto_0

    :pswitch_5
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onResume()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v13, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .local v11, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "targetHasFeature":Z
    if-nez v12, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    const/4 v10, 0x0

    .local v10, "status":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_5

    sget-object v13, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    :goto_1
    const/4 v13, 0x1

    if-ne v10, v13, :cond_5

    sget-object v13, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {v9}, Landroid/app/im/feature/IInjection;->onSearchRequested()Z

    move-result v10

    goto :goto_1

    .end local v2    # "category":Ljava/lang/String;
    .end local v4    # "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    .end local v5    # "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "sourceObject":Landroid/app/im/feature/IInjection;
    .end local v10    # "status":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPreferences(Ljava/lang/Object;)V
    .locals 10
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_1

    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_0
    return-void

    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_1
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .local v3, "preferenceSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v2, "preferenceSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .local v4, "sourceObject":Landroid/app/im/feature/IPreference;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    check-cast v4, Landroid/app/im/feature/IPreference;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_3

    move-object v7, p1

    check-cast v7, Landroid/preference/PreferenceActivity;

    invoke-interface {v4, v7}, Landroid/app/im/feature/IPreference;->addPreference(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    :catch_0
    move-exception v0

    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "exp":Ljava/lang/ClassCastException;
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    :cond_3
    instance-of v7, v4, Landroid/preference/PreferenceFragment;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Landroid/preference/PreferenceFragment;

    invoke-interface {v4, v7}, Landroid/app/im/feature/IPreference;->addPreference(Landroid/preference/PreferenceFragment;)V

    goto :goto_0
.end method

.method public dispatchPrepareOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "scaleEvent"    # I
    .param p3, "scaleGD"    # Landroid/view/ScaleGestureDetector;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/app/im/InjectionManager;->scaleEventController(ILjava/lang/Object;Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTabHostEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tabId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/im/InjectionManager;->tabHostController(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchViewCreated(Ljava/lang/Object;Z)V
    .locals 10
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "isFragment"    # Z

    .prologue
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_1

    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_0
    return-void

    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_1
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionManager$FeatureInfo;

    .local v0, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .local v4, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    check-cast v4, Landroid/app/im/feature/IDynamicView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    move-object v7, p1

    check-cast v7, Landroid/app/Fragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/app/im/feature/IDynamicView;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    .end local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    :catch_0
    move-exception v2

    .local v2, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "exp":Ljava/lang/ClassCastException;
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    :cond_2
    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/app/im/feature/IDynamicView;->onViewCreated(Landroid/view/View;)V

    goto :goto_0
.end method

.method public fillFeatureStoreMap(Ljava/lang/String;)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/im/IInjectionManager;->getPackageFeatures(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .local v14, "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    .end local v14    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1
    :goto_0
    return-void

    .restart local v14    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "activity":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "categorySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .local v4, "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "category":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .local v9, "featureSource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .local v7, "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-nez v7, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "st":Ljava/lang/String;
    const-string v17, "#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "source":[Ljava/lang/String;
    new-instance v10, Landroid/app/im/InjectionManager$FeatureInfo;

    const/16 v17, 0x0

    aget-object v17, v15, v17

    const/16 v18, 0x1

    aget-object v18, v15, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/app/im/InjectionManager$FeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v10, "featureinfo":Landroid/app/im/InjectionManager$FeatureInfo;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "activity":Ljava/lang/String;
    .end local v3    # "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    .end local v5    # "category":Ljava/lang/String;
    .end local v6    # "categorySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    .end local v9    # "featureSource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "featureinfo":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v15    # "source":[Ljava/lang/String;
    .end local v16    # "st":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    .locals 8
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "sourcePkgName"    # Ljava/lang/String;
    .param p3, "sourceClassName"    # Ljava/lang/String;

    .prologue
    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/im/feature/IInjection;

    .local v4, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v4, :cond_0

    .end local v4    # "obj":Landroid/app/im/feature/IInjection;
    :goto_0
    return-object v4

    :cond_0
    const/4 v5, 0x0

    .local v5, "sourceObject":Landroid/app/im/feature/IInjection;
    iget-object v2, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    .local v2, "mPathClass":Ldalvik/system/PathClassLoader;
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2, p3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .local v4, "obj":Ljava/lang/Object;
    instance-of v6, v4, Landroid/app/im/feature/IInjection;

    if-eqz v6, :cond_2

    move-object v0, v4

    check-cast v0, Landroid/app/im/feature/IInjection;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3    # "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_1
    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPathClassLoader(Ljava/lang/String;)Ldalvik/system/PathClassLoader;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "pathCl":Ldalvik/system/PathClassLoader;
    :try_start_0
    iget-object v4, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v4, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "pathCl":Ldalvik/system/PathClassLoader;
    .local v3, "pathCl":Ldalvik/system/PathClassLoader;
    move-object v2, v3

    .end local v3    # "pathCl":Ldalvik/system/PathClassLoader;
    .restart local v2    # "pathCl":Ldalvik/system/PathClassLoader;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPackageHasFeatures()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    return v0
.end method
