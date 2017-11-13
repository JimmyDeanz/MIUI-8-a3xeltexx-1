.class Lcom/android/server/wifi/hs20/SppResponseObj;
.super Ljava/lang/Object;
.source "WifiHs20SoapClient.java"


# instance fields
.field addMo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/addMoObj;",
            ">;"
        }
    .end annotation
.end field

.field errorCode:Ljava/lang/String;

.field exec:Lcom/android/server/wifi/hs20/execObj;

.field moreCommands:Ljava/lang/String;

.field noMoUpdate:Z

.field sessionID:Ljava/lang/String;

.field soapMethod:Ljava/lang/String;

.field sppError:Ljava/lang/String;

.field sppStatus:Ljava/lang/String;

.field sppVersion:Ljava/lang/String;

.field updateNode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/updateNodeObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/hs20/execObj;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/execObj;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/SppResponseObj;->noMoUpdate:Z

    return-void
.end method
