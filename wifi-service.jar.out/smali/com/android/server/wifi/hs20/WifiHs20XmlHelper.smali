.class public Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;
.super Ljava/lang/Object;
.source "WifiHs20XmlHelper.java"


# static fields
.field private static final ACL:Ljava/lang/String; = "ACL"

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final NODE:Ljava/lang/String; = "Node"

.field private static final NODENAME:Ljava/lang/String; = "NodeName"

.field private static final PERPROVIDERSUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final TAG:Ljava/lang/String; = "soapXmlHelper"

.field private static final VALUE:Ljava/lang/String; = "Value"


# instance fields
.field HomeOIListCount:I

.field aaaServerTrustRootObjCount:I

.field mCurrentNodeName:Ljava/lang/String;

.field mCurrentVal:Ljava/lang/String;

.field mGrandParent:Ljava/lang/String;

.field mParent:Ljava/lang/String;

.field mPreviousNodeName:Ljava/lang/String;

.field minBackHaulThresholdCount:I

.field networkIDCount:I

.field otherHomePartnerCount:I

.field ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

.field preferredRoamingPartnerCount:I

.field protoPortTuppleCount:I

.field spExclusionListCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    return-void
.end method

.method private parseNodeName(Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    const-string v2, "UpdateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UpdateIdentifier"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 285
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hospot id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    const-string v1, "Policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 397
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    const-string v1, "Policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CredentialPriority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SubscriptionRemediation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AAAServerTrustRoot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SubscriptionUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HomeSP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SubscriptionParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Credential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    :cond_2
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    .line 296
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grandparent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_3
    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MinBackhaulThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PolicyUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SPExclusionList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "RequiredProtoPortTuple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NetworkID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "HomeOIList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "UsageLimits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EAPMethod"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DigitalCertificate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OtherHomePartners"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    :cond_4
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    .line 310
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_5
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    .line 313
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentNodeName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grandparent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_6
    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 322
    :cond_7
    const-string v1, "MinBackhaulThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 323
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 324
    :cond_8
    const-string v1, "PolicyUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 325
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    .line 326
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    .line 327
    :cond_9
    const-string v1, "Username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 329
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    goto/16 :goto_1

    .line 330
    :cond_a
    const-string v1, "SPExclusionList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 331
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 332
    :cond_b
    const-string v1, "RequiredProtoPortTuple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 333
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 336
    :cond_c
    const-string v1, "SubscriptionRemediation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 337
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    .line 338
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    .line 341
    :cond_d
    const-string v1, "AAAServerTrustRoot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 345
    :cond_e
    const-string v1, "SubscriptionUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    .line 347
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    .line 348
    :cond_f
    const-string v1, "UsernamePassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 350
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    goto/16 :goto_1

    .line 353
    :cond_10
    const-string v1, "HomeSP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 354
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    goto/16 :goto_1

    .line 355
    :cond_11
    const-string v1, "NetworkID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 356
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    goto/16 :goto_1

    .line 357
    :cond_12
    const-string v1, "HomeOIList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 358
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    goto/16 :goto_1

    .line 359
    :cond_13
    const-string v1, "OtherHomePartners"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 360
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    goto/16 :goto_1

    .line 363
    :cond_14
    const-string v1, "SubscriptionParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 364
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    .line 365
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    goto/16 :goto_1

    .line 368
    :cond_15
    const-string v1, "Credential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 369
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    goto/16 :goto_1

    .line 370
    :cond_16
    const-string v1, "Username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 372
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    goto/16 :goto_1

    .line 373
    :cond_17
    const-string v1, "EAPType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 375
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    goto/16 :goto_1

    .line 378
    :cond_18
    const-string v1, "DigitalCertificate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 379
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    goto/16 :goto_1

    .line 380
    :cond_19
    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 381
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    goto/16 :goto_1

    .line 382
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PreferredRoamingPartnerList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FQDN_Match"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    const-string v1, "soapXmlHelper"

    const-string v2, "have to change here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;-><init>()V

    .line 393
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    goto/16 :goto_1
.end method

.method private parseValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FQDN_Match"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PreferredRoamingPartnerList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 406
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    .line 407
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.preferredRoamingPartner.fQDNMatch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PreferredRoamingPartnerList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 418
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    .line 420
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.preferredRoamingPartner.priority "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PreferredRoamingPartnerList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 428
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    .line 429
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.preferredRoamingPartner.country "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "NetworkType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "MinBackhaulThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .line 438
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.minBackHaulThresholdCount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    goto/16 :goto_0

    .line 448
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "DLBandwidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "MinBackhaulThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .line 452
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    .line 454
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.minBackHaulThreshold.dlBandWidth  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 458
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "ULBandwidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "MinBackhaulThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .line 462
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    .line 464
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.minBackHaulThreshold.ulBandWidth  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 470
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateInterval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 474
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    .line 475
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.updateInterval  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 476
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateMethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 479
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 480
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.updateMethod  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Restriction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 484
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    .line 485
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.restriction  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 489
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    .line 490
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.uri  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 494
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    .line 495
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.passwordUsernameobj.username  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 496
    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 499
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    .line 500
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.passwordUsernameobj.password  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 504
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    .line 505
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.other  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :cond_d
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 509
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    .line 510
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.trustrootObj.trustRootURL  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 511
    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertSHA256Fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "PolicyUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 514
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 515
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.policyUpdateObj.trustrootObj.certSHA256FingerPrint  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 519
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "SSID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "SPExclusionList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 522
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .line 523
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    .line 524
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.spExclusionList.ssid  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->spExclusionListCount:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->spExclusionListCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->spExclusionListCount:I

    goto/16 :goto_0

    .line 531
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_10
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "IPProtocol"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "RequiredProtoPortTuple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 534
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;-><init>()V

    .line 535
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    .line 538
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.protoPortTupple.ipProtocol "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    goto/16 :goto_0

    .line 542
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_11
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "PortNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "RequiredProtoPortTuple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 545
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    .line 547
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    .line 549
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.protoPortTupple.portNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_12
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "MaximumBSSLoadValue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 556
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    .line 557
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.policyObj.maximumBSSLoadValue  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CredentialPriority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "CredentialPriority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    .line 564
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionPriority  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 567
    :cond_14
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionRemediation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 569
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    .line 570
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionRemediationObj.URI  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 571
    :cond_15
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionRemediation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 573
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    .line 574
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionRemediationObj.trustRootObj.trustRootURL  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 575
    :cond_16
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertSHA256Fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionRemediation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 577
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 578
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionRemediationObj.trustRootObj.certSHA256FingerPrint  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :cond_17
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "AAAServerTrustRoot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 584
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;-><init>()V

    .line 585
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    .line 587
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.aaaServerTrustRootObj.trustRootURL  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.aaaServerTrustRootObj.trustRootID  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    goto/16 :goto_0

    .line 594
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    :cond_18
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertSHA256Fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "AAAServerTrustRoot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 596
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .line 598
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 599
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.aaaServerTrustRootObj.certSHA256FingerPrint  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    :cond_19
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateInterval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 607
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    .line 608
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.updateInterval  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateMethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 612
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 613
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.updateMethod  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Restriction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 616
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 617
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.restriction  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 618
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 620
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 621
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.uri  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 622
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 624
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    goto/16 :goto_0

    .line 625
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 627
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    goto/16 :goto_0

    .line 628
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 630
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    goto/16 :goto_0

    .line 631
    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 633
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    .line 634
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.trustrootObj.trustRootURL  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 635
    :cond_21
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertSHA256Fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 637
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 638
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionUpdate.trustrootObj.certSHA256FingerPrint  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    :cond_22
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "SSID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "NetworkID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 644
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;-><init>()V

    .line 645
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    .line 647
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.networkIDList.networkID  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.networkIDList.ssid   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    goto/16 :goto_0

    .line 653
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_23
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "HESSID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "NetworkID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 656
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .line 657
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    .line 658
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.networkIDList.hessid   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_24
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FriendlyName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 662
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    .line 663
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.friendlyName   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "IconURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 666
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    .line 667
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.iconURL   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    :cond_26
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 670
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    .line 671
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.fqdn   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 672
    :cond_27
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "HomeOI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "HomeOIList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 675
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    .line 676
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    .line 678
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.homeOIList.homeOiID  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.homeOIList.homeOI  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    goto/16 :goto_0

    .line 686
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    :cond_28
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "HomeOIRequired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "HomeOIList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 689
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .line 690
    .restart local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    .line 692
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.homeOIList.homeOIRequired  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-boolean v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    :cond_29
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "OtherHomePartners"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 697
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;-><init>()V

    .line 698
    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    .line 699
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    .line 700
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.otherHomePartner.otherHomePartnerID  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v2, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.homeSPObj.otherHomePartner.fqdn  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    goto/16 :goto_0

    .line 710
    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "RoamingConsortiumOI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 712
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    goto/16 :goto_0

    .line 715
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CreationDate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 717
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    .line 718
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.creationDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "ExpirationDate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 722
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    .line 723
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.expirationDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 725
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "TypeOfSubscription"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 727
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    .line 728
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.typeOfSubscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 730
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "DataLimit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "UsageLimits"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 733
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 734
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    .line 735
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.usageLimitobj.dataLimit  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "StartDate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "UsageLimits"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 740
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    .line 741
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.usageLimitobj.startDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 743
    :cond_30
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "TimeLimit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "UsageLimits"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 746
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 747
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    .line 748
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.usageLimitobj.timeLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 750
    :cond_31
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UsageInterval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "UsageLimits"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 754
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    .line 756
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.subscriptionParametersObj.usageLimitobj.usageInterval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :cond_32
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CreationDate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 762
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    .line 763
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.creationDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 764
    :cond_33
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "ExpirationDate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 766
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    .line 767
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.expirationDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 769
    :cond_34
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 771
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    .line 772
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.username "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 774
    :cond_35
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 776
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    .line 777
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.password  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 779
    :cond_36
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "MachineManaged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 781
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 782
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    .line 783
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.machineManaged  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 785
    :cond_37
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "SoftTokenApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 787
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    .line 788
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.softTokenApp  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    :cond_38
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "AbleToShare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 792
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 793
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    .line 794
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.ableToShare  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    :cond_39
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "EAPType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 798
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 799
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    .line 800
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.simObj.eapType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 803
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 804
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    .line 806
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.eapType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 809
    :cond_3b
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "VendorID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 811
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 812
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    .line 814
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.vendorID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "VendorType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 818
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 819
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    .line 821
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.vendorType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 823
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "InnerEAPType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 825
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    .line 826
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerEAPType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 828
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "InnerVendorID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 830
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 831
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    .line 833
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerVendorID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 835
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "InnerVendorType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 837
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 838
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    .line 840
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerVendorType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 842
    :cond_40
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "InnerMethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 844
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    .line 845
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerMethod  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    :cond_41
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertificateType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "DigitalCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 850
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    .line 851
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.digitalCertificateObj.certificateType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 853
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "CertSHA256Fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "DigitalCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 856
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    .line 857
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.digitalCertificateObj.certSHA256FingerPrint  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    :cond_43
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Realm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 861
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    .line 862
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.realm  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 863
    :cond_44
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "checkAAAServerCertStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 866
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    .line 868
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.checkAAAServerCertStatus  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 870
    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "IMSI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 873
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    .line 874
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.simObj.imsi  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 875
    :cond_46
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "EAPType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 878
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    .line 879
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.credentialObj.simObj.eapType  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 881
    :cond_47
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "UpdateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 883
    const-string v1, "soapXmlHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsmoObj.UpdateIdentifier  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 164
    :cond_0
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 172
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 176
    goto :goto_0

    .line 182
    :cond_1
    return-void

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addAAAServerTrustRoot(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1097
    const-string v1, "AAAServerTrustRoot"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1100
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1101
    const-string v2, "CertURL"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v2, "CertSHA256Fingerprint"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1109
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method addCredential(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v1, :cond_8

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1253
    const-string v1, "Credential"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1255
    const-string v1, "CreationDate"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :cond_0
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1258
    const-string v1, "ExpirationDate"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_1
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1262
    const-string v1, "UsernamePassword"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1263
    const-string v1, "Username"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1266
    .local v0, "password":Ljava/lang/String;
    const-string v1, "Password"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v1, "MachineManaged"

    new-instance v2, Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1271
    const-string v1, "SoftTokenApp"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_2
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v1, :cond_4

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1275
    const-string v1, "EAPMethod"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1276
    const-string v1, "EAPType"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1283
    const-string v1, "InnerMethod"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1288
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1290
    .end local v0    # "password":Ljava/lang/String;
    :cond_5
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1292
    const-string v1, "DigitalCertificate"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1293
    const-string v1, "CertificateType"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v1, "CertSHA256Fingerprint"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1299
    :cond_6
    const-string v1, "Realm"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1302
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1303
    const-string v1, "SIM"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1304
    const-string v1, "IMSI"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v1, "EAPType"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1310
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1312
    :cond_8
    return-void
.end method

.method addHomeSP(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v1, :cond_9

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1153
    const-string v1, "HomeSP"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1154
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1157
    const-string v1, "NetworkID"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1159
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1160
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1161
    const-string v2, "SSID"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1164
    const-string v2, "HESSID"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1170
    .end local v0    # "i":I
    :cond_2
    const-string v1, "FriendlyName"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1173
    const-string v1, "IconURL"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_3
    const-string v1, "FQDN"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1178
    const-string v1, "HomeOIList"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1181
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1182
    const-string v2, "HomeOI"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v2, "HomeOIRequired"

    new-instance v3, Ljava/lang/Boolean;

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-boolean v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1189
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1191
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1194
    const-string v1, "Other"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1195
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1197
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1199
    const-string v2, "FQDN"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1203
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1205
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1206
    const-string v1, "RoamingConsortiumOI"

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1210
    :cond_9
    return-void
.end method

.method addNode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1317
    return-void
.end method

.method addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1326
    const-string v0, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aaddNodeName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    if-eqz p2, :cond_0

    .line 1328
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "NodeName"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1329
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1330
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "NodeName"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1332
    :cond_0
    return-void
.end method

.method addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1344
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "NodeName"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1346
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1347
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "NodeName"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1350
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1351
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1354
    :goto_0
    return-void

    .line 1353
    :cond_0
    const-string v0, "soapXmlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNodeNodeNameValue null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method addPolicy(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    const-string v3, "soapXmlHelper"

    const-string v4, "addPolicy "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v3, :cond_10

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 941
    const-string v3, "Policy"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 942
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 945
    const-string v3, "PreferredRoamingPartnerList"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 947
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 949
    .local v2, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 950
    iget-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 951
    const-string v3, "FQDN_Match"

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v3, "Priority"

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 956
    const-string v3, "Country"

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    .end local v2    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 961
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 964
    const-string v3, "MinBackhaulThreshold"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 966
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .line 968
    .local v2, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 969
    iget-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 970
    const-string v3, "NetworkType"

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    if-eqz v3, :cond_3

    .line 973
    const-string v3, "DLBandwidth"

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_3
    iget v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    if-eqz v3, :cond_4

    .line 976
    const-string v3, "ULBandwidth"

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 980
    .end local v2    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 982
    .end local v0    # "i":I
    :cond_6
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v3, :cond_a

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 984
    const-string v3, "PolicyUpdate"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 985
    const-string v3, "UpdateInterval"

    new-instance v4, Ljava/lang/Long;

    iget-object v5, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v6, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v3, "UpdateMethod"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v3, "Restriction"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "URI"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 995
    const-string v3, "UsernamePassword"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 996
    const-string v3, "Username"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v1, ""

    .line 999
    .local v1, "password":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1002
    :cond_7
    const-string v3, "Password"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1005
    .end local v0    # "i":I
    .end local v1    # "password":Ljava/lang/String;
    :cond_8
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v3, :cond_9

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1007
    const-string v3, "TrustRoot"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1008
    const-string v3, "CertURL"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v3, "CertSHA256Fingerprint"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1014
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1016
    :cond_a
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1019
    const-string v3, "SPExclusionList"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1022
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1023
    const-string v4, "SSID"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1020
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1027
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1029
    .end local v0    # "i":I
    :cond_c
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1032
    const-string v3, "RequiredProtoPortTuple"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 1034
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1035
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1037
    const-string v4, "IPProtocol"

    new-instance v5, Ljava/lang/Integer;

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v4, "PortNumber"

    new-instance v5, Ljava/lang/Integer;

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1043
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1045
    .end local v0    # "i":I
    :cond_e
    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    if-eqz v3, :cond_f

    .line 1046
    const-string v3, "MaximumBSSLoadValue"

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1051
    :cond_10
    return-void
.end method

.method addSubscriptionRemediation(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    const-string v0, "soapXmlHelper"

    const-string v1, "addSubscriptionRemediation "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    if-eqz v0, :cond_2

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1076
    const-string v0, "SubscriptionRemediation"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1078
    const-string v0, "URI"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_0
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1082
    const-string v0, "TrustRoot"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1083
    const-string v0, "CertURL"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v0, "CertSHA256Fingerprint"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1089
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1091
    :cond_2
    return-void
.end method

.method addSubscriptionUpdate(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_3

    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1115
    const-string v2, "SubscriptionUpdate"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1116
    const-string v2, "UpdateInterval"

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v2, "UpdateMethod"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v2, "Restriction"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v2, "URI"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1126
    const-string v2, "UsernamePassword"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1127
    const-string v2, "Username"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v1, ""

    .line 1130
    .local v1, "password":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    :cond_0
    const-string v2, "Password"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1136
    .end local v0    # "i":I
    .end local v1    # "password":Ljava/lang/String;
    :cond_1
    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v2, :cond_2

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1138
    const-string v2, "TrustRoot"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1139
    const-string v2, "CertURL"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v2, "CertSHA256Fingerprint"

    iget-object v3, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1145
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1147
    :cond_3
    return-void
.end method

.method addSubscriptionparams(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    if-eqz v0, :cond_8

    .line 1215
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1216
    const-string v0, "SubscriptionParameters"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1218
    const-string v0, "CreationDate"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_0
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1221
    const-string v0, "ExpirationDate"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_1
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1224
    const-string v0, "TypeOfSubscription"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_2
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    if-eqz v0, :cond_7

    .line 1227
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1228
    const-string v0, "UsageLimits"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1229
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    if-eqz v0, :cond_3

    .line 1230
    const-string v0, "DataLimit"

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_3
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1233
    const-string v0, "StartDate"

    iget-object v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_4
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    if-eqz v0, :cond_5

    .line 1236
    const-string v0, "TimeLimit"

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_5
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    if-eqz v0, :cond_6

    .line 1239
    const-string v0, "UsageInterval"

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeNodeNameValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1245
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1247
    :cond_8
    return-void
.end method

.method addSubscritionpriority(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const-string v0, "soapXmlHelper"

    const-string v1, "addSubscritionpriority "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1057
    const-string v0, "CredentialPriority"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/Integer;

    iget v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1060
    return-void
.end method

.method addUpdateIdentifier(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    const-string v0, "soapXmlHelper"

    const-string v1, "addUpdateIdentifier "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1066
    const-string v0, "UpdateIdentifier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/Integer;

    iget v1, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1069
    return-void
.end method

.method addValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1337
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1338
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    return-void
.end method

.method public createSoapRequestXmlString(Lcom/android/server/wifi/hs20/sppPostReqObject;)Ljava/lang/String;
    .locals 10
    .param p1, "reqObject"    # Lcom/android/server/wifi/hs20/sppPostReqObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 67
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 68
    .local v5, "writer":Ljava/io/StringWriter;
    const-string v6, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 70
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 71
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 72
    const-string v6, "soap"

    const-string v7, "http://www.w3.org/2003/05/soap-envelope"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v6, "spp"

    const-string v7, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "UTF-8"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 76
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Envelope"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Header"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Header"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Body"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    iget-object v7, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    const-string v7, "sppPostDevData"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 82
    const-string v6, "soapXmlHelper"

    const-string v7, " inside making spp postdevdata"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 84
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sppVersion"

    iget-object v8, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    :cond_0
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->requestReason:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 88
    const-string v6, "requestReason"

    iget-object v7, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->requestReason:Ljava/lang/String;

    invoke-interface {v2, v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    :cond_1
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 92
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sessionID"

    iget-object v8, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    :cond_2
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->redirectUri:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 96
    const-string v6, "redirectURI"

    iget-object v7, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->redirectUri:Ljava/lang/String;

    invoke-interface {v2, v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    :cond_3
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedSPPVersions:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 99
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "supportedSPPVersions"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedSPPVersions:Ljava/lang/String;

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "supportedSPPVersions"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    :cond_4
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedMOList:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 106
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "supportedMOList"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedMOList:Ljava/lang/String;

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "supportedMOList"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    :cond_5
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 112
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "moContainerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hs20/moContainer;>;"
    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hs20/moContainer;

    .line 115
    .local v4, "temp":Lcom/android/server/wifi/hs20/moContainer;
    if-eqz v4, :cond_6

    .line 116
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "moContainer "

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    iget-object v6, v4, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 119
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "moURN"

    iget-object v8, v4, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    :cond_7
    iget-object v6, v4, Lcom/android/server/wifi/hs20/moContainer;->mgmtTree:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 122
    iget-object v6, v4, Lcom/android/server/wifi/hs20/moContainer;->mgmtTree:Ljava/lang/String;

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 123
    :cond_8
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "moContainer "

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 128
    .end local v1    # "moContainerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hs20/moContainer;>;"
    .end local v4    # "temp":Lcom/android/server/wifi/hs20/moContainer;
    :cond_9
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    const-string v7, "sppUpdateResponse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 129
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 130
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sppVersion"

    iget-object v8, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    :cond_a
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 134
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sessionID"

    iget-object v8, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    :cond_b
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppStatus:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 138
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sppStatus"

    iget-object v8, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppStatus:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    :cond_c
    iget-object v6, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->errorCode:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 142
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sppError"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v6, "errorCode"

    iget-object v7, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->errorCode:Ljava/lang/String;

    invoke-interface {v2, v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    const-string v7, "sppError"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    :cond_d
    const-string v6, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    iget-object v7, p1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Body"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v6, "http://www.w3.org/2003/05/soap-envelope"

    const-string v7, "Envelope"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 151
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 152
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "strXml":Ljava/lang/String;
    const-string v6, "soapXmlHelper"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v3
.end method

.method endNode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1321
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1322
    return-void
.end method

.method initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 10
    .param p1, "mgmtTree"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 185
    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v5}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .line 186
    iput-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mGrandParent:Ljava/lang/String;

    .line 187
    iput-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mParent:Ljava/lang/String;

    .line 188
    iput-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    .line 189
    iput-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    .line 190
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->preferredRoamingPartnerCount:I

    .line 191
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->minBackHaulThresholdCount:I

    .line 192
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->protoPortTuppleCount:I

    .line 193
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->aaaServerTrustRootObjCount:I

    .line 194
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->networkIDCount:I

    .line 195
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->HomeOIListCount:I

    .line 196
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->spExclusionListCount:I

    .line 197
    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->otherHomePartnerCount:I

    .line 198
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 199
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 200
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 201
    .local v4, "stream":Ljava/io/ByteArrayInputStream;
    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 202
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 203
    .local v0, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    .line 204
    if-ne v0, v8, :cond_3

    .line 205
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "startTag":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 207
    const-string v5, "NodeName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "NodeName"

    invoke-interface {v2, v8, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mPreviousNodeName:Ljava/lang/String;

    .line 211
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    .line 212
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "NodeName"

    invoke-interface {v2, v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "soapXmlHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nodeName  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentNodeName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->parseNodeName(Ljava/lang/String;)V

    .line 233
    .end local v3    # "startTag":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 216
    .restart local v3    # "startTag":Ljava/lang/String;
    :cond_1
    const-string v5, "Value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "Value"

    invoke-interface {v2, v8, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentVal:Ljava/lang/String;

    .line 220
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "Value"

    invoke-interface {v2, v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "soapXmlHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentVal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->mCurrentVal:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->parseValue(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_2
    const-string v5, "ACL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "ACL"

    invoke-interface {v2, v8, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "mACLValue":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "ACL"

    invoke-interface {v2, v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->setACLVal(Ljava/lang/String;)V

    .line 228
    const-string v5, "soapXmlHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACL Val  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v1    # "mACLValue":Ljava/lang/String;
    .end local v3    # "startTag":Ljava/lang/String;
    :cond_3
    if-ne v0, v9, :cond_0

    goto :goto_1

    .line 235
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    return-object v5
.end method

.method makeXMLFromPPSMOobj(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 8
    .param p1, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    const-string v0, "xmlfile.xml"

    .line 890
    .local v0, "Filename":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v6, "/data/xmlFile.xml"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 892
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string v5, ""

    .line 893
    .local v5, "strXml":Ljava/lang/String;
    const/4 v3, 0x0

    .line 895
    .local v3, "nameSpace":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 896
    :try_start_0
    const-string v6, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 898
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 899
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 901
    const-string v6, "UTF-8"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 902
    const-string v6, "MgmtTree"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 903
    const-string v6, "VerDTD"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    const-string v6, "1.2"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    const-string v6, "VerDTD"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 907
    const-string v6, "PerProviderSubscription"

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addUpdateIdentifier(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 909
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 910
    iget-object v6, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addNodeName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addPolicy(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 912
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addSubscritionpriority(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 914
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addAAAServerTrustRoot(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 915
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addSubscriptionUpdate(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 916
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addHomeSP(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 918
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->addCredential(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 919
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->endNode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 921
    const-string v6, "MgmtTree"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 923
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 924
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 934
    :cond_1
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v6

    .line 931
    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 927
    :catch_1
    move-exception v6

    .line 931
    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 928
    :catch_2
    move-exception v6

    .line 931
    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 929
    :catch_3
    move-exception v6

    .line 931
    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 932
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v6
.end method

.method public setACLVal(Ljava/lang/String;)V
    .locals 8
    .param p1, "mACLValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 239
    const/16 v1, 0xf

    .line 241
    .local v1, "mACLVal":I
    const/4 v0, 0x0

    .line 242
    .local v0, "domaiName":Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "temp":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 244
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "temp1":[Ljava/lang/String;
    aget-object v0, v3, v7

    .line 247
    .end local v3    # "temp1":[Ljava/lang/String;
    :cond_0
    const-string v4, "soapXmlHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Domain Name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object v0, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    .line 249
    const-string v4, "Get"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    const/4 v1, 0x1

    .line 252
    :cond_1
    const-string v4, "soapXmlHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mACLVal--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v4, "Replace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    add-int/lit8 v1, v1, 0x2

    .line 256
    :cond_2
    const-string v4, "soapXmlHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mACLVal~~~~~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v4, "Add"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    add-int/lit8 v1, v1, 0x4

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput v1, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->acl:I

    .line 261
    const-string v4, "soapXmlHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mACLVal@@@@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v4, "Delete"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    add-int/lit8 v1, v1, 0x8

    .line 265
    :cond_4
    const-string v4, "soapXmlHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mACLVal!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v7, :cond_5

    .line 267
    const-string v4, "soapXmlHelper"

    const-string v5, "It is for GET"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_5
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 270
    const-string v4, "soapXmlHelper"

    const-string v5, "It is for REPLACE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_6
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 273
    const-string v4, "soapXmlHelper"

    const-string v5, "It is for ADD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_7
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    .line 276
    const-string v4, "soapXmlHelper"

    const-string v5, "It is for DELETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_8
    return-void
.end method
