.class public Lcom/android/server/wifi/hs20/WifiHs20PushDB;
.super Ljava/lang/Object;
.source "WifiHs20PushDB.java"


# static fields
.field private static final ACL:Ljava/lang/String; = "ACL"

.field public static final DDFNAME:Ljava/lang/String; = "DDFName"

.field public static final HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final MAX:I = 0x64

.field public static final NAMESPACE:Ljava/lang/String;

.field public static final NODE:Ljava/lang/String; = "Node"

.field public static final NODENAME:Ljava/lang/String; = "NodeName"

.field public static final PERPROVIDERSUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field public static final RTPROPERTIES:Ljava/lang/String; = "RTProperties"

.field public static final SUBSCRIPTIONPARAMETERS:Ljava/lang/String; = "SubscriptionParameters"

.field public static final SUBSCRIPTIONPRIORITY:Ljava/lang/String; = "SubscriptionPriority"

.field public static final SUBSCRIPTIONREMEDIATION:Ljava/lang/String; = "SubscriptionRemediation"

.field public static final SUBSCRIPTIONUPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG:Ljava/lang/String; = "testaddnode"

.field public static final TYPE:Ljava/lang/String; = "Type"

.field public static final VALUE:Ljava/lang/String; = "Value"

.field public static final VERDTD:Ljava/lang/String; = "VerDTD"


# instance fields
.field private Credential:Z

.field private CredentialPriority:Z

.field HomeOIListCount:I

.field private HomeSP:Z

.field private SusbscriptionUpdate:Z

.field aaaServerTrustRootObjCount:I

.field cr:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mCurrentNodeName:Ljava/lang/String;

.field mCurrentVal:Ljava/lang/String;

.field mGrandParent:Ljava/lang/String;

.field mParent:Ljava/lang/String;

.field mPreviousNodeName:Ljava/lang/String;

.field minBackHaulThresholdCount:I

.field mos:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

.field multiPPSMO:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

.field networkIDCount:I

.field otherHomePartnerCount:I

.field private ppsmoCount:I

.field ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

.field preferredRoamingPartnerCount:I

.field protoPortTuppleCount:I

.field spExclusionListCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->SusbscriptionUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeSP:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->Credential:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->CredentialPriority:Z

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->multiPPSMO:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->cr:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20Helper;->buildHashMap()V

    return-void
.end method

.method private parseNodeName(Ljava/lang/String;)V
    .locals 6
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviousNodeName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nodeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    const-string v2, "PerProviderSubscription"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    const-string v2, "UpdateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "UpdateIdentifier"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    const-string v1, "testaddnode"

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

    :goto_0
    const-string v1, "Policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "Policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CredentialPriority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SubscriptionRemediation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AAAServerTrustRoot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SubscriptionUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HomeSP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SubscriptionParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Credential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const-string v1, "SubscriptionUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->SusbscriptionUpdate:Z

    :cond_4
    const-string v1, "HomeSP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeSP:Z

    :cond_5
    const-string v1, "Credential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->Credential:Z

    :cond_6
    const-string v1, "CredentialPriority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->CredentialPriority:Z

    :cond_7
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grandparent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "MinBackhaulThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "PolicyUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "SPExclusionList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "RequiredProtoPortTuple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "NetworkID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "HomeOIList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "UsageLimits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "EAPMethod"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "DigitalCertificate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "OtherHomePartners"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentNodeName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grandparent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_c
    const-string v1, "MinBackhaulThreshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_d
    const-string v1, "PolicyUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    :cond_e
    const-string v1, "Username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    goto/16 :goto_1

    :cond_f
    const-string v1, "SPExclusionList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_10
    const-string v1, "RequiredProtoPortTuple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_11
    const-string v1, "SubscriptionRemediation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    :cond_12
    const-string v1, "AAAServerTrustRoot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_13
    const-string v1, "SubscriptionUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    goto/16 :goto_1

    :cond_14
    const-string v1, "UsernamePassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    goto/16 :goto_1

    :cond_15
    const-string v1, "MachineManaged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SoftTokenApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AbleToShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "SubscriptionUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_16
    const-string v1, "HomeSP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    goto/16 :goto_1

    :cond_17
    const-string v1, "NetworkID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    goto/16 :goto_1

    :cond_18
    const-string v1, "HomeOIList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    goto/16 :goto_1

    :cond_19
    const-string v1, "OtherHomePartners"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    goto/16 :goto_1

    :cond_1a
    const-string v1, "SubscriptionParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    goto/16 :goto_1

    :cond_1b
    const-string v1, "Credential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    goto/16 :goto_1

    :cond_1c
    const-string v1, "Username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "credential Type in pushDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1d
    const-string v1, "EAPType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Credential"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    goto/16 :goto_1

    :cond_1e
    const-string v1, "DigitalCertificate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput v5, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "credential Type in pushDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1f
    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "credential Type in pushDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v2, "PreferredRoamingPartnerList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "PreferredRoamingPartnerList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "Country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v2, "FQDN_Match"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "testaddnode"

    const-string v2, "have to change here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;-><init>()V

    .local v0, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    goto/16 :goto_1

    .end local v0    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->getFormatType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "HomeSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v2, "Policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_22
    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ppsmoCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean values HomeSP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeSP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SusbscriptionUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->SusbscriptionUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Credential "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->Credential:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CredentialPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->CredentialPriority:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeSP:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->SusbscriptionUpdate:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->Credential:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->CredentialPriority:Z

    if-eqz v1, :cond_1

    const-string v1, "testaddnode"

    const-string v2, "everything passed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->multiPPSMO:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    aput-object v3, v1, v2

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->spExclusionListCount:I

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeSP:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->SusbscriptionUpdate:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->Credential:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->CredentialPriority:Z

    goto/16 :goto_1
.end method

.method private parseValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "FQDN_Match"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PreferredRoamingPartnerList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.preferredRoamingPartner.fQDNMatch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PreferredRoamingPartnerList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.preferredRoamingPartner.priority "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Country"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PreferredRoamingPartnerList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.preferredRoamingPartner.country "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "NetworkType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "MinBackhaulThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.minBackHaulThresholdCount "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "DLBandwidth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "MinBackhaulThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.minBackHaulThreshold.dlBandWidth  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "ULBandwidth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "MinBackhaulThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.minBackHaulThreshold.ulBandWidth  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UpdateInterval"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.updateInterval  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UpdateMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.updateMethod  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Restriction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.restriction  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "URI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.uri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.passwordUsernameobj.username  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.passwordUsernameobj.password  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.other  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.trustrootObj.trustRootURL  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertSHA256Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "PolicyUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.policyUpdateObj.trustrootObj.certSHA256FingerPrint  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "SSID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "SPExclusionList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.spExclusionList.ssid  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->spExclusionListCount:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->spExclusionListCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->spExclusionListCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "IPProtocol"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "RequiredProtoPortTuple"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.protoPortTupple.ipProtocol "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_11
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "PortNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "RequiredProtoPortTuple"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.protoPortTupple.portNumber "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_12
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "MaximumBSSLoadValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.policyObj.maximumBSSLoadValue  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CredentialPriority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "CredentialPriority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionPriority  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "URI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionRemediation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionRemediationObj.URI  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionRemediation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionRemediationObj.trustRootObj.trustRootURL  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertSHA256Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionRemediation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionRemediationObj.trustRootObj.certSHA256FingerPrint  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "AAAServerTrustRoot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.aaaServerTrustRootObj.trustRootURL  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.aaaServerTrustRootObj.trustRootID  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    :cond_18
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertSHA256Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "AAAServerTrustRoot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.aaaServerTrustRootObj.certSHA256FingerPrint  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    :cond_19
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UpdateInterval"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.updateInterval  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UpdateMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.updateMethod  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Restriction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.restriction  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "URI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.uri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.trustrootObj.trustRootURL  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertSHA256Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionUpdate.trustrootObj.certSHA256FingerPrint  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "SSID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "NetworkID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.networkIDList.networkID  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.networkIDList.ssid   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_23
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "HESSID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "NetworkID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.networkIDList.hessid   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_24
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "FriendlyName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.friendlyName   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_25
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "IconURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.iconURL   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "HomeOI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "HomeOIList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.homeOIList.homeOiID  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.homeOIList.homeOI  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    :cond_27
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "HomeOIRequired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "HomeOIList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .restart local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.homeOIList.homeOIRequired  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-boolean v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    :cond_28
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "FQDN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "OtherHomePartners"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;-><init>()V

    .local v1, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    iput-object p1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.otherHomePartner.otherHomePartnerID  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->otherHomePartnerCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->otherHomePartnerCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "testaddnode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.otherHomePartner.fqdn  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->otherHomePartnerCount:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->otherHomePartnerCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->otherHomePartnerCount:I

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    :cond_29
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "RoamingConsortiumOI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "FQDN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.homeSPObj.fqdn   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2b
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.creationDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "ExpirationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.expirationDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "TypeOfSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.typeOfSubscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "DataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.usageLimitobj.dataLimit  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "StartDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.usageLimitobj.startDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_30
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "TimeLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.usageLimitobj.timeLimit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_31
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UsageInterval"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "SubscriptionParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.subscriptionParametersObj.usageLimitobj.usageInterval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_32
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.creationDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_33
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "ExpirationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.expirationDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_34
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.username "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_35
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.password  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_36
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "MachineManaged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.machineManaged  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_37
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "SoftTokenApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.softTokenApp  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_38
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "AbleToShare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.ableToShare  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_39
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "EAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.eapType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.simObj.eapType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3b
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "VendorID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.vendorID  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3c
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "VendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.vendorType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3d
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "InnerEAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerEAPType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3e
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "InnerVendorID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerVendorID  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3f
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "InnerVendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerVendorType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_40
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "InnerMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.usernamePasswordObj.eapMethodobj.innerMethod  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_41
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertificateType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "DigitalCertificate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.digitalCertificateObj.certificateType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_42
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "CertSHA256Fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "DigitalCertificate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.digitalCertificateObj.certSHA256FingerPrint  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_43
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "Realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.realm  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_44
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "checkAAAServerCertStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.checkAAAServerCertStatus  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-boolean v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_45
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "IMSI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.simObj.imsi  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_46
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "EAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const-string v3, "Credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p1, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.credentialObj.simObj.eapType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_47
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const-string v3, "UpdateIdentifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppsmoObj.UpdateIdentifier  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    const-string v0, ""

    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFormatType(Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fortmap size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .local v1, "formatType":I
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "testaddnode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public pushDB(Ljava/lang/String;Ljava/lang/String;)[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const-string v8, "testaddnode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushDB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    const-string v8, "testaddnode"

    const-string v9, "install filepath vendor specific"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v6    # "stream":Ljava/io/InputStream;
    .local v7, "stream":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    new-instance v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v8}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mGrandParent:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mParent:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->preferredRoamingPartnerCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->minBackHaulThresholdCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->protoPortTuppleCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->aaaServerTrustRootObjCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->networkIDCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->HomeOIListCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->spExclusionListCount:I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v2, v8, :cond_6

    if-ne v2, v11, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "startTag":Ljava/lang/String;
    const-string v8, "NodeName"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "NodeName"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    const/4 v8, 0x3

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "NodeName"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "testaddnode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prevNode  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mPreviousNodeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "testaddnode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nodeName  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentNodeName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->parseNodeName(Ljava/lang/String;)V

    .end local v5    # "startTag":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .end local v2    # "eventType":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto/16 :goto_0

    .restart local v2    # "eventType":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "startTag":Ljava/lang/String;
    :cond_2
    const-string v8, "Value"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "Value"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentVal:Ljava/lang/String;

    const/4 v8, 0x3

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "Value"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "testaddnode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Value  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mCurrentVal:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->parseValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .end local v2    # "eventType":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "startTag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mos:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    return-object v8

    .restart local v2    # "eventType":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "startTag":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v8, "ACL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "ACL"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .local v0, "aCLValue":Ljava/lang/String;
    const/4 v8, 0x3

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->NAMESPACE:Ljava/lang/String;

    const-string v10, "ACL"

    invoke-interface {v4, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->setACLVal(Ljava/lang/String;)V

    const-string v8, "testaddnode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACL Val  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .end local v0    # "aCLValue":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "startTag":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    if-ne v2, v12, :cond_0

    goto/16 :goto_2

    :cond_6
    :try_start_6
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->multiPPSMO:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    aput-object v10, v8, v9

    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mos:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoCount:I

    add-int/lit8 v8, v8, 0x1

    if-ge v3, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->mos:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->multiPPSMO:[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    aget-object v9, v9, v3

    aput-object v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_3

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_8

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_8
    :goto_5
    throw v8

    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public setACLVal(Ljava/lang/String;)V
    .locals 8
    .param p1, "mACLValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0xf

    .local v1, "mACLVal":I
    const/4 v0, 0x0

    .local v0, "domaiName":Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "temp":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "temp1":[Ljava/lang/String;
    aget-object v0, v3, v7

    .end local v3    # "temp1":[Ljava/lang/String;
    :cond_0
    const-string v4, "testaddnode"

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

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object v0, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    const-string v4, "Get"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v4, "testaddnode"

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

    const-string v4, "Replace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    const-string v4, "testaddnode"

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

    const-string v4, "Add"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput v1, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->acl:I

    const-string v4, "testaddnode"

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

    const-string v4, "Delete"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x8

    :cond_4
    const-string v4, "testaddnode"

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

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v7, :cond_5

    const-string v4, "testaddnode"

    const-string v5, "It is for GET"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    const-string v4, "testaddnode"

    const-string v5, "It is for REPLACE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    const-string v4, "testaddnode"

    const-string v5, "It is for ADD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    const-string v4, "testaddnode"

    const-string v5, "It is for DELETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method
