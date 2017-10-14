.class public Lcom/android/server/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;,
        Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;
    }
.end annotation


# instance fields
.field private final mMaxBSSLoad:I

.field private final mMinBackhaulThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

.field private final mPreferredRoamingPartners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredProtos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSPExclusionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 14
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v11, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v8

    .local v8, "rpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v8, :cond_4

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    :cond_0
    const-string v11, "MinBackhaulThreshold"

    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .local v0, "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_6

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    :cond_1
    new-instance v11, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    const-string v12, "PolicyUpdate"

    invoke-virtual {p1, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    const-string v11, "SPExclusionList"

    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v10

    .local v10, "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v10, :cond_8

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    :cond_2
    const-string v11, "RequiredProtoPortTuple"

    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .local v9, "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v9, :cond_a

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    :cond_3
    const-string v11, "MaximumBSSLoadValue"

    const-wide v12, 0x7fffffffffffffffL

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {p1, v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v12

    long-to-int v11, v12

    iput v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    return-void

    .end local v0    # "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v9    # "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v10    # "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "instance$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v1, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v12, "Not expecting leaf node in PreferredRoamingPartnerList"

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v0    # "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v12, "Not expecting leaf node in MinBackhaulThreshold"

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v10    # "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v12, "Not expecting leaf node in SPExclusionList"

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    const-string v12, "SSID"

    invoke-static {v1, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v9    # "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_a
    new-instance v11, Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v12, "Not expecting leaf node in RequiredProtoPortTuple"

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_b
    const-string v11, "IPProtocol"

    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "protocol":I
    const-string v11, "PortNumber"

    invoke-static {v1, v11}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "portSegments":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v11, v5

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    array-length v12, v5

    :goto_4
    if-ge v11, v12, :cond_c

    aget-object v4, v5, v11

    .local v4, "portSegment":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Port is not a number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "portSegment":Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public getMaxBSSLoad()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    return v0
.end method

.method public getMinBackhaulThresholds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    return-object v0
.end method

.method public getPolicyUpdate()Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    return-object v0
.end method

.method public getPreferredRoamingPartners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredProtos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    return-object v0
.end method

.method public getSPExclusionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy{preferredRoamingPartners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBackhaulThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", policyUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SPExclusionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredProtos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBSSLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
