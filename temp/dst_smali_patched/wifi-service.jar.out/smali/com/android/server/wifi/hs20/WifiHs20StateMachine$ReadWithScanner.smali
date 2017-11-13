.class public Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
.super Ljava/lang/Object;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadWithScanner"
.end annotation


# instance fields
.field private EAP_AKA:I

.field private EAP_AKA_PRIME:I

.field private EAP_PEAP:I

.field private EAP_SIM:I

.field private EAP_TLS:I

.field private EAP_TTLS:I

.field credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

.field private credid:I

.field eapType:I

.field private excludedSsidCount:I

.field private final fFilePath:Ljava/io/File;

.field private homeOIcount:I

.field private isNetworkBlock:Z

.field private mCredential:Ljava/lang/String;

.field private mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

.field private ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

.field private systemCred:I

.field temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TTLS:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_SIM:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TLS:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_PEAP:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA_PRIME:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->eapType:I

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->isNetworkBlock:Z

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->fFilePath:Ljava/io/File;

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p2, "aFileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TTLS:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_SIM:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TLS:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_PEAP:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA_PRIME:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->eapType:I

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->isNetworkBlock:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->fFilePath:Ljava/io/File;

    const-string v0, "/system/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    :cond_0
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-direct {v0, p3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    return-void
.end method

.method private quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "aText"    # Ljava/lang/String;

    .prologue
    const-string v0, "\'"

    .local v0, "QUOTE":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setNameValuePPSMO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v6, "HS20StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Name is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and Value is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "imsi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    const/4 v7, 0x3

    iput v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mTeleManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$10500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .local v4, "networkOperator":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    const-string v7, "SIM Credential"

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    .end local v4    # "networkOperator":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string p2, ""

    goto :goto_0

    :cond_2
    const-string v6, "priority"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    goto :goto_1

    :cond_3
    const-string v6, "realm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v6, "expirationDate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v6, "username"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "HS20_CLIENT"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v6, "password"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput v9, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    goto/16 :goto_1

    :cond_9
    const-string v6, "eap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v3, -0x1

    .local v3, "eapType":I
    const-string v6, "TTLS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TTLS:I

    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput v3, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    goto/16 :goto_1

    :cond_b
    const-string v6, "TLS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_TLS:I

    goto :goto_2

    :cond_c
    const-string v6, "SIM"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_SIM:I

    goto :goto_2

    :cond_d
    const-string v6, "AKA"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA:I

    goto :goto_2

    :cond_e
    const-string v6, "AKA\'"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_AKA_PRIME:I

    goto :goto_2

    :cond_f
    const-string v6, "PEAP"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->EAP_PEAP:I

    goto :goto_2

    .end local v3    # "eapType":I
    :cond_10
    const-string v6, "phase2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v6, "phase1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v6, "excluded_ssid"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v5}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .local v5, "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    iput-object p2, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v5    # "temp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_13
    const-string v6, "domain"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_14
    const-string v6, "home_oi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    const-string v6, "home_oi_required"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "b":Ljava/lang/Boolean;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_16
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_17
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->temp:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_18
    const-string v6, "roaming_consortium"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    goto/16 :goto_1

    :cond_19
    const-string v6, "private_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    :cond_1a
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1b
    const-string v6, "client_cert"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-nez v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    :cond_1c
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1d
    const-string v6, "private_key_passwd"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v7}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    iput-object v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    :cond_1e
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1f
    const-string v6, "ca_cert"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    goto/16 :goto_1

    :cond_20
    const-string v6, "max_bss_load"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    goto/16 :goto_1

    :cond_21
    const-string v6, "wan_dlink_bandwidth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .local v1, "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    goto/16 :goto_1

    .end local v1    # "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    .end local v2    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_22
    const-string v6, "expiry_date"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object p2, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method public final parseCredential(Ljava/lang/String;)I
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .local v1, "ret":I
    const/4 v2, 0x0

    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->processLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :cond_1
    :goto_1
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v4

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :cond_3
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method

.method protected processLine(Ljava/lang/String;)V
    .locals 17
    .param p1, "aLine"    # Ljava/lang/String;

    .prologue
    const-string v12, "HS20StateMachine"

    const-string v13, "processLine"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/Scanner;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .local v10, "scanner":Ljava/util/Scanner;
    :try_start_0
    const-string v12, "="

    invoke-virtual {v10, v12}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v9

    .local v9, "name":Ljava/lang/String;
    const-string v12, "network"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->isNetworkBlock:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->isNetworkBlock:Z

    if-eqz v12, :cond_3

    const-string v12, "}"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->isNetworkBlock:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .restart local v9    # "name":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v12, "cred"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v12}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    const-string v13, "samsung_passpoint.org"

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .local v4, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v5, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v5, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .local v3, "creationDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iput-object v3, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    const-string v13, "samsung_passpoint.org"

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ExpiryDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iput-object v1, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    const-string v13, "Gold"

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iput-object v3, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    const-string v13, "samsung_passpoint.org"

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v13}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    const-string v12, "HS20StateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "credid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->credid:I

    iput v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->homeOIcount:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->excludedSsidCount:I

    .end local v1    # "ExpiryDate":Ljava/lang/String;
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "creationDate":Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "dateFormat":Ljava/text/DateFormat;
    :cond_4
    const-string v12, "}"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SAMSUNG_CRED_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v12}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "hotspotID":I
    if-nez v7, :cond_a

    const-string v12, "HS20StateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Subscription priority is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Dont add the credential"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    .end local v7    # "hotspotID":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SAMSUNG_CRED_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    const/4 v13, -0x1

    if-le v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SAMSUNG_CRED_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->systemCred:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .end local v9    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    :cond_8
    throw v12

    .restart local v9    # "name":Ljava/lang/String;
    :cond_9
    :try_start_5
    const-string v12, "HS20StateMachine"

    const-string v13, "Fail to add credentials"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    .restart local v7    # "hotspotID":I
    :cond_a
    :try_start_6
    const-string v12, "HS20StateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Subscription priority is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Remove the credentials"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v13}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v12}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    .end local v7    # "hotspotID":I
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONodeFromCred(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_10

    const-string v12, "HS20StateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "eap_type :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v14, v14, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    const/4 v15, 0x2

    const/16 v16, -0x1

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v12, :cond_c

    new-instance v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    invoke-direct {v8}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;-><init>()V

    .local v8, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    const-string v12, "sim_icon"

    iput-object v12, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    const-string v12, "image/png"

    iput-object v12, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    const/4 v12, 0x0

    iput-object v12, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v12}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    iget-object v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    invoke-virtual {v12, v13, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setSpIcon(ILcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;)Z

    .end local v8    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :cond_c
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->ppsmoObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    :cond_d
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v11

    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v12, "phase2"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->setNameValuePPSMO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_f
    :goto_3
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    .restart local v9    # "name":Ljava/lang/String;
    :cond_10
    :try_start_8
    const-string v12, "HS20StateMachine"

    const-string v13, "Adding to database failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v9    # "name":Ljava/lang/String;
    :cond_11
    const-string v12, "HS20StateMachine"

    const-string v13, "Empty or invalid line. Unable to process."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method public final processLineByLine()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .local v1, "ret":I
    const/4 v2, 0x0

    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->fFilePath:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->processLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :cond_1
    :goto_1
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v4

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :cond_3
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method
