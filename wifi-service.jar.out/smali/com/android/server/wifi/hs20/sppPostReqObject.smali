.class Lcom/android/server/wifi/hs20/sppPostReqObject;
.super Ljava/lang/Object;
.source "WifiHs20SoapClient.java"


# instance fields
.field addMo:Lcom/android/server/wifi/hs20/addMoObj;

.field errorCode:Ljava/lang/String;

.field moContainerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/moContainer;",
            ">;"
        }
    .end annotation
.end field

.field redirectUri:Ljava/lang/String;

.field requestReason:Ljava/lang/String;

.field sessionID:Ljava/lang/String;

.field soapMethod:Ljava/lang/String;

.field sppStatus:Ljava/lang/String;

.field sppVersion:Ljava/lang/String;

.field supportedMOList:Ljava/lang/String;

.field supportedSPPVersions:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1057
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1058
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "soapMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1060
    const-string v2, ", sppVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1061
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    const-string v2, ", requestReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->requestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v2, ", sppStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    const-string v2, ", sessionID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    const-string v2, ", redirectUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1069
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->redirectUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    const-string v2, " supportedSPPVersions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedSPPVersions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    const-string v2, ", supportedMOList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedMOList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    const-string v2, ", errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    iget-object v2, p0, Lcom/android/server/wifi/hs20/sppPostReqObject;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
