.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 1

    .prologue
    .line 913
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p2, "x1"    # Landroid/view/AccessibilityInteractionController$1;

    .prologue
    .line 913
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private enforceNodeTreeConsistent(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 965
    .local v15, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 966
    .local v14, "nodeCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 967
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 968
    .local v13, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 966
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 973
    .end local v13    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 974
    .local v17, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v16, v17

    .line 975
    .local v16, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v16, :cond_1

    .line 976
    move-object/from16 v17, v16

    .line 977
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    check-cast v16, Landroid/view/accessibility/AccessibilityNodeInfo;

    .restart local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 981
    :cond_1
    const/4 v2, 0x0

    .line 982
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 983
    .local v11, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 984
    .local v18, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 985
    .local v8, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_2
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    .line 988
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 991
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 992
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    # getter for: Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 998
    :cond_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 999
    if-eqz v2, :cond_4

    .line 1000
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate accessibility focus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    # getter for: Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1004
    :cond_4
    move-object v2, v5

    .line 1009
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1010
    if-eqz v11, :cond_6

    .line 1011
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate input focus: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    # getter for: Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1015
    :cond_6
    move-object v11, v5

    .line 1019
    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 1020
    .local v4, "childCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v4, :cond_2

    .line 1021
    invoke-virtual {v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 1022
    .local v6, "childId":J
    invoke-virtual {v15, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1023
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_8

    .line 1024
    invoke-interface {v8, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1030
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_9
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .restart local v12    # "j":I
    :goto_3
    if-ltz v12, :cond_b

    .line 1031
    invoke-virtual {v15, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1032
    .local v10, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 1033
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Disconnected node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1030
    :cond_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1036
    .end local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 13
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v12, 0x32

    .line 1091
    instance-of v11, p1, Landroid/view/ViewGroup;

    if-nez v11, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1096
    .local v1, "addedChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1097
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1099
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1100
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1101
    .local v3, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_5

    .line 1102
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-lt v11, v12, :cond_2

    .line 1125
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1105
    :cond_2
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1106
    .local v2, "child":Landroid/view/View;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    invoke-static {v11, v2}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1107
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 1108
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v9, :cond_4

    .line 1109
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1110
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_3

    .line 1111
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1115
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1117
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_3

    .line 1118
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1125
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v6    # "i":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :catchall_0
    move-exception v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    throw v11

    .restart local v3    # "childCount":I
    .restart local v6    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v12, :cond_0

    .line 1128
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1129
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1130
    .local v0, "addedChild":Landroid/view/View;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1131
    .local v10, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_6

    .line 1132
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_3

    .line 1134
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 1136
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v10, v9, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_3
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 9
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v8, 0x32

    .line 1219
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 1220
    .local v6, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 1221
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1222
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v8, :cond_1

    .line 1239
    :cond_0
    return-void

    .line 1225
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    .line 1226
    .local v4, "childNodeId":J
    if-nez p2, :cond_3

    const/4 v1, 0x0

    .line 1228
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 1229
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1226
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_1

    .line 1232
    .end local v4    # "childNodeId":J
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_0

    .line 1233
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int v0, v7, v6

    .line 1234
    .local v0, "addedChildCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_0

    .line 1235
    add-int v7, v6, v3

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1236
    .restart local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1234
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 1042
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    move-object v2, v1

    .line 1043
    check-cast v2, Landroid/view/View;

    .line 1044
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1045
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 1049
    goto :goto_0

    .line 1050
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "parentView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const v7, 0x7fffffff

    .line 1145
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    .line 1146
    .local v2, "parentNodeId":J
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 1147
    .local v0, "accessibilityViewId":I
    :goto_0
    if-eq v0, v7, :cond_0

    .line 1148
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_1

    .line 1176
    :cond_0
    :goto_1
    return-void

    .line 1151
    :cond_1
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 1153
    .local v4, "virtualDescendantId":I
    if-ne v4, v7, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v0, v5, :cond_4

    .line 1156
    :cond_2
    if-eq v4, v7, :cond_3

    .line 1157
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1162
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    if-eqz v1, :cond_0

    .line 1167
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    .line 1169
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 1171
    goto :goto_0

    .line 1159
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .restart local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 1172
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .param p1, "current"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    .line 1055
    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 1056
    check-cast v6, Landroid/view/ViewGroup;

    .line 1057
    .local v6, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1058
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1060
    :try_start_0
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1061
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1062
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1063
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_1

    .line 1084
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1087
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "i":I
    .end local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 1066
    .restart local v1    # "childCount":I
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3    # "i":I
    .restart local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1067
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v9

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    invoke-static {v8, v0}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1069
    const/4 v4, 0x0

    .line 1070
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 1072
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_3

    .line 1073
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1078
    :goto_2
    if-eqz v4, :cond_2

    .line 1079
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1075
    .restart local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_2

    .line 1084
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .end local v1    # "childCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v8
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 18
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v12

    .line 1181
    .local v12, "parentNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v11

    .line 1183
    .local v11, "parentAccessibilityViewId":I
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 1185
    .local v14, "parentVirtualDescendantId":I
    const v15, 0x7fffffff

    if-ne v14, v15, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v15

    if-ne v11, v15, :cond_5

    .line 1188
    :cond_0
    const v15, 0x7fffffff

    if-eq v14, v15, :cond_2

    .line 1189
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1194
    .local v10, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    if-eqz v10, :cond_1

    .line 1195
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 1196
    .local v5, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_1

    .line 1197
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 1215
    .end local v5    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    :goto_2
    return-void

    .line 1191
    :cond_2
    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .restart local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 1200
    .restart local v5    # "childCount":I
    .restart local v9    # "i":I
    :cond_3
    invoke-virtual {v10, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 1201
    .local v6, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    .line 1202
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v8

    .line 1204
    .local v8, "childVirtualDescendantId":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1206
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_4

    .line 1207
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childVirtualDescendantId":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1213
    .end local v5    # "childCount":I
    .end local v6    # "childNodeId":J
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I
    .param p3, "fetchFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 922
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_3

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 924
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 925
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 927
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 929
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 930
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 932
    :cond_1
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 933
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 960
    :cond_2
    :goto_0
    return-void

    .line 938
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const v2, 0x7fffffff

    if-eq p2, v2, :cond_6

    .line 939
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 944
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 945
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    .line 947
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 949
    :cond_4
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_5

    .line 950
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 952
    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 953
    invoke-direct {p0, v1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_0

    .line 941
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1
.end method
